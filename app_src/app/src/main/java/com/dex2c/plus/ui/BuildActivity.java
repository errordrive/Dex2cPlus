package com.dex2c.plus.ui;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AppCompatActivity;
import com.dex2c.plus.ConsoleLogger;
import com.dex2c.plus.R;
import com.dex2c.plus.StorageHelper;
import com.dex2c.plus.databinding.ActivityBuildBinding;
import com.dex2c.plus.engine.Dex2CTranslator;
import com.dex2c.plus.engine.DexRewriterEngine;
import com.dex2c.plus.engine.NdkCompiler;
import com.dex2c.plus.model.DexClassItem;
import com.dex2c.plus.model.ProjectState;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class BuildActivity extends AppCompatActivity implements ConsoleLogger.Listener {
    public static final String EXTRA_ONLINE_NDK_INSTALL = "extra_online_ndk_install";
    private static final AtomicBoolean cancelRequested = new AtomicBoolean(false);
    private static volatile boolean isBuilding = false;
    private ActivityBuildBinding binding;
    private Thread buildThread;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ProjectState.applyThemeMode(ProjectState.getThemeMode(this));
        super.onCreate(bundle);
        ActivityBuildBinding activityBuildBindingInflate = ActivityBuildBinding.inflate(getLayoutInflater());
        this.binding = activityBuildBindingInflate;
        setContentView(activityBuildBindingInflate.getRoot());
        UiAnimator.applySeamlessDecorView(this, this.binding.headerBuild, this.binding.rootBuild, R.color.md_theme_headerSurface, R.color.console_bg);
        UiAnimator.attachCompactIconPress(this.binding.btnBuildBack, this.binding.btnCopyConsole);
        UiAnimator.attachPressAnimation(this.binding.btnCancelBuild);
        this.binding.btnBuildBack.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$0(view);
            }
        });
        this.binding.btnCancelBuild.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$1(view);
            }
        });
        this.binding.btnCopyConsole.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$2(view);
            }
        });
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) { // from class: com.dex2c.plus.ui.BuildActivity.1
            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                BuildActivity.this.cancelAndReturnHome();
            }
        });
        ConsoleLogger.get().addListener(this);
        boolean z = getIntent() != null && getIntent().getBooleanExtra(EXTRA_ONLINE_NDK_INSTALL, false);
        if (bundle != null || isBuilding) {
            this.binding.tvConsoleOutput.setGlowActive(false);
            this.binding.btnCancelBuild.setVisibility(0);
        } else if (z) {
            startOnlineNdkInstallInConsole();
        } else {
            startBuildPipeline();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view) {
        cancelAndReturnHome();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(View view) {
        cancelAndReturnHome();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2(View view) {
        copyConsoleToClipboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAndReturnHome() {
        cancelRequested.set(true);
        NdkCompiler.cancelActiveProcesses();
        Thread thread = this.buildThread;
        if (thread != null) {
            thread.interrupt();
        }
        isBuilding = false;
        final Context applicationContext = getApplicationContext();
        new Thread(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                StorageHelper.cleanBuildWorkDir(applicationContext);
            }
        }).start();
        finish();
    }

    private void startOnlineNdkInstallInConsole() {
        ConsoleLogger.get().clear();
        cancelRequested.set(false);
        NdkCompiler.resetCancellation();
        final Context applicationContext = getApplicationContext();
        isBuilding = true;
        this.binding.tvConsoleOutput.setGlowActive(false);
        this.binding.tvBuildTitle.setText("Installing...");
        this.binding.btnCancelBuild.setEnabled(true);
        this.binding.btnCancelBuild.setVisibility(0);
        Thread thread = new Thread(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$startOnlineNdkInstallInConsole$7(applicationContext);
            }
        });
        this.buildThread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOnlineNdkInstallInConsole$7(Context context) throws Throwable {
        boolean zDownloadAndInstallOnline;
        final boolean z;
        try {
            ConsoleLogger.get().updateStep("NDK_DL", "Downloading...", "0%");
            zDownloadAndInstallOnline = NdkCompiler.downloadAndInstallOnline(context, NdkCompiler.getOnlineNdkUrlNative(), new NdkCompiler.InstallProgressListener() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda9
                @Override // com.dex2c.plus.engine.NdkCompiler.InstallProgressListener
                public final void onProgress(String str, String str2, int i, boolean z2) {
                    BuildActivity.lambda$startOnlineNdkInstallInConsole$4(str, str2, i, z2);
                }
            });
            try {
                AtomicBoolean atomicBoolean = cancelRequested;
                if (!atomicBoolean.get()) {
                    if (zDownloadAndInstallOnline && NdkCompiler.checkStatus(context).ready) {
                        ConsoleLogger.get().updateStep("NDK_INST", "Installing...", "100%");
                    } else {
                        ConsoleLogger.get().error("NDK", "Download failed");
                    }
                }
                isBuilding = false;
                z = zDownloadAndInstallOnline && !atomicBoolean.get() && NdkCompiler.checkStatus(context).ready;
                runOnUiThread(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startOnlineNdkInstallInConsole$6(z);
                    }
                });
            } catch (Throwable th) {
                th = th;
                isBuilding = false;
                z = zDownloadAndInstallOnline && !cancelRequested.get() && NdkCompiler.checkStatus(context).ready;
                runOnUiThread(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startOnlineNdkInstallInConsole$6(z);
                    }
                });
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            zDownloadAndInstallOnline = false;
        }
    }

    static /* synthetic */ void lambda$startOnlineNdkInstallInConsole$4(String str, String str2, int i, boolean z) {
        if (cancelRequested.get()) {
            return;
        }
        String str3 = "...";
        if (str != null && str.startsWith("Downloading")) {
            if (!z) {
                str3 = i + "%";
            }
            ConsoleLogger.get().updateStep("NDK_DL", "Downloading...", str3);
            return;
        }
        ConsoleLogger.get().updateStep("NDK_DL", "Downloading...", "100%");
        if (!z) {
            str3 = i + "%";
        }
        ConsoleLogger.get().updateStep("NDK_INST", "Installing...", str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOnlineNdkInstallInConsole$6(boolean z) {
        if (this.binding == null || isFinishing() || isDestroyed()) {
            return;
        }
        if (cancelRequested.get()) {
            finish();
        } else if (z) {
            this.mainHandler.postDelayed(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startOnlineNdkInstallInConsole$5();
                }
            }, 250L);
        } else {
            this.binding.tvBuildTitle.setText("Output");
            Toast.makeText(this, "Download failed", 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOnlineNdkInstallInConsole$5() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        finish();
    }

    private void startBuildPipeline() {
        ConsoleLogger.get().clear();
        cancelRequested.set(false);
        NdkCompiler.resetCancellation();
        ProjectState projectState = ProjectState.get();
        final List<DexClassItem> selectedClasses = projectState.getSelectedClasses();
        if (projectState.cachedApkFile == null || !projectState.cachedApkFile.exists() || selectedClasses.isEmpty()) {
            finish();
            return;
        }
        final boolean z = projectState.parallelBuild;
        final boolean z2 = projectState.arm32;
        final boolean z3 = projectState.arm64;
        final boolean z4 = projectState.x86;
        final boolean z5 = projectState.x86_64;
        final String str = projectState.customLibName;
        final String str2 = projectState.customLoaderClass;
        final boolean z6 = projectState.registerNatives;
        final boolean z7 = projectState.envEncryption;
        final boolean z8 = projectState.rewriteDex;
        final File file = projectState.cachedApkFile;
        final String str3 = projectState.selectedApkName;
        final Context applicationContext = getApplicationContext();
        isBuilding = true;
        this.binding.tvConsoleOutput.setGlowActive(false);
        this.binding.tvBuildTitle.setText("Building...");
        this.binding.btnCancelBuild.setEnabled(true);
        this.binding.btnCancelBuild.setVisibility(0);
        Thread thread = new Thread(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startBuildPipeline$10(applicationContext, file, selectedClasses, z6, z7, z2, z3, z4, z5, z, str, str3, z8, str2);
            }
        });
        this.buildThread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startBuildPipeline$10(Context context, File file, List list, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str, String str2, boolean z8, String str3) {
        Runnable runnable;
        File file2 = new File(context.getFilesDir(), "dex2c_work");
        final boolean z9 = false;
        try {
            StorageHelper.deleteRecursive(file2);
            file2.mkdirs();
            AtomicBoolean atomicBoolean = cancelRequested;
            if (atomicBoolean.get()) {
                isBuilding = false;
                StorageHelper.cleanBuildWorkDir(context);
                runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startBuildPipeline$9(z9);
                    }
                };
            } else {
                Dex2CTranslator.Result resultTranslate = Dex2CTranslator.translate(file, list, file2, z, z2);
                if (atomicBoolean.get()) {
                    isBuilding = false;
                    StorageHelper.cleanBuildWorkDir(context);
                    runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$startBuildPipeline$9(z9);
                        }
                    };
                } else if (resultTranslate.cppFiles.isEmpty() || resultTranslate.translatedMethods == 0) {
                    ConsoleLogger.get().error("DEX2C", "No translatable methods matched in selected classes.");
                    isBuilding = false;
                    StorageHelper.cleanBuildWorkDir(context);
                    runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$startBuildPipeline$9(z9);
                        }
                    };
                } else {
                    boolean zCompileIfAvailable = NdkCompiler.compileIfAvailable(context, resultTranslate, file2, z3, z4, z5, z6, z7, str);
                    if (atomicBoolean.get()) {
                        isBuilding = false;
                        StorageHelper.cleanBuildWorkDir(context);
                        runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$startBuildPipeline$9(z9);
                            }
                        };
                    } else if (zCompileIfAvailable) {
                        DexRewriterEngine.OutputResult outputResultPackageAndSaveToStorage = DexRewriterEngine.packageAndSaveToStorage(context, file, str2, list, file2, z8, str, str3, resultTranslate.translatedClassDescriptors);
                        if (atomicBoolean.get()) {
                            isBuilding = false;
                            StorageHelper.cleanBuildWorkDir(context);
                            runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$startBuildPipeline$9(z9);
                                }
                            };
                        } else {
                            ProjectState.get().lastOutputBundleZip = outputResultPackageAndSaveToStorage.bundleZip;
                            boolean z10 = outputResultPackageAndSaveToStorage.protectedApk != null && outputResultPackageAndSaveToStorage.protectedApk.exists();
                            isBuilding = false;
                            if (z10 && !atomicBoolean.get()) {
                                z9 = true;
                            }
                            if (z9) {
                                StorageHelper.cleanAllBuildAndOldCacheData(context);
                                ProjectState.get().clearLoadedApkCacheState();
                            } else {
                                StorageHelper.cleanBuildWorkDir(context);
                            }
                            runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$startBuildPipeline$9(z9);
                                }
                            };
                        }
                    } else {
                        ConsoleLogger.get().error("BUILD", "NDK compilation failed.");
                        isBuilding = false;
                        StorageHelper.cleanBuildWorkDir(context);
                        runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$startBuildPipeline$9(z9);
                            }
                        };
                    }
                }
            }
        } catch (Throwable th) {
            try {
                if (!cancelRequested.get()) {
                    ConsoleLogger.get().error("BUILD", "Build error: " + th.getClass().getSimpleName());
                }
                isBuilding = false;
                StorageHelper.cleanBuildWorkDir(context);
                runnable = new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startBuildPipeline$9(z9);
                    }
                };
            } catch (Throwable th2) {
                isBuilding = false;
                StorageHelper.cleanBuildWorkDir(context);
                runOnUiThread(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$startBuildPipeline$9(z9);
                    }
                });
                throw th2;
            }
        }
        runOnUiThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startBuildPipeline$9(boolean z) {
        if (this.binding == null || isFinishing() || isDestroyed()) {
            return;
        }
        if (cancelRequested.get()) {
            finish();
        } else if (z) {
            this.binding.tvBuildTitle.setText("Output");
            this.mainHandler.postDelayed(new Runnable() { // from class: com.dex2c.plus.ui.BuildActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startBuildPipeline$8();
                }
            }, 250L);
        } else {
            this.binding.tvBuildTitle.setText("Output");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startBuildPipeline$8() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        finish();
    }

    private void copyConsoleToClipboard() {
        ClipboardManager clipboardManager;
        String allText = ConsoleLogger.get().getAllText();
        if (allText.trim().isEmpty() || (clipboardManager = (ClipboardManager) getSystemService("clipboard")) == null) {
            return;
        }
        clipboardManager.setPrimaryClip(ClipData.newPlainText("Dex2c Build Output", allText));
        Toast.makeText(this, "Copied", 0).show();
    }

    @Override // com.dex2c.plus.ConsoleLogger.Listener
    public void onLogUpdated() {
        ActivityBuildBinding activityBuildBinding = this.binding;
        if (activityBuildBinding == null) {
            return;
        }
        activityBuildBinding.tvConsoleOutput.onBufferUpdated(ConsoleLogger.get().getGapBuffer());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.mainHandler.removeCallbacksAndMessages(null);
        ConsoleLogger.get().removeListener(this);
        this.binding = null;
        super.onDestroy();
    }
}
