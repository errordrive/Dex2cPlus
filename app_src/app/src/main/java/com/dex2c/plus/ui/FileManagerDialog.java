package com.dex2c.plus.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.core.content.ContextCompat;
import androidx.core.widget.ImageViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.dex2c.plus.R;
import com.dex2c.plus.databinding.DialogFileManagerBinding;
import com.dex2c.plus.databinding.ItemFileEntryBinding;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public class FileManagerDialog {
    public static final int MODE_APK = 0;
    public static final int MODE_NDK_ARCHIVE = 1;
    private final FileAdapter adapter;
    private final DialogFileManagerBinding binding;
    private final Context context;
    private File currentDir;
    private final SimpleDateFormat dateFmt;
    private final Dialog dialog;
    private final OnApkSelectedListener listener;
    private final Handler mainHandler;
    private final int pickerMode;
    private final File rootStorageDir;
    private File selectedFileCandidate;
    private static final LruCache<String, Drawable> ICON_CACHE = new LruCache<>(64);
    private static final Set<String> NO_ICON_PATHS = Collections.newSetFromMap(new ConcurrentHashMap());
    private static final ExecutorService ICON_EXECUTOR = Executors.newFixedThreadPool(2, new ThreadFactory() { // from class: com.dex2c.plus.ui.FileManagerDialog$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return FileManagerDialog.lambda$static$0(runnable);
        }
    });

    public interface OnApkSelectedListener {
        void onApkSelected(File file);
    }

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "Dex2c-ApkIconLoader");
        thread.setPriority(4);
        thread.setDaemon(true);
        return thread;
    }

    public FileManagerDialog(Context context, File file, OnApkSelectedListener onApkSelectedListener) {
        this(context, file, 0, onApkSelectedListener);
    }

    public FileManagerDialog(Context context, File file, int i, final OnApkSelectedListener onApkSelectedListener) {
        this.dateFmt = new SimpleDateFormat("dd-MM-yyyy, hh:mm a", Locale.US);
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.context = context;
        this.listener = onApkSelectedListener;
        this.pickerMode = i;
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        this.rootStorageDir = externalStorageDirectory;
        this.currentDir = (file != null && file.exists() && file.isDirectory()) ? file : externalStorageDirectory;
        Dialog dialog = new Dialog(context, R.style.SeamlessDialogTheme);
        this.dialog = dialog;
        dialog.requestWindowFeature(1);
        DialogFileManagerBinding dialogFileManagerBindingInflate = DialogFileManagerBinding.inflate(LayoutInflater.from(context));
        this.binding = dialogFileManagerBindingInflate;
        dialog.setContentView(dialogFileManagerBindingInflate.getRoot());
        if (dialog.getWindow() != null) {
            dialog.getWindow().setLayout((int) (context.getResources().getDisplayMetrics().widthPixels * 0.85f), -2);
        }
        if (i == 1) {
            dialogFileManagerBindingInflate.tvFmTitle.setText("Select NDK Package (.zip)");
            dialogFileManagerBindingInflate.tvFmEmpty.setText("No folders or NDK (.zip) files found");
        } else {
            dialogFileManagerBindingInflate.tvFmTitle.setText("Select APK");
            dialogFileManagerBindingInflate.tvFmEmpty.setText("No folders or APK files found");
        }
        FileAdapter fileAdapter = new FileAdapter();
        this.adapter = fileAdapter;
        dialogFileManagerBindingInflate.rvFiles.setLayoutManager(new LinearLayoutManager(context));
        dialogFileManagerBindingInflate.rvFiles.setItemAnimator(null);
        dialogFileManagerBindingInflate.rvFiles.setAdapter(fileAdapter);
        dialogFileManagerBindingInflate.btnFmClose.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        dialogFileManagerBindingInflate.btnFmUp.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        dialogFileManagerBindingInflate.btnFmSelect.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(onApkSelectedListener, view);
            }
        });
        loadDirectory(this.currentDir);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        navigateUp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(OnApkSelectedListener onApkSelectedListener, View view) {
        File file = this.selectedFileCandidate;
        if (file == null || !file.exists()) {
            return;
        }
        this.dialog.dismiss();
        onApkSelectedListener.onApkSelected(this.selectedFileCandidate);
    }

    public void show() {
        this.dialog.show();
    }

    public void dismiss() {
        if (this.dialog.isShowing()) {
            this.dialog.dismiss();
        }
    }

    private boolean isMatchingTargetFile(File file) {
        if (file == null || !file.isFile()) {
            return false;
        }
        String lowerCase = file.getName().toLowerCase(Locale.US);
        if (this.pickerMode == 1) {
            return lowerCase.endsWith(".zip") || lowerCase.endsWith(".tar.xz") || lowerCase.endsWith(".tar.gz") || lowerCase.endsWith(".tgz");
        }
        return lowerCase.endsWith(".apk");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectButtonState() {
        File file = this.selectedFileCandidate;
        boolean z = file != null && file.exists();
        this.binding.btnFmSelect.setEnabled(z);
        this.binding.btnFmSelect.setTextColor(ContextCompat.getColor(this.context, z ? R.color.md_theme_primary : R.color.md_theme_onSurfaceVariant));
        this.binding.btnFmSelect.setAlpha(z ? 1.0f : 0.45f);
    }

    private void navigateUp() {
        File parentFile;
        File file = this.currentDir;
        if (file == null || (parentFile = file.getParentFile()) == null || !parentFile.canRead()) {
            return;
        }
        loadDirectory(parentFile);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadDirectory(File file) {
        if (file == null || !file.exists() || !file.isDirectory()) {
            file = this.rootStorageDir;
        }
        this.currentDir = file;
        this.selectedFileCandidate = null;
        updateSelectButtonState();
        this.binding.tvFmCurrentPath.setText(file.getAbsolutePath());
        File parentFile = file.getParentFile();
        this.binding.btnFmUp.setVisibility(parentFile != null && parentFile.canRead() && !file.getAbsolutePath().equals(this.rootStorageDir.getAbsolutePath()) ? 0 : 8);
        File[] fileArrListFiles = file.listFiles();
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory() || isMatchingTargetFile(file2)) {
                    arrayList.add(file2);
                }
            }
            Collections.sort(arrayList, new Comparator() { // from class: com.dex2c.plus.ui.FileManagerDialog$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return FileManagerDialog.lambda$loadDirectory$4((File) obj, (File) obj2);
                }
            });
        }
        this.adapter.setFiles(arrayList);
        this.binding.tvFmEmpty.setVisibility(arrayList.isEmpty() ? 0 : 8);
        this.binding.rvFiles.setVisibility(arrayList.isEmpty() ? 8 : 0);
    }

    static /* synthetic */ int lambda$loadDirectory$4(File file, File file2) {
        boolean zIsDirectory = file.isDirectory();
        boolean zIsDirectory2 = file2.isDirectory();
        if (zIsDirectory && !zIsDirectory2) {
            return -1;
        }
        if (zIsDirectory || !zIsDirectory2) {
            return file.getName().compareToIgnoreCase(file2.getName());
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class FileAdapter extends RecyclerView.Adapter<VH> {
        private final List<File> files;

        private FileAdapter() {
            this.files = new ArrayList();
        }

        void setFiles(List<File> list) {
            this.files.clear();
            this.files.addAll(list);
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new VH(ItemFileEntryBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final VH vh, int i) {
            final File file = this.files.get(i);
            final String absolutePath = file.getAbsolutePath();
            vh.boundPath = absolutePath;
            String str = FileManagerDialog.this.dateFmt.format(new Date(file.lastModified()));
            vh.binding.tvFileName.setText(file.getName());
            vh.binding.tvFileSub.setText(str);
            if (file.isDirectory()) {
                vh.binding.cbFileSelect.setOnCheckedChangeListener(null);
                vh.binding.cbFileSelect.setVisibility(8);
                vh.binding.ivFileIcon.setImageResource(R.drawable.ic_folder_open);
                vh.binding.ivFileIcon.setColorFilter(ContextCompat.getColor(FileManagerDialog.this.context, R.color.folder_icon_tint));
                vh.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$FileAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onBindViewHolder$0(file, view);
                    }
                });
                vh.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$FileAdapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$onBindViewHolder$1(file, view);
                    }
                });
                return;
            }
            boolean z = false;
            vh.binding.cbFileSelect.setVisibility(0);
            if (FileManagerDialog.this.selectedFileCandidate != null && FileManagerDialog.this.selectedFileCandidate.getAbsolutePath().equals(absolutePath)) {
                z = true;
            }
            ImageViewCompat.setImageTintList(vh.binding.ivFileIcon, null);
            vh.binding.ivFileIcon.clearColorFilter();
            if (FileManagerDialog.this.pickerMode == 1) {
                vh.binding.ivFileIcon.setImageResource(R.drawable.ic_dex_file);
            } else {
                Drawable drawable = (Drawable) FileManagerDialog.ICON_CACHE.get(absolutePath);
                if (drawable != null) {
                    vh.binding.ivFileIcon.setImageDrawable(drawable);
                } else {
                    vh.binding.ivFileIcon.setImageResource(R.drawable.ic_apk_default);
                    if (!FileManagerDialog.NO_ICON_PATHS.contains(absolutePath)) {
                        FileManagerDialog.ICON_EXECUTOR.execute(new Runnable() { // from class: com.dex2c.plus.ui.FileManagerDialog$FileAdapter$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onBindViewHolder$3(file, absolutePath, vh);
                            }
                        });
                    }
                }
            }
            vh.binding.cbFileSelect.setOnCheckedChangeListener(null);
            vh.binding.cbFileSelect.setChecked(z);
            vh.binding.cbFileSelect.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$FileAdapter$$ExternalSyntheticLambda3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                    this.f$0.lambda$onBindViewHolder$4(file, compoundButton, z2);
                }
            });
            vh.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$FileAdapter$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onBindViewHolder$5(vh, file, view);
                }
            });
            vh.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.dex2c.plus.ui.FileManagerDialog$FileAdapter$$ExternalSyntheticLambda5
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$onBindViewHolder$6(file, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(File file, View view) {
            FileManagerDialog.this.loadDirectory(file);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onBindViewHolder$1(File file, View view) {
            view.performHapticFeedback(0);
            FileManagerDialog.this.loadDirectory(file);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$3(File file, final String str, final VH vh) {
            final Drawable drawableLoadOriginalApkIcon = FileManagerDialog.this.loadOriginalApkIcon(file);
            if (drawableLoadOriginalApkIcon != null) {
                FileManagerDialog.ICON_CACHE.put(str, drawableLoadOriginalApkIcon);
                FileManagerDialog.this.mainHandler.post(new Runnable() { // from class: com.dex2c.plus.ui.FileManagerDialog$FileAdapter$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBindViewHolder$2(str, vh, drawableLoadOriginalApkIcon);
                    }
                });
            } else {
                FileManagerDialog.NO_ICON_PATHS.add(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$2(String str, VH vh, Drawable drawable) {
            if (str.equals(vh.boundPath) && FileManagerDialog.this.dialog.isShowing()) {
                ImageViewCompat.setImageTintList(vh.binding.ivFileIcon, null);
                vh.binding.ivFileIcon.clearColorFilter();
                vh.binding.ivFileIcon.setImageDrawable(drawable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$4(File file, CompoundButton compoundButton, boolean z) {
            FileManagerDialog fileManagerDialog = FileManagerDialog.this;
            if (!z) {
                file = null;
            }
            fileManagerDialog.selectedFileCandidate = file;
            FileManagerDialog.this.updateSelectButtonState();
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$5(VH vh, File file, View view) {
            boolean zIsChecked = vh.binding.cbFileSelect.isChecked();
            FileManagerDialog fileManagerDialog = FileManagerDialog.this;
            if (zIsChecked) {
                file = null;
            }
            fileManagerDialog.selectedFileCandidate = file;
            FileManagerDialog.this.updateSelectButtonState();
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onBindViewHolder$6(File file, View view) {
            view.performHapticFeedback(0);
            FileManagerDialog.this.selectedFileCandidate = file;
            FileManagerDialog.this.updateSelectButtonState();
            FileManagerDialog.this.dialog.dismiss();
            FileManagerDialog.this.listener.onApkSelected(file);
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.files.size();
        }

        class VH extends RecyclerView.ViewHolder {
            final ItemFileEntryBinding binding;
            String boundPath;

            VH(ItemFileEntryBinding itemFileEntryBinding) {
                super(itemFileEntryBinding.getRoot());
                this.binding = itemFileEntryBinding;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable loadOriginalApkIcon(File file) {
        try {
            PackageManager packageManager = this.context.getPackageManager();
            PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(file.getAbsolutePath(), 0);
            if (packageArchiveInfo == null || packageArchiveInfo.applicationInfo == null) {
                return null;
            }
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            applicationInfo.sourceDir = file.getAbsolutePath();
            applicationInfo.publicSourceDir = file.getAbsolutePath();
            return packageManager.getApplicationIcon(applicationInfo);
        } catch (Exception unused) {
            return null;
        }
    }
}
