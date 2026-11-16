package com.dex2c.plus.ui;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.dex2c.plus.R;
import com.dex2c.plus.StorageHelper;
import com.dex2c.plus.databinding.ActivitySettingsBinding;
import com.dex2c.plus.databinding.DialogAbisConfigBinding;
import com.dex2c.plus.databinding.DialogCustomInputBinding;
import com.dex2c.plus.databinding.DialogMethodTypesBinding;
import com.dex2c.plus.databinding.DialogNdkInstallerBinding;
import com.dex2c.plus.databinding.DialogOutputPickerBinding;
import com.dex2c.plus.databinding.DialogThemePickerBinding;
import com.dex2c.plus.engine.NdkCompiler;
import com.dex2c.plus.model.ProjectState;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends AppCompatActivity {
    private Dialog abisDialog;
    private ActivitySettingsBinding binding;
    private Dialog customInputDialog;
    private volatile boolean isNdkInstalling = false;
    private Dialog methodTypesDialog;
    private FileManagerDialog ndkFilePickerDialog;
    private Dialog ndkInstallerDialog;
    private Dialog outputSelectionDialog;
    private Dialog themeDialog;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ProjectState.applyThemeMode(ProjectState.getThemeMode(this));
        super.onCreate(bundle);
        ProjectState.get().loadPrefs(this);
        ActivitySettingsBinding activitySettingsBindingInflate = ActivitySettingsBinding.inflate(getLayoutInflater());
        this.binding = activitySettingsBindingInflate;
        setContentView(activitySettingsBindingInflate.getRoot());
        UiAnimator.applySeamlessDecorView(this, this.binding.headerSettings, this.binding.rootSettings, R.color.md_theme_headerSurface, R.color.md_theme_surfaceContainer);
        UiAnimator.attachPersistentDrawablePress(this.binding.btnSettingsBack);
        this.binding.btnSettingsBack.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$0(view);
            }
        });
        updateThemeLabel();
        this.binding.rowThemePreference.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$1(view);
            }
        });
        final ProjectState projectState = ProjectState.get();
        refreshNdkStatusSubtitle();
        this.binding.swParallelBuild.setChecked(projectState.parallelBuild);
        this.binding.swRegisterNatives.setChecked(projectState.registerNatives);
        this.binding.swEnvEncryption.setChecked(projectState.envEncryption);
        this.binding.swRewriteDex.setChecked(projectState.rewriteDex);
        refreshCustomSettingsLabels();
        this.binding.rowMiniNdk.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$2(view);
            }
        });
        this.binding.rowOutputSelection.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$3(view);
            }
        });
        this.binding.rowParallelBuild.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$4(view);
            }
        });
        this.binding.rowCustomLibName.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda41
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$5(view);
            }
        });
        this.binding.rowCustomLoaderClass.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$6(view);
            }
        });
        this.binding.rowAbisConfig.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$7(view);
            }
        });
        this.binding.rowMethodTypesConfig.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$8(view);
            }
        });
        this.binding.rowRegisterNatives.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda46
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$9(view);
            }
        });
        this.binding.rowEnvEncryption.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$10(view);
            }
        });
        this.binding.rowRewriteDex.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$11(view);
            }
        });
        this.binding.swParallelBuild.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda32
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$onCreate$12(projectState, compoundButton, z);
            }
        });
        this.binding.swRegisterNatives.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda34
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$onCreate$13(projectState, compoundButton, z);
            }
        });
        this.binding.swEnvEncryption.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda35
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$onCreate$14(projectState, compoundButton, z);
            }
        });
        this.binding.swRewriteDex.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda36
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$onCreate$15(projectState, compoundButton, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(View view) {
        showCustomThemeDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2(View view) {
        showNdkInstallerDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$3(View view) {
        showOutputSelectionDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$4(View view) {
        this.binding.swParallelBuild.toggle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$5(View view) {
        showCustomLibNameDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$6(View view) {
        showCustomLoaderClassDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$7(View view) {
        showAbisConfigDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$8(View view) {
        showMethodTypesConfigDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$9(View view) {
        this.binding.swRegisterNatives.toggle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$10(View view) {
        this.binding.swEnvEncryption.toggle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$11(View view) {
        this.binding.swRewriteDex.toggle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$12(ProjectState projectState, CompoundButton compoundButton, boolean z) {
        projectState.parallelBuild = z;
        projectState.savePrefs(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$13(ProjectState projectState, CompoundButton compoundButton, boolean z) {
        projectState.registerNatives = z;
        projectState.savePrefs(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$14(ProjectState projectState, CompoundButton compoundButton, boolean z) {
        projectState.envEncryption = z;
        projectState.savePrefs(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$15(ProjectState projectState, CompoundButton compoundButton, boolean z) {
        projectState.rewriteDex = z;
        projectState.savePrefs(this);
    }

    private void showOutputSelectionDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.outputSelectionDialog;
        if (dialog != null && dialog.isShowing()) {
            this.outputSelectionDialog.dismiss();
        }
        ProjectState projectState = ProjectState.get();
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.outputSelectionDialog = dialog2;
        dialog2.requestWindowFeature(1);
        DialogOutputPickerBinding dialogOutputPickerBindingInflate = DialogOutputPickerBinding.inflate(LayoutInflater.from(this));
        this.outputSelectionDialog.setContentView(dialogOutputPickerBindingInflate.getRoot());
        applyDialogWidth(this.outputSelectionDialog);
        if (projectState.outputLocationMode == 1) {
            dialogOutputPickerBindingInflate.rbOutputApkFolder.setChecked(true);
        } else {
            dialogOutputPickerBindingInflate.rbOutputDefault.setChecked(true);
        }
        dialogOutputPickerBindingInflate.rbOutputDefault.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda51
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showOutputSelectionDialog$16(view);
            }
        });
        dialogOutputPickerBindingInflate.rbOutputApkFolder.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showOutputSelectionDialog$17(view);
            }
        });
        dialogOutputPickerBindingInflate.btnOutputCancel.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showOutputSelectionDialog$18(view);
            }
        });
        this.outputSelectionDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOutputSelectionDialog$16(View view) {
        applyOutputSelection(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOutputSelectionDialog$17(View view) {
        applyOutputSelection(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOutputSelectionDialog$18(View view) {
        this.outputSelectionDialog.dismiss();
    }

    private void applyOutputSelection(int i) {
        Dialog dialog = this.outputSelectionDialog;
        if (dialog != null && dialog.isShowing()) {
            this.outputSelectionDialog.dismiss();
        }
        ProjectState projectState = ProjectState.get();
        projectState.outputLocationMode = i;
        projectState.savePrefs(this);
        refreshCustomSettingsLabels();
    }

    private void refreshNdkStatusSubtitle() {
        String str;
        if (this.binding == null) {
            return;
        }
        NdkCompiler.NdkStatus ndkStatusCheckStatus = NdkCompiler.checkStatus(this);
        TextView textView = this.binding.tvNdkToggleSub;
        if (ndkStatusCheckStatus.ready) {
            str = "Installed & Ready (NDK sysroot + Clang)";
        } else {
            str = "Install/Uninstall native code (C/C++) build support!";
        }
        textView.setText(str);
    }

    private void updateNdkDialogState(DialogNdkInstallerBinding dialogNdkInstallerBinding, boolean z) {
        dialogNdkInstallerBinding.containerNdkLiveProgress.setVisibility(8);
        dialogNdkInstallerBinding.btnNdkDialogClose.setText("CANCEL");
        if (z) {
            dialogNdkInstallerBinding.tvNdkDialogStatusBadge.setText("Installed & Ready (NDK sysroot + Clang)");
            dialogNdkInstallerBinding.containerNdkInstallOptions.setVisibility(8);
            dialogNdkInstallerBinding.btnNdkOnlineInstall.setVisibility(8);
            dialogNdkInstallerBinding.btnNdkUninstall.setVisibility(0);
            return;
        }
        dialogNdkInstallerBinding.tvNdkDialogStatusBadge.setText("Install/Uninstall native code (C/C++) build support!");
        dialogNdkInstallerBinding.containerNdkInstallOptions.setVisibility(0);
        dialogNdkInstallerBinding.btnNdkOnlineInstall.setVisibility(0);
        dialogNdkInstallerBinding.btnNdkUninstall.setVisibility(8);
    }

    private void showNdkInstallerDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.ndkInstallerDialog;
        if (dialog != null && dialog.isShowing()) {
            this.ndkInstallerDialog.dismiss();
        }
        final ProjectState projectState = ProjectState.get();
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.ndkInstallerDialog = dialog2;
        dialog2.requestWindowFeature(1);
        final DialogNdkInstallerBinding dialogNdkInstallerBindingInflate = DialogNdkInstallerBinding.inflate(LayoutInflater.from(this));
        this.ndkInstallerDialog.setContentView(dialogNdkInstallerBindingInflate.getRoot());
        applyDialogWidth(this.ndkInstallerDialog);
        NdkCompiler.NdkStatus ndkStatusCheckStatus = NdkCompiler.checkStatus(this);
        dialogNdkInstallerBindingInflate.tvNdkDialogTitle.setText("Manage Native code support");
        updateNdkDialogState(dialogNdkInstallerBindingInflate, ndkStatusCheckStatus.ready);
        if (projectState.ndkLocalPath != null && !projectState.ndkLocalPath.isEmpty()) {
            dialogNdkInstallerBindingInflate.etNdkLocalPath.setText(projectState.ndkLocalPath);
            dialogNdkInstallerBindingInflate.etNdkLocalPath.setSelection(dialogNdkInstallerBindingInflate.etNdkLocalPath.getText().length());
        }
        UiAnimator.attachPressAnimation(dialogNdkInstallerBindingInflate.btnNdkLocalInstall, dialogNdkInstallerBindingInflate.btnNdkBrowseFile);
        dialogNdkInstallerBindingInflate.btnNdkOnlineInstall.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNdkInstallerDialog$19(dialogNdkInstallerBindingInflate, view);
            }
        });
        dialogNdkInstallerBindingInflate.btnNdkBrowseFile.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNdkInstallerDialog$21(dialogNdkInstallerBindingInflate, projectState, view);
            }
        });
        dialogNdkInstallerBindingInflate.btnNdkLocalInstall.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNdkInstallerDialog$22(dialogNdkInstallerBindingInflate, projectState, view);
            }
        });
        dialogNdkInstallerBindingInflate.btnNdkUninstall.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNdkInstallerDialog$23(view);
            }
        });
        dialogNdkInstallerBindingInflate.btnNdkDialogClose.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showNdkInstallerDialog$24(view);
            }
        });
        this.ndkInstallerDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkInstallerDialog$19(DialogNdkInstallerBinding dialogNdkInstallerBinding, View view) {
        if (this.isNdkInstalling) {
            return;
        }
        startLiveNdkInstallation(dialogNdkInstallerBinding, true, NdkCompiler.getOnlineNdkUrlNative(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkInstallerDialog$21(final DialogNdkInstallerBinding dialogNdkInstallerBinding, final ProjectState projectState, View view) {
        File file;
        if (this.isNdkInstalling) {
            return;
        }
        if (!StorageHelper.hasStoragePermission(this)) {
            StorageHelper.requestStoragePermission(this);
            return;
        }
        FileManagerDialog fileManagerDialog = this.ndkFilePickerDialog;
        if (fileManagerDialog != null) {
            fileManagerDialog.dismiss();
        }
        String strTrim = dialogNdkInstallerBinding.etNdkLocalPath.getText() != null ? dialogNdkInstallerBinding.etNdkLocalPath.getText().toString().trim() : "";
        if (strTrim.isEmpty()) {
            file = null;
        } else {
            file = new File(strTrim);
            if (!file.isDirectory()) {
                file = file.getParentFile();
            }
        }
        FileManagerDialog fileManagerDialog2 = new FileManagerDialog(this, file, 1, new FileManagerDialog.OnApkSelectedListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda5
            @Override // com.dex2c.plus.ui.FileManagerDialog.OnApkSelectedListener
            public final void onApkSelected(File file2) {
                this.f$0.lambda$showNdkInstallerDialog$20(dialogNdkInstallerBinding, projectState, file2);
            }
        });
        this.ndkFilePickerDialog = fileManagerDialog2;
        fileManagerDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkInstallerDialog$20(DialogNdkInstallerBinding dialogNdkInstallerBinding, ProjectState projectState, File file) {
        if (file == null || !file.exists()) {
            return;
        }
        String absolutePath = file.getAbsolutePath();
        dialogNdkInstallerBinding.etNdkLocalPath.setText(absolutePath);
        dialogNdkInstallerBinding.etNdkLocalPath.setSelection(absolutePath.length());
        projectState.ndkLocalPath = absolutePath;
        projectState.savePrefs(this);
        startLiveNdkInstallation(dialogNdkInstallerBinding, false, null, file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkInstallerDialog$22(DialogNdkInstallerBinding dialogNdkInstallerBinding, ProjectState projectState, View view) {
        if (this.isNdkInstalling) {
            return;
        }
        String strTrim = dialogNdkInstallerBinding.etNdkLocalPath.getText() != null ? dialogNdkInstallerBinding.etNdkLocalPath.getText().toString().trim() : "";
        if (strTrim.isEmpty()) {
            Toast.makeText(this, "Select NDK zip", 0).show();
            return;
        }
        File file = new File(strTrim);
        if (!file.exists() || !file.isFile()) {
            Toast.makeText(this, "File not found", 0).show();
            return;
        }
        projectState.ndkLocalPath = strTrim;
        projectState.savePrefs(this);
        startLiveNdkInstallation(dialogNdkInstallerBinding, false, null, file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkInstallerDialog$23(View view) {
        if (this.isNdkInstalling) {
            return;
        }
        StorageHelper.deleteRecursive(new File(getFilesDir(), "mini_ndk"));
        refreshNdkStatusSubtitle();
        this.ndkInstallerDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNdkInstallerDialog$24(View view) {
        if (this.isNdkInstalling) {
            NdkCompiler.cancelActiveProcesses();
            this.isNdkInstalling = false;
        }
        this.ndkInstallerDialog.dismiss();
    }

    private void startLiveNdkInstallation(final DialogNdkInstallerBinding dialogNdkInstallerBinding, final boolean z, final String str, final File file) {
        this.isNdkInstalling = true;
        NdkCompiler.resetCancellation();
        this.ndkInstallerDialog.setCancelable(false);
        this.ndkInstallerDialog.setCanceledOnTouchOutside(false);
        dialogNdkInstallerBinding.containerNdkInstallOptions.setVisibility(8);
        dialogNdkInstallerBinding.btnNdkOnlineInstall.setVisibility(8);
        dialogNdkInstallerBinding.btnNdkUninstall.setVisibility(8);
        dialogNdkInstallerBinding.containerNdkLiveProgress.setVisibility(0);
        dialogNdkInstallerBinding.tvNdkLiveStage.setText(z ? "Downloading..." : "Installing...");
        dialogNdkInstallerBinding.tvNdkLivePercent.setText("0%");
        dialogNdkInstallerBinding.pbNdkLiveProgress.setIndeterminate(false);
        dialogNdkInstallerBinding.pbNdkLiveProgress.setProgress(0);
        dialogNdkInstallerBinding.tvNdkLiveDetail.setText(z ? "0%" : file.getName());
        dialogNdkInstallerBinding.btnNdkDialogClose.setText("CANCEL");
        final Context applicationContext = getApplicationContext();
        new Thread(new Runnable() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$startLiveNdkInstallation$28(dialogNdkInstallerBinding, z, applicationContext, str, file);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLiveNdkInstallation$28(final DialogNdkInstallerBinding dialogNdkInstallerBinding, final boolean z, Context context, String str, File file) throws Throwable {
        final boolean zInstallFromLocalFile;
        NdkCompiler.InstallProgressListener installProgressListener = new NdkCompiler.InstallProgressListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda3
            @Override // com.dex2c.plus.engine.NdkCompiler.InstallProgressListener
            public final void onProgress(String str2, String str3, int i, boolean z2) {
                this.f$0.lambda$startLiveNdkInstallation$26(dialogNdkInstallerBinding, str2, str3, i, z2);
            }
        };
        if (z) {
            zInstallFromLocalFile = NdkCompiler.downloadAndInstallOnline(context, str, installProgressListener);
        } else {
            zInstallFromLocalFile = NdkCompiler.installFromLocalFile(context, file, installProgressListener);
        }
        runOnUiThread(new Runnable() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startLiveNdkInstallation$27(zInstallFromLocalFile, dialogNdkInstallerBinding, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLiveNdkInstallation$26(final DialogNdkInstallerBinding dialogNdkInstallerBinding, final String str, final String str2, final int i, final boolean z) {
        runOnUiThread(new Runnable() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startLiveNdkInstallation$25(dialogNdkInstallerBinding, str, str2, z, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLiveNdkInstallation$25(DialogNdkInstallerBinding dialogNdkInstallerBinding, String str, String str2, boolean z, int i) {
        if (this.binding == null || isFinishing() || isDestroyed() || !this.ndkInstallerDialog.isShowing()) {
            return;
        }
        dialogNdkInstallerBinding.tvNdkLiveStage.setText(str);
        dialogNdkInstallerBinding.tvNdkLiveDetail.setText(str2);
        dialogNdkInstallerBinding.pbNdkLiveProgress.setIndeterminate(z);
        if (!z) {
            dialogNdkInstallerBinding.pbNdkLiveProgress.setProgress(i);
            dialogNdkInstallerBinding.tvNdkLivePercent.setText(i + "%");
            return;
        }
        dialogNdkInstallerBinding.tvNdkLivePercent.setText("...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLiveNdkInstallation$27(boolean z, DialogNdkInstallerBinding dialogNdkInstallerBinding, boolean z2) {
        this.isNdkInstalling = false;
        if (this.binding == null || isFinishing() || isDestroyed()) {
            return;
        }
        refreshNdkStatusSubtitle();
        Dialog dialog = this.ndkInstallerDialog;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.ndkInstallerDialog.setCancelable(true);
        this.ndkInstallerDialog.setCanceledOnTouchOutside(true);
        NdkCompiler.NdkStatus ndkStatusCheckStatus = NdkCompiler.checkStatus(this);
        if (z && ndkStatusCheckStatus.ready) {
            this.ndkInstallerDialog.dismiss();
        } else {
            updateNdkDialogState(dialogNdkInstallerBinding, ndkStatusCheckStatus.ready);
            Toast.makeText(this, z2 ? "Download failed" : "Install failed", 0).show();
        }
    }

    private void refreshCustomSettingsLabels() {
        if (this.binding == null) {
            return;
        }
        ProjectState projectState = ProjectState.get();
        this.binding.tvOutputSelectionValue.setText(projectState.getOutputSelectionSummary());
        this.binding.tvCustomLibNameValue.setText(projectState.customLibName);
        this.binding.tvCustomLoaderClassValue.setText(projectState.customLoaderClass);
        this.binding.tvAbisConfigValue.setText(projectState.getAbisSummary());
        this.binding.tvMethodTypesConfigValue.setText(projectState.getMethodTypesSummary());
    }

    private void showCustomLibNameDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.customInputDialog;
        if (dialog != null && dialog.isShowing()) {
            this.customInputDialog.dismiss();
        }
        final ProjectState projectState = ProjectState.get();
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.customInputDialog = dialog2;
        dialog2.requestWindowFeature(1);
        final DialogCustomInputBinding dialogCustomInputBindingInflate = DialogCustomInputBinding.inflate(LayoutInflater.from(this));
        this.customInputDialog.setContentView(dialogCustomInputBindingInflate.getRoot());
        applyDialogWidth(this.customInputDialog);
        dialogCustomInputBindingInflate.tvCustomInputTitle.setText("Custom library name");
        dialogCustomInputBindingInflate.etCustomInputValue.setHint("Enter library name (default: native-lib)");
        dialogCustomInputBindingInflate.etCustomInputValue.setText(projectState.customLibName);
        dialogCustomInputBindingInflate.etCustomInputValue.setSelection(dialogCustomInputBindingInflate.etCustomInputValue.getText().length());
        dialogCustomInputBindingInflate.btnCustomInputCancel.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomLibNameDialog$29(view);
            }
        });
        dialogCustomInputBindingInflate.btnCustomInputOk.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomLibNameDialog$30(dialogCustomInputBindingInflate, projectState, view);
            }
        });
        this.customInputDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomLibNameDialog$29(View view) {
        this.customInputDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomLibNameDialog$30(DialogCustomInputBinding dialogCustomInputBinding, ProjectState projectState, View view) {
        projectState.customLibName = ProjectState.sanitizeLibraryName(dialogCustomInputBinding.etCustomInputValue.getText() != null ? dialogCustomInputBinding.etCustomInputValue.getText().toString() : "");
        projectState.savePrefs(this);
        refreshCustomSettingsLabels();
        this.customInputDialog.dismiss();
    }

    private void showCustomLoaderClassDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.customInputDialog;
        if (dialog != null && dialog.isShowing()) {
            this.customInputDialog.dismiss();
        }
        final ProjectState projectState = ProjectState.get();
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.customInputDialog = dialog2;
        dialog2.requestWindowFeature(1);
        final DialogCustomInputBinding dialogCustomInputBindingInflate = DialogCustomInputBinding.inflate(LayoutInflater.from(this));
        this.customInputDialog.setContentView(dialogCustomInputBindingInflate.getRoot());
        applyDialogWidth(this.customInputDialog);
        dialogCustomInputBindingInflate.tvCustomInputTitle.setText("Custom loader class name");
        dialogCustomInputBindingInflate.etCustomInputValue.setHint("Enter loader class name (default: Loader)");
        dialogCustomInputBindingInflate.etCustomInputValue.setText(projectState.customLoaderClass);
        dialogCustomInputBindingInflate.etCustomInputValue.setSelection(dialogCustomInputBindingInflate.etCustomInputValue.getText().length());
        dialogCustomInputBindingInflate.btnCustomInputCancel.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomLoaderClassDialog$31(view);
            }
        });
        dialogCustomInputBindingInflate.btnCustomInputOk.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda50
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomLoaderClassDialog$32(dialogCustomInputBindingInflate, projectState, view);
            }
        });
        this.customInputDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomLoaderClassDialog$31(View view) {
        this.customInputDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomLoaderClassDialog$32(DialogCustomInputBinding dialogCustomInputBinding, ProjectState projectState, View view) {
        projectState.customLoaderClass = ProjectState.sanitizeLoaderClassName(dialogCustomInputBinding.etCustomInputValue.getText() != null ? dialogCustomInputBinding.etCustomInputValue.getText().toString() : "");
        projectState.savePrefs(this);
        refreshCustomSettingsLabels();
        this.customInputDialog.dismiss();
    }

    private void showAbisConfigDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.abisDialog;
        if (dialog != null && dialog.isShowing()) {
            this.abisDialog.dismiss();
        }
        final ProjectState projectState = ProjectState.get();
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.abisDialog = dialog2;
        dialog2.requestWindowFeature(1);
        final DialogAbisConfigBinding dialogAbisConfigBindingInflate = DialogAbisConfigBinding.inflate(LayoutInflater.from(this));
        this.abisDialog.setContentView(dialogAbisConfigBindingInflate.getRoot());
        applyDialogWidth(this.abisDialog);
        dialogAbisConfigBindingInflate.swAbiArm32.setChecked(projectState.arm32);
        dialogAbisConfigBindingInflate.swAbiArm64.setChecked(projectState.arm64);
        dialogAbisConfigBindingInflate.swAbiX86.setChecked(projectState.x86);
        dialogAbisConfigBindingInflate.swAbiX8664.setChecked(projectState.x86_64);
        dialogAbisConfigBindingInflate.rowAbiArm32.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogAbisConfigBindingInflate.swAbiArm32.toggle();
            }
        });
        dialogAbisConfigBindingInflate.rowAbiArm64.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogAbisConfigBindingInflate.swAbiArm64.toggle();
            }
        });
        dialogAbisConfigBindingInflate.rowAbiX86.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogAbisConfigBindingInflate.swAbiX86.toggle();
            }
        });
        dialogAbisConfigBindingInflate.rowAbiX8664.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogAbisConfigBindingInflate.swAbiX8664.toggle();
            }
        });
        dialogAbisConfigBindingInflate.btnAbisCancel.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showAbisConfigDialog$37(view);
            }
        });
        dialogAbisConfigBindingInflate.btnAbisOk.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showAbisConfigDialog$38(dialogAbisConfigBindingInflate, projectState, view);
            }
        });
        this.abisDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAbisConfigDialog$37(View view) {
        this.abisDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAbisConfigDialog$38(DialogAbisConfigBinding dialogAbisConfigBinding, ProjectState projectState, View view) {
        boolean zIsChecked = dialogAbisConfigBinding.swAbiArm32.isChecked();
        boolean zIsChecked2 = dialogAbisConfigBinding.swAbiArm64.isChecked();
        boolean zIsChecked3 = dialogAbisConfigBinding.swAbiX86.isChecked();
        boolean zIsChecked4 = dialogAbisConfigBinding.swAbiX8664.isChecked();
        if (!zIsChecked && !zIsChecked2 && !zIsChecked3 && !zIsChecked4) {
            zIsChecked2 = true;
        }
        projectState.arm32 = zIsChecked;
        projectState.arm64 = zIsChecked2;
        projectState.x86 = zIsChecked3;
        projectState.x86_64 = zIsChecked4;
        projectState.savePrefs(this);
        refreshCustomSettingsLabels();
        this.abisDialog.dismiss();
    }

    private void showMethodTypesConfigDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.methodTypesDialog;
        if (dialog != null && dialog.isShowing()) {
            this.methodTypesDialog.dismiss();
        }
        final ProjectState projectState = ProjectState.get();
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.methodTypesDialog = dialog2;
        dialog2.requestWindowFeature(1);
        final DialogMethodTypesBinding dialogMethodTypesBindingInflate = DialogMethodTypesBinding.inflate(LayoutInflater.from(this));
        this.methodTypesDialog.setContentView(dialogMethodTypesBindingInflate.getRoot());
        applyDialogWidth(this.methodTypesDialog);
        dialogMethodTypesBindingInflate.swDialogTypeSynthetic.setChecked(projectState.typeSynthetic);
        dialogMethodTypesBindingInflate.swDialogTypeBridge.setChecked(projectState.typeBridge);
        dialogMethodTypesBindingInflate.swDialogTypeStatic.setChecked(projectState.typeStatic);
        dialogMethodTypesBindingInflate.swDialogTypeVirtual.setChecked(projectState.typeVirtual);
        dialogMethodTypesBindingInflate.swDialogTypePrivate.setChecked(projectState.typePrivate);
        dialogMethodTypesBindingInflate.swDialogTypeSynchronized.setChecked(projectState.typeSynchronized);
        dialogMethodTypesBindingInflate.swDialogTypeVarargs.setChecked(projectState.typeVarargs);
        dialogMethodTypesBindingInflate.rowDialogTypeSynthetic.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogMethodTypesBindingInflate.swDialogTypeSynthetic.toggle();
            }
        });
        dialogMethodTypesBindingInflate.rowDialogTypeBridge.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogMethodTypesBindingInflate.swDialogTypeBridge.toggle();
            }
        });
        dialogMethodTypesBindingInflate.rowDialogTypeStatic.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogMethodTypesBindingInflate.swDialogTypeStatic.toggle();
            }
        });
        dialogMethodTypesBindingInflate.rowDialogTypeVirtual.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogMethodTypesBindingInflate.swDialogTypeVirtual.toggle();
            }
        });
        dialogMethodTypesBindingInflate.rowDialogTypePrivate.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogMethodTypesBindingInflate.swDialogTypePrivate.toggle();
            }
        });
        dialogMethodTypesBindingInflate.rowDialogTypeSynchronized.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogMethodTypesBindingInflate.swDialogTypeSynchronized.toggle();
            }
        });
        dialogMethodTypesBindingInflate.rowDialogTypeVarargs.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogMethodTypesBindingInflate.swDialogTypeVarargs.toggle();
            }
        });
        dialogMethodTypesBindingInflate.btnMethodTypesCancel.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMethodTypesConfigDialog$46(view);
            }
        });
        dialogMethodTypesBindingInflate.btnMethodTypesOk.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showMethodTypesConfigDialog$47(projectState, dialogMethodTypesBindingInflate, view);
            }
        });
        this.methodTypesDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMethodTypesConfigDialog$46(View view) {
        this.methodTypesDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMethodTypesConfigDialog$47(ProjectState projectState, DialogMethodTypesBinding dialogMethodTypesBinding, View view) {
        projectState.typeSynthetic = dialogMethodTypesBinding.swDialogTypeSynthetic.isChecked();
        projectState.typeBridge = dialogMethodTypesBinding.swDialogTypeBridge.isChecked();
        projectState.typeStatic = dialogMethodTypesBinding.swDialogTypeStatic.isChecked();
        projectState.typeVirtual = dialogMethodTypesBinding.swDialogTypeVirtual.isChecked();
        projectState.typePrivate = dialogMethodTypesBinding.swDialogTypePrivate.isChecked();
        projectState.typeSynchronized = dialogMethodTypesBinding.swDialogTypeSynchronized.isChecked();
        projectState.typeVarargs = dialogMethodTypesBinding.swDialogTypeVarargs.isChecked();
        projectState.savePrefs(this);
        refreshCustomSettingsLabels();
        this.methodTypesDialog.dismiss();
    }

    private void applyDialogWidth(Dialog dialog) {
        if (dialog.getWindow() != null) {
            dialog.getWindow().setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.85f), -2);
        }
    }

    private void updateThemeLabel() {
        if (this.binding == null) {
            return;
        }
        int themeMode = ProjectState.getThemeMode(this);
        if (themeMode == 0) {
            this.binding.tvThemeCurrentValue.setText("Light");
        } else if (themeMode == 1) {
            this.binding.tvThemeCurrentValue.setText("Dark");
        } else {
            this.binding.tvThemeCurrentValue.setText("System Default");
        }
    }

    private void showCustomThemeDialog() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        Dialog dialog = this.themeDialog;
        if (dialog != null && dialog.isShowing()) {
            this.themeDialog.dismiss();
        }
        Dialog dialog2 = new Dialog(this, R.style.SeamlessDialogTheme);
        this.themeDialog = dialog2;
        dialog2.requestWindowFeature(1);
        DialogThemePickerBinding dialogThemePickerBindingInflate = DialogThemePickerBinding.inflate(LayoutInflater.from(this));
        this.themeDialog.setContentView(dialogThemePickerBindingInflate.getRoot());
        applyDialogWidth(this.themeDialog);
        int themeMode = ProjectState.getThemeMode(this);
        if (themeMode == 0) {
            dialogThemePickerBindingInflate.rbThemeLight.setChecked(true);
        } else if (themeMode == 1) {
            dialogThemePickerBindingInflate.rbThemeDark.setChecked(true);
        } else {
            dialogThemePickerBindingInflate.rbThemeSystem.setChecked(true);
        }
        dialogThemePickerBindingInflate.rbThemeLight.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomThemeDialog$48(view);
            }
        });
        dialogThemePickerBindingInflate.rbThemeDark.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomThemeDialog$49(view);
            }
        });
        dialogThemePickerBindingInflate.rbThemeSystem.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomThemeDialog$50(view);
            }
        });
        dialogThemePickerBindingInflate.btnThemeCancel.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.SettingsActivity$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCustomThemeDialog$51(view);
            }
        });
        this.themeDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomThemeDialog$48(View view) {
        applyThemeSelection(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomThemeDialog$49(View view) {
        applyThemeSelection(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomThemeDialog$50(View view) {
        applyThemeSelection(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomThemeDialog$51(View view) {
        this.themeDialog.dismiss();
    }

    private void applyThemeSelection(int i) {
        Dialog dialog = this.themeDialog;
        if (dialog != null && dialog.isShowing()) {
            this.themeDialog.dismiss();
        }
        ProjectState.setThemeMode(this, i);
        updateThemeLabel();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Dialog dialog = this.themeDialog;
        if (dialog != null && dialog.isShowing()) {
            this.themeDialog.dismiss();
        }
        Dialog dialog2 = this.outputSelectionDialog;
        if (dialog2 != null && dialog2.isShowing()) {
            this.outputSelectionDialog.dismiss();
        }
        Dialog dialog3 = this.customInputDialog;
        if (dialog3 != null && dialog3.isShowing()) {
            this.customInputDialog.dismiss();
        }
        Dialog dialog4 = this.abisDialog;
        if (dialog4 != null && dialog4.isShowing()) {
            this.abisDialog.dismiss();
        }
        Dialog dialog5 = this.methodTypesDialog;
        if (dialog5 != null && dialog5.isShowing()) {
            this.methodTypesDialog.dismiss();
        }
        Dialog dialog6 = this.ndkInstallerDialog;
        if (dialog6 != null && dialog6.isShowing()) {
            this.ndkInstallerDialog.dismiss();
        }
        FileManagerDialog fileManagerDialog = this.ndkFilePickerDialog;
        if (fileManagerDialog != null) {
            fileManagerDialog.dismiss();
        }
        this.themeDialog = null;
        this.outputSelectionDialog = null;
        this.customInputDialog = null;
        this.abisDialog = null;
        this.methodTypesDialog = null;
        this.ndkInstallerDialog = null;
        this.ndkFilePickerDialog = null;
        this.binding = null;
        super.onDestroy();
    }
}
