package com.dex2c.plus;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.PopupMenu;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.dex2c.plus.databinding.ActivityMainBinding;
import com.dex2c.plus.databinding.DialogPermissionPromptBinding;
import com.dex2c.plus.engine.ApkDexManager;
import com.dex2c.plus.engine.NdkCompiler;
import com.dex2c.plus.model.DexClassItem;
import com.dex2c.plus.model.ProjectState;
import com.dex2c.plus.ui.AcknowledgementActivity;
import com.dex2c.plus.ui.BuildActivity;
import com.dex2c.plus.ui.ClassAdapter;
import com.dex2c.plus.ui.FileManagerDialog;
import com.dex2c.plus.ui.SettingsActivity;
import com.dex2c.plus.ui.TelegramProfileDialog;
import com.dex2c.plus.ui.UiAnimator;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends AppCompatActivity {
    private static final long MIN_SHIMMER_DISPLAY_MS = 420;
    private static final ExecutorService TREE_EXECUTOR;
    private ActivityMainBinding binding;
    private ClassAdapter classAdapter;
    private FileManagerDialog fileManagerDialog;
    private Dialog ndkPromptDialog;
    private PopupMenu overflowPopupMenu;
    private Dialog storagePermissionDialog;
    private TelegramProfileDialog telegramProfileDialog;
    private final List<DexClassItem> filteredClasses = new ArrayList();
    private final AtomicInteger filterSeqGen = new AtomicInteger(0);
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private String lastRenderedApkPath = null;
    private int lastRenderedClassCount = -1;
    private boolean updatingSelectAllCheckBox = false;
    private boolean isDexTreeMode = false;
    private boolean isApkLoading = false;
    private long shimmerStartMs = 0;

    static /* synthetic */ boolean lambda$configureOverflowDropDownListView$8(View view, MotionEvent motionEvent) {
        return true;
    }

    public static void openGithubRepoNative(Context context) {
        if (context == null) return;
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://github.com/iAmINCoder/Dex2cPlus"));
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public String getNativeAbi() {
        if (Build.SUPPORTED_ABIS != null && Build.SUPPORTED_ABIS.length > 0) {
            return Build.SUPPORTED_ABIS[0];
        }
        return Build.CPU_ABI != null ? Build.CPU_ABI : "arm64-v8a";
    }

    static {
        TREE_EXECUTOR = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return MainActivity.lambda$static$0(runnable);
            }
        });
    }

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "Dex2c-TreeWorker");
        thread.setPriority(5);
        thread.setDaemon(true);
        return thread;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ProjectState.applyThemeMode(ProjectState.getThemeMode(this));
        super.onCreate(bundle);
        ProjectState.get().loadPrefs(this);
        StorageHelper.cleanBuildWorkDir(getApplicationContext());
        ActivityMainBinding activityMainBindingInflate = ActivityMainBinding.inflate(getLayoutInflater());
        this.binding = activityMainBindingInflate;
        setContentView(activityMainBindingInflate.getRoot());
        UiAnimator.applySeamlessDecorView(this, this.binding.headerContainer, this.binding.rootContainer, R.color.md_theme_headerSurface, R.color.md_theme_surfaceContainer);
        UiAnimator.attachPersistentDrawablePress(this.binding.btnHeaderApkPicker, this.binding.btnHeaderTelegram, this.binding.btnMoreMenu);
        UiAnimator.attachPressAnimation(this.binding.btnBuild);
        this.classAdapter = new ClassAdapter(new Runnable() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateSelectedCount();
            }
        });
        this.binding.rvClasses.setLayoutManager(new LinearLayoutManager(this));
        this.binding.rvClasses.setItemAnimator(null);
        this.binding.rvClasses.setAdapter(this.classAdapter);
        this.binding.btnHeaderApkPicker.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$1(view);
            }
        });
        this.binding.btnHeaderTelegram.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$2(view);
            }
        });
        this.binding.btnMoreMenu.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showOverflowDropDownMenu(view);
            }
        });
        this.binding.etFilter.addTextChangedListener(new TextWatcher() { // from class: com.dex2c.plus.MainActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                MainActivity.this.applyFilter(charSequence != null ? charSequence.toString() : "");
            }
        });
        this.binding.swTreeMode.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$onCreate$3(compoundButton, z);
            }
        });
        this.binding.cbSelectAll.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$onCreate$4(compoundButton, z);
            }
        });
        this.binding.btnBuild.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$5(view);
            }
        });
        restoreApkHeaderAndClasses();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(View view) {
        openInBuiltFileManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2(View view) {
        showTelegramProfileDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$3(CompoundButton compoundButton, boolean z) {
        this.isDexTreeMode = z;
        applyFilter(this.binding.etFilter.getText() != null ? this.binding.etFilter.getText().toString() : "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$4(CompoundButton compoundButton, boolean z) {
        if (this.updatingSelectAllCheckBox) {
            return;
        }
        int size = this.filteredClasses.size();
        for (int i = 0; i < size; i++) {
            this.filteredClasses.get(i).selected = z;
        }
        this.classAdapter.refreshAllSelectionCounts();
        this.classAdapter.notifyDataSetChanged();
        updateSelectedCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$5(View view) {
        launchBuildActivity();
    }

    private void launchBuildActivity() {
        if (!NdkCompiler.checkStatus(this).ready) {
            showNdkRequiredDialog();
            return;
        }
        ProjectState projectState = ProjectState.get();
        if (projectState.cachedApkFile == null || !projectState.cachedApkFile.exists() || projectState.allClasses.isEmpty()) {
            Toast.makeText(this, "Select APK", 0).show();
        } else if (projectState.getSelectedClasses().isEmpty()) {
            Toast.makeText(this, "Select classes", 0).show();
        } else {
            showBuildConfirmDialog();
        }
    }

    private void showNdkRequiredDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.ndkPromptDialog;
        if (dialog != null && dialog.isShowing()) {
            this.ndkPromptDialog.dismiss();
        }
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.ndkPromptDialog = dialog2;
        dialog2.requestWindowFeature(1);
        DialogPermissionPromptBinding dialogPermissionPromptBindingInflate = DialogPermissionPromptBinding.inflate(LayoutInflater.from(this));
        this.ndkPromptDialog.setContentView(dialogPermissionPromptBindingInflate.getRoot());
        if (this.ndkPromptDialog.getWindow() != null) {
            this.ndkPromptDialog.getWindow().setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.85f), -2);
        }
        dialogPermissionPromptBindingInflate.ivDialogIcon.setImageResource(R.drawable.ic_rocket_protect);
        dialogPermissionPromptBindingInflate.tvDialogTitle.setText("Android NDK Required");
        File localArchive = NdkCompiler.getPersistentNdkArchive(this);
        if (localArchive != null && localArchive.exists()) {
            dialogPermissionPromptBindingInflate.tvDialogMessage.setText("Found offline Android NDK backup (" + localArchive.getName() + "). Install it now without downloading from internet?");
            dialogPermissionPromptBindingInflate.btnDialogSecondary.setText("LOCAL INSTALL");
        } else {
            dialogPermissionPromptBindingInflate.tvDialogMessage.setText("Android NDK toolchain is required to compile translated C/C++ code into native (.so) libraries. Please install it first to enable native build support.");
            dialogPermissionPromptBindingInflate.btnDialogSecondary.setText("ONLINE INSTALL");
        }
        dialogPermissionPromptBindingInflate.btnDialogSecondary.setTextColor(ContextCompat.getColor(this, R.color.md_theme_primary));
        dialogPermissionPromptBindingInflate.btnDialogPrimary.setVisibility(0);
        dialogPermissionPromptBindingInflate.btnDialogPrimary.setText("CANCEL");
        dialogPermissionPromptBindingInflate.btnDialogPrimary.setTextColor(ContextCompat.getColor(this, R.color.md_theme_primary));
        dialogPermissionPromptBindingInflate.btnDialogSecondary.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNdkRequiredDialog$6(view);
            }
        });
        dialogPermissionPromptBindingInflate.btnDialogPrimary.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNdkRequiredDialog$7(view);
            }
        });
        this.ndkPromptDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkRequiredDialog$6(View view) {
        this.ndkPromptDialog.dismiss();
        Intent intent = new Intent(this, (Class<?>) BuildActivity.class);
        intent.putExtra(BuildActivity.EXTRA_ONLINE_NDK_INSTALL, true);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkRequiredDialog$7(View view) {
        this.ndkPromptDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOverflowDropDownMenu(View view) {
        PopupMenu popupMenu = this.overflowPopupMenu;
        if (popupMenu != null) {
            try {
                popupMenu.dismiss();
            } catch (Exception unused) {
            }
        }
        PopupMenu popupMenu2 = new PopupMenu(new ContextThemeWrapper(this, R.style.OfficialOverflowPopupThemeOverlay), view, GravityCompat.END, 0, R.style.OfficialOverflowPopupMenu);
        this.overflowPopupMenu = popupMenu2;
        popupMenu2.getMenuInflater().inflate(R.menu.menu_main_overflow, this.overflowPopupMenu.getMenu());
        enablePopupMenuIconsAndTheme(this.overflowPopupMenu);
        this.overflowPopupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda10
            @Override // androidx.appcompat.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return this.f$0.onOverflowItemSelected(menuItem);
            }
        });
        this.overflowPopupMenu.show();
        configureOverflowDropDownListView(this.overflowPopupMenu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareDropdownChildView(View view) {
        if (view == null) {
            return;
        }
        if (!Boolean.TRUE.equals(view.getTag(R.id.action_settings))) {
            view.setBackgroundResource(R.drawable.bg_dropdown_item_selector);
            view.setTag(R.id.action_settings, Boolean.TRUE);
        }
        view.setFocusable(false);
        view.setFocusableInTouchMode(false);
        view.setLongClickable(false);
        view.setClickable(false);
        view.setHovered(false);
        view.setSelected(false);
    }

    private void configureOverflowDropDownListView(PopupMenu popupMenu) {
        try {
            Field declaredField = PopupMenu.class.getDeclaredField("mPopup");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(popupMenu);
            if (obj == null) {
                return;
            }
            Method declaredMethod = obj.getClass().getDeclaredMethod("getPopup", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(obj, null);
            if (objInvoke == null) {
                return;
            }
            Method method = objInvoke.getClass().getMethod("getListView", null);
            method.setAccessible(true);
            Object objInvoke2 = method.invoke(objInvoke, null);
            if (objInvoke2 instanceof ListView) {
                final ListView listView = (ListView) objInvoke2;
                listView.setPadding(0, 0, 0, 0);
                listView.setClipToPadding(false);
                listView.setSelector(new ColorDrawable(0));
                listView.setDrawSelectorOnTop(false);
                listView.setDivider(null);
                listView.setDividerHeight(0);
                listView.setOverScrollMode(2);
                listView.setVerticalScrollBarEnabled(false);
                listView.setFocusable(false);
                listView.setFocusableInTouchMode(false);
                listView.setItemsCanFocus(false);
                listView.setLongClickable(false);
                listView.setOnItemLongClickListener(null);
                try {
                    Field declaredField2 = listView.getClass().getDeclaredField("mHoverListener");
                    declaredField2.setAccessible(true);
                    declaredField2.set(listView, null);
                } catch (Throwable unused) {
                }
                listView.setOnHoverListener(new View.OnHoverListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda13
                    @Override // android.view.View.OnHoverListener
                    public final boolean onHover(View view, MotionEvent motionEvent) {
                        return MainActivity.lambda$configureOverflowDropDownListView$8(view, motionEvent);
                    }
                });
                int childCount = listView.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    prepareDropdownChildView(listView.getChildAt(i));
                }
                listView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.dex2c.plus.MainActivity.2
                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewRemoved(View view, View view2) {
                    }

                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewAdded(View view, View view2) {
                        MainActivity.this.prepareDropdownChildView(view2);
                    }
                });
                listView.post(new Runnable() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$configureOverflowDropDownListView$9(listView);
                    }
                });
                listView.setOnTouchListener(new AnonymousClass3(listView, Math.min(350L, ViewConfiguration.getLongPressTimeout()), ViewConfiguration.get(this).getScaledTouchSlop(), popupMenu));
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$configureOverflowDropDownListView$9(ListView listView) {
        listView.setPadding(0, 0, 0, 0);
        int childCount = listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            prepareDropdownChildView(listView.getChildAt(i));
        }
    }

    /* JADX INFO: renamed from: com.dex2c.plus.MainActivity$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnTouchListener {
        final /* synthetic */ ListView val$listView;
        final /* synthetic */ long val$longPressThresholdMs;
        final /* synthetic */ PopupMenu val$popupMenu;
        final /* synthetic */ int val$touchSlop;
        private View pressedChild = null;
        private int downPos = -1;
        private float downX = 0.0f;
        private float downY = 0.0f;
        private long downTimeMs = 0;
        private boolean gestureCancelled = false;
        private boolean isLongPress = false;
        private final Runnable longPressRunnable = new Runnable() { // from class: com.dex2c.plus.MainActivity$3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$$0();
            }
        };

        AnonymousClass3(ListView listView, long j, int i, PopupMenu popupMenu) {
            this.val$listView = listView;
            this.val$longPressThresholdMs = j;
            this.val$touchSlop = i;
            this.val$popupMenu = popupMenu;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$$0() {
            if (this.gestureCancelled || this.pressedChild == null) {
                return;
            }
            this.isLongPress = true;
        }

        private void releasePressedChild() {
            MainActivity.this.mainHandler.removeCallbacks(this.longPressRunnable);
            View view = this.pressedChild;
            if (view != null) {
                view.setPressed(false);
                this.pressedChild = null;
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            boolean z = false;
            if (actionMasked == 0) {
                releasePressedChild();
                this.downX = x;
                this.downY = y;
                this.downTimeMs = motionEvent.getDownTime();
                this.gestureCancelled = false;
                this.isLongPress = false;
                int iPointToPosition = this.val$listView.pointToPosition((int) x, (int) y);
                this.downPos = iPointToPosition;
                if (iPointToPosition != -1) {
                    ListView listView = this.val$listView;
                    View childAt = listView.getChildAt(iPointToPosition - listView.getFirstVisiblePosition());
                    if (childAt != null && childAt.isEnabled()) {
                        MainActivity.this.prepareDropdownChildView(childAt);
                        this.pressedChild = childAt;
                        View view2 = this.pressedChild;
                        view2.drawableHotspotChanged(x - view2.getLeft(), y - this.pressedChild.getTop());
                        this.pressedChild.setPressed(true);
                        MainActivity.this.mainHandler.postDelayed(this.longPressRunnable, this.val$longPressThresholdMs);
                    }
                }
                return true;
            }
            if (actionMasked == 2) {
                if (!this.gestureCancelled && this.pressedChild != null) {
                    float fAbs = Math.abs(x - this.downX);
                    float fAbs2 = Math.abs(y - this.downY);
                    int iPointToPosition2 = this.val$listView.pointToPosition((int) x, (int) y);
                    if (x >= this.pressedChild.getLeft() && x <= this.pressedChild.getRight() && y >= this.pressedChild.getTop() && y <= this.pressedChild.getBottom()) {
                        z = true;
                    }
                    int i = this.val$touchSlop;
                    if (fAbs > i || fAbs2 > i || iPointToPosition2 != this.downPos || !z) {
                        this.gestureCancelled = true;
                        releasePressedChild();
                    } else {
                        if (motionEvent.getEventTime() - this.downTimeMs >= this.val$longPressThresholdMs) {
                            this.isLongPress = true;
                        }
                        View view3 = this.pressedChild;
                        view3.drawableHotspotChanged(x - view3.getLeft(), y - this.pressedChild.getTop());
                        return true;
                    }
                }
                return true;
            }
            if (actionMasked != 1) {
                if (actionMasked != 3 && actionMasked != 4) {
                    return true;
                }
                this.gestureCancelled = true;
                this.isLongPress = false;
                this.downPos = -1;
                releasePressedChild();
                return true;
            }
            boolean z2 = this.isLongPress || motionEvent.getEventTime() - this.downTimeMs >= this.val$longPressThresholdMs;
            int i2 = this.downPos;
            releasePressedChild();
            this.downPos = -1;
            if (this.gestureCancelled || z2 || i2 == -1) {
                this.gestureCancelled = false;
                this.isLongPress = false;
                return true;
            }
            Menu menu = this.val$popupMenu.getMenu();
            if (i2 >= 0 && i2 < menu.size()) {
                MenuItem item = menu.getItem(i2);
                this.val$popupMenu.dismiss();
                if (item != null && item.isEnabled()) {
                    MainActivity.this.onOverflowItemSelected(item);
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onOverflowItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_credits) {
            startActivity(new Intent(this, (Class<?>) AcknowledgementActivity.class));
            return true;
        }
        if (itemId == R.id.action_github) {
            openGithubRepoNative(this);
            return true;
        }
        if (itemId == R.id.action_settings) {
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
            return true;
        }
        if (itemId != R.id.action_exit) {
            return false;
        }
        finishAffinity();
        return true;
    }

    private void showTelegramProfileDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        TelegramProfileDialog telegramProfileDialog = this.telegramProfileDialog;
        if (telegramProfileDialog != null && telegramProfileDialog.isShowing()) {
            this.telegramProfileDialog.dismiss();
        }
        TelegramProfileDialog telegramProfileDialog2 = new TelegramProfileDialog(this);
        this.telegramProfileDialog = telegramProfileDialog2;
        telegramProfileDialog2.show();
    }

    private void enablePopupMenuIconsAndTheme(PopupMenu popupMenu) {
        Menu menu = popupMenu.getMenu();
        try {
            Method declaredMethod = menu.getClass().getDeclaredMethod("setOptionalIconsVisible", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(menu, true);
        } catch (Exception unused) {
        }
        try {
            Field declaredField = PopupMenu.class.getDeclaredField("mPopup");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(popupMenu);
            if (obj != null) {
                Method declaredMethod2 = obj.getClass().getDeclaredMethod("setForceShowIcon", Boolean.TYPE);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(obj, true);
            }
        } catch (Exception unused2) {
        }
        int color = ContextCompat.getColor(this, R.color.md_theme_primary);
        int color2 = ContextCompat.getColor(this, R.color.md_theme_onSurface);
        for (int i = 0; i < menu.size(); i++) {
            MenuItem item = menu.getItem(i);
            Drawable icon = item.getIcon();
            if (icon != null) {
                Drawable drawableWrap = DrawableCompat.wrap(icon.mutate());
                DrawableCompat.setTint(drawableWrap, color);
                item.setIcon(drawableWrap);
            }
            CharSequence title = item.getTitle();
            if (title != null) {
                SpannableString spannableString = new SpannableString(title.toString());
                spannableString.setSpan(new ForegroundColorSpan(color2), 0, spannableString.length(), 0);
                item.setTitle(spannableString);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        ProjectState.get().loadPrefs(this);
        ActivityMainBinding activityMainBinding = this.binding;
        if (activityMainBinding != null) {
            UiAnimator.applySeamlessDecorView(this, activityMainBinding.headerContainer, this.binding.rootContainer, R.color.md_theme_headerSurface, R.color.md_theme_surfaceContainer);
            restoreApkHeaderAndClasses();
        }
        checkStorageAndStartupRequirements();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1001) {
            checkStorageAndStartupRequirements();
        }
    }

    private void checkStorageAndStartupRequirements() {
        if (StorageHelper.hasStoragePermission(this)) {
            Dialog dialog = this.storagePermissionDialog;
            if (dialog != null && dialog.isShowing()) {
                this.storagePermissionDialog.dismiss();
            }
            this.storagePermissionDialog = null;
            return;
        }
        showStoragePermissionDialogIfNeeded();
    }

    private void showStoragePermissionDialogIfNeeded() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.storagePermissionDialog;
        if (dialog == null || !dialog.isShowing()) {
            Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
            this.storagePermissionDialog = dialog2;
            dialog2.requestWindowFeature(1);
            this.storagePermissionDialog.setCancelable(false);
            this.storagePermissionDialog.setCanceledOnTouchOutside(false);
            DialogPermissionPromptBinding dialogPermissionPromptBindingInflate = DialogPermissionPromptBinding.inflate(LayoutInflater.from(this));
            this.storagePermissionDialog.setContentView(dialogPermissionPromptBindingInflate.getRoot());
            if (this.storagePermissionDialog.getWindow() != null) {
                this.storagePermissionDialog.getWindow().setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.85f), -2);
            }
            dialogPermissionPromptBindingInflate.ivDialogIcon.setImageResource(R.drawable.ic_folder_open);
            dialogPermissionPromptBindingInflate.tvDialogTitle.setText("Storage Permission Required");
            dialogPermissionPromptBindingInflate.tvDialogMessage.setText("Allow storage access so Dex2c can browse APK files and save protected outputs to /storage/emulated/0/Dex2cPlus.");
            dialogPermissionPromptBindingInflate.btnDialogSecondary.setVisibility(8);
            dialogPermissionPromptBindingInflate.btnDialogPrimary.setText("ALLOW");
            dialogPermissionPromptBindingInflate.btnDialogPrimary.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showStoragePermissionDialogIfNeeded$10(view);
                }
            });
            this.storagePermissionDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showStoragePermissionDialogIfNeeded$10(View view) {
        StorageHelper.requestStoragePermission(this);
    }

    private void openInBuiltFileManager() {
        if (!StorageHelper.hasStoragePermission(this)) {
            showStoragePermissionDialogIfNeeded();
            return;
        }
        FileManagerDialog fileManagerDialog = this.fileManagerDialog;
        if (fileManagerDialog != null) {
            fileManagerDialog.dismiss();
        }
        FileManagerDialog fileManagerDialog2 = new FileManagerDialog(this, ProjectState.get().selectedApkSourceFile != null ? ProjectState.get().selectedApkSourceFile.getParentFile() : null, new FileManagerDialog.OnApkSelectedListener() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda6
            @Override // com.dex2c.plus.ui.FileManagerDialog.OnApkSelectedListener
            public final void onApkSelected(File file) {
                this.f$0.onApkFileSelected(file);
            }
        });
        this.fileManagerDialog = fileManagerDialog2;
        fileManagerDialog2.show();
    }

    private void setTreeShimmerVisible(boolean z) {
        ActivityMainBinding activityMainBinding = this.binding;
        if (activityMainBinding == null) {
            return;
        }
        if (z) {
            this.shimmerStartMs = SystemClock.uptimeMillis();
            this.binding.etFilter.clearFocus();
            this.binding.filterBarContainer.setVisibility(0);
            this.binding.filterBarContent.setVisibility(4);
            this.binding.shimmerFilterLoading.setVisibility(0);
            this.binding.filterBarContainer.startShimmer();
            this.binding.rvClasses.setVisibility(4);
            this.binding.shimmerTreeLoading.setVisibility(0);
            this.binding.shimmerTreeLoading.startShimmer();
            return;
        }
        activityMainBinding.filterBarContainer.stopShimmer();
        this.binding.shimmerFilterLoading.setVisibility(8);
        this.binding.filterBarContent.setVisibility(0);
        this.binding.shimmerTreeLoading.stopShimmer();
        this.binding.shimmerTreeLoading.setVisibility(8);
        this.binding.rvClasses.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onApkFileSelected(final File file) {
        if (file == null || !file.exists()) {
            return;
        }
        ConsoleLogger.get().clear();
        this.filterSeqGen.incrementAndGet();
        this.isApkLoading = true;
        setTreeShimmerVisible(true);
        final Context applicationContext = getApplicationContext();
        new Thread(new Runnable() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onApkFileSelected$13(applicationContext, file);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onApkFileSelected$13(Context context, File file) {
        try {
            ApkDexManager.ApkLoadResult apkLoadResultLoadApk = ApkDexManager.loadApk(context, file);
            ProjectState projectState = ProjectState.get();
            projectState.selectedApkSourceFile = file;
            projectState.selectedApkName = apkLoadResultLoadApk.displayName;
            projectState.apkDisplayLabel = apkLoadResultLoadApk.appLabel;
            projectState.apkVersionName = apkLoadResultLoadApk.versionName;
            projectState.apkVersionCode = apkLoadResultLoadApk.versionCode;
            projectState.dexCount = apkLoadResultLoadApk.dexCount;
            projectState.cachedApkFile = apkLoadResultLoadApk.cachedApk;
            projectState.allClasses.clear();
            projectState.allClasses.addAll(apkLoadResultLoadApk.classes);
            runOnUiThread(new Runnable() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onApkFileSelected$11();
                }
            });
        } catch (Exception unused) {
            runOnUiThread(new Runnable() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onApkFileSelected$12();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onApkFileSelected$11() {
        if (this.binding == null || isFinishing() || isDestroyed()) {
            return;
        }
        this.isApkLoading = false;
        this.lastRenderedApkPath = null;
        this.lastRenderedClassCount = -1;
        restoreApkHeaderAndClasses();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onApkFileSelected$12() {
        if (this.binding == null || isFinishing() || isDestroyed()) {
            return;
        }
        this.isApkLoading = false;
        setTreeShimmerVisible(false);
        this.binding.filterBarContainer.setVisibility(8);
        Toast.makeText(this, "Invalid APK", 0).show();
    }

    private void restoreApkHeaderAndClasses() {
        if (this.binding == null || this.isApkLoading) {
            return;
        }
        ProjectState projectState = ProjectState.get();
        if (projectState.cachedApkFile == null || !projectState.cachedApkFile.exists() || projectState.allClasses.isEmpty()) {
            this.filterSeqGen.incrementAndGet();
            setTreeShimmerVisible(false);
            this.binding.filterBarContainer.setVisibility(8);
            this.lastRenderedApkPath = "";
            this.lastRenderedClassCount = 0;
            this.filteredClasses.clear();
            this.classAdapter.applyPreparedTree(ClassAdapter.prepareTreeOffThread(Collections.EMPTY_LIST, "", false));
            this.updatingSelectAllCheckBox = true;
            this.binding.cbSelectAll.setChecked(false);
            this.updatingSelectAllCheckBox = false;
            updateSelectedCount();
            return;
        }
        this.binding.filterBarContainer.setVisibility(0);
        if (this.binding.shimmerTreeLoading.getVisibility() != 0) {
            setTreeShimmerVisible(false);
        }
        String absolutePath = projectState.cachedApkFile.getAbsolutePath();
        int size = projectState.allClasses.size();
        if (!absolutePath.equals(this.lastRenderedApkPath) || size != this.lastRenderedClassCount) {
            this.lastRenderedApkPath = absolutePath;
            this.lastRenderedClassCount = size;
            applyFilter(this.binding.etFilter.getText() != null ? this.binding.etFilter.getText().toString() : "");
        }
        updateSelectedCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyFilter(String str) {
        final int iIncrementAndGet = this.filterSeqGen.incrementAndGet();
        if (str == null) {
            str = "";
        }
        final String str2 = str;
        final boolean z = this.isDexTreeMode;
        final ArrayList arrayList = new ArrayList(ProjectState.get().allClasses);
        TREE_EXECUTOR.execute(new Runnable() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyFilter$15(iIncrementAndGet, arrayList, str2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyFilter$15(final int i, List list, String str, boolean z) {
        if (i != this.filterSeqGen.get()) {
            return;
        }
        final ClassAdapter.PreparedTree preparedTreePrepareTreeOffThread = ClassAdapter.prepareTreeOffThread(list, str, z);
        if (i != this.filterSeqGen.get()) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.shimmerStartMs;
        ActivityMainBinding activityMainBinding = this.binding;
        long jMax = 0;
        if (activityMainBinding != null && activityMainBinding.shimmerTreeLoading.getVisibility() == 0) {
            jMax = Math.max(0L, MIN_SHIMMER_DISPLAY_MS - jUptimeMillis);
        }
        this.mainHandler.postDelayed(new Runnable() { // from class: com.dex2c.plus.MainActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyFilter$14(i, preparedTreePrepareTreeOffThread);
            }
        }, jMax);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyFilter$14(int i, ClassAdapter.PreparedTree preparedTree) {
        if (this.binding == null || isFinishing() || isDestroyed() || i != this.filterSeqGen.get()) {
            return;
        }
        this.filteredClasses.clear();
        this.filteredClasses.addAll(preparedTree.matchedItems);
        this.classAdapter.applyPreparedTree(preparedTree);
        this.updatingSelectAllCheckBox = true;
        this.binding.cbSelectAll.setChecked(preparedTree.allChecked);
        this.updatingSelectAllCheckBox = false;
        setTreeShimmerVisible(false);
    }

    private void syncSelectAllCheckBoxState() {
        if (this.binding == null) {
            return;
        }
        boolean z = !this.filteredClasses.isEmpty();
        int size = this.filteredClasses.size();
        for (int i = 0; i < size; i++) {
            if (!this.filteredClasses.get(i).selected) {
                z = false;
                break;
            }
        }
        this.updatingSelectAllCheckBox = true;
        this.binding.cbSelectAll.setChecked(z);
        this.updatingSelectAllCheckBox = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedCount() {
        if (this.binding == null) {
            return;
        }
        int selectedClassCount = ProjectState.get().getSelectedClassCount();
        this.binding.tvSelectedCount.setText(String.valueOf(selectedClassCount));
        this.binding.tvSelectedCount.setTextColor(ContextCompat.getColor(this, selectedClassCount > 0 ? R.color.studio_emerald : R.color.md_theme_primary));
        syncSelectAllCheckBoxState();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.filterSeqGen.incrementAndGet();
        this.mainHandler.removeCallbacksAndMessages(null);
        PopupMenu popupMenu = this.overflowPopupMenu;
        if (popupMenu != null) {
            popupMenu.dismiss();
        }
        Dialog dialog = this.storagePermissionDialog;
        if (dialog != null && dialog.isShowing()) {
            this.storagePermissionDialog.dismiss();
        }
        Dialog dialog2 = this.ndkPromptDialog;
        if (dialog2 != null && dialog2.isShowing()) {
            this.ndkPromptDialog.dismiss();
        }
        FileManagerDialog fileManagerDialog = this.fileManagerDialog;
        if (fileManagerDialog != null) {
            fileManagerDialog.dismiss();
        }
        TelegramProfileDialog telegramProfileDialog = this.telegramProfileDialog;
        if (telegramProfileDialog != null) {
            telegramProfileDialog.dismiss();
        }
        super.onDestroy();
    }

    private void showBuildConfirmDialog() {
        if (isFinishing() || isDestroyed()) return;
        try {
            final android.app.Dialog dialog = new android.app.Dialog(this, com.dex2c.plus.R.style.SeamlessDialogTheme);
            dialog.requestWindowFeature(1);
            final com.dex2c.plus.databinding.DialogCustomInputBinding dialogBinding = com.dex2c.plus.databinding.DialogCustomInputBinding.inflate(getLayoutInflater());
            dialog.setContentView(dialogBinding.getRoot());
            com.dex2c.plus.ui.UiAnimator.applyDialogWidth(dialog);
            dialogBinding.tvCustomInputTitle.setText("Remote Kill Switch URL");
            dialogBinding.etCustomInputValue.setHint("Pastebin/JSON raw URL (or leave empty)");
            final com.dex2c.plus.model.ProjectState projectState = com.dex2c.plus.model.ProjectState.get();
            String currentUrl = (projectState != null) ? projectState.getRemoteControlUrl() : "";
            dialogBinding.etCustomInputValue.setText(currentUrl);
            if (dialogBinding.etCustomInputValue.getText() != null) {
                dialogBinding.etCustomInputValue.setSelection(dialogBinding.etCustomInputValue.getText().length());
            }
            dialogBinding.btnCustomInputOk.setText("START BUILD");
            dialogBinding.btnCustomInputCancel.setOnClickListener(new android.view.View.OnClickListener() {
                @Override
                public void onClick(android.view.View v) {
                    dialog.dismiss();
                }
            });
            dialogBinding.btnCustomInputOk.setOnClickListener(new android.view.View.OnClickListener() {
                @Override
                public void onClick(android.view.View v) {
                    String url = (dialogBinding.etCustomInputValue.getText() != null) ? dialogBinding.etCustomInputValue.getText().toString().trim() : "";
                    if (projectState != null) {
                        projectState.remoteControlUrl = url;
                        projectState.savePrefs(MainActivity.this);
                    }
                    dialog.dismiss();
                    MainActivity.this.startActivity(new android.content.Intent(MainActivity.this, (Class<?>) com.dex2c.plus.ui.BuildActivity.class));
                }
            });
            dialog.show();
        } catch (Throwable th) {
            startActivity(new android.content.Intent(this, (Class<?>) com.dex2c.plus.ui.BuildActivity.class));
        }
    }

}
