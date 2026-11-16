.class public Lcom/dex2c/plus/ui/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# instance fields
.field private abisDialog:Landroid/app/Dialog;

.field private binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

.field private customInputDialog:Landroid/app/Dialog;

.field private volatile isNdkInstalling:Z

.field private methodTypesDialog:Landroid/app/Dialog;

.field private ndkFilePickerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

.field private ndkInstallerDialog:Landroid/app/Dialog;

.field private outputSelectionDialog:Landroid/app/Dialog;

.field private themeDialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$1VtAJ5euwlsSq_C05uW7G4E-rNc(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomThemeDialog$48(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2V-uVnkTi1HjTkPswmsVhGQBDSg(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4-KSXLl1lRve1r3DC2w2xT-Vv5I(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4UQB91BtdIsTF4DCUce2ACD2kO8(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4qxw_gKyKZL3hDDTbSpP6sXDJqc(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6P8cF9el4UrSsJdb_NttLPr_32o(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showNdkInstallerDialog$19(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8CS5I5zjTTXCUwn4zZzoJaClMjw(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AvJl9jEoEG5x2M2IvK1UmTilzEc(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showNdkInstallerDialog$22(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B6uBFIEdJjUzjc4bxdSaI1SE_3k(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showMethodTypesConfigDialog$46(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BRIxSlko9XDdizVJp1SBLOmcaNw(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$15(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$DR7iy2-CUMc1CoXaDZc-ry8qM8k(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showAbisConfigDialog$38(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-RrhF5UEKg6sb84BkTL4OfUqoY(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EOllKF6EY2ro7eCZuW8X0oup6fc(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ETGGXv_ndxI17Wo3peID2xOTQyw(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomLoaderClassDialog$31(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVNJTjzhNieXx5KfsCy61oJ5PT0(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KLbO_2Qg5FaRn5JqBUUJ4Q7opeI(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MbUxPgXiVOGVpdh0HdYla9pQ7p8(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomThemeDialog$49(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nl0Ch4AV3IpT08aCumIg3ufD_eQ(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showNdkInstallerDialog$20(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P0mmLCZD5bgYSTxNcyqWDDgcsiw(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QYIQ2qm9m1FSGhi9g0IsYQdam8Y(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showOutputSelectionDialog$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SKXYOF2C5Z_m1NT-dLMzaiXsv7A(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showMethodTypesConfigDialog$47(Lcom/dex2c/plus/model/ProjectState;Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SLL2ncNMmGTz0CVApQwz5vs6DR0(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$startLiveNdkInstallation$25(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$TiBW2b0_37tCebr7BW0xpfWVJ_I(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V3BjGUQxiWlPBhCY4ZHVQtW101Q(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showNdkInstallerDialog$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xs_VoZnCj8oOhm7cst1cMUxbMuQ(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomLibNameDialog$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xv1raGYjhbu32VM_IVWYAi-UvKI(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomLoaderClassDialog$32(Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YcfcutnG2qaQbwi8XpLiu0O-pzI(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomThemeDialog$50(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YnslUlNF9BxoZkIwPFPEH9gS7E4(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$12(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHTe3n-N1rF8MHrUv1KcEpWSHWI(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showAbisConfigDialog$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjXgk0ObwA_4aIkZEI9-faxYoPk(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$14(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eGSixQs4nHs0AjOwPm-ttcxfeuw(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$13(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$emAghyPvwx5s9VSlRhNJ8B-R5xY(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showOutputSelectionDialog$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$etS_2TEUDrAJATXFA0eLAv0UbN0(Lcom/dex2c/plus/ui/SettingsActivity;ZLcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$startLiveNdkInstallation$27(ZLcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezPr2MpaplHVWw3LWsqPnsUG3cI(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showOutputSelectionDialog$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fV9ufrX3-HyduGKQN5jfEbvAH5M(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$onCreate$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iZuP7GItm9AL-GaqLqfo8jBpERY(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomLibNameDialog$30(Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$papsu4rfBPrmtOJ53I7m1LVXz2w(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showNdkInstallerDialog$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uMiuWfYkYxrpSLIYAJu0uuDYdto(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$startLiveNdkInstallation$26(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhOH2b8kih56C3B0L-n8MOfEQZg(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showNdkInstallerDialog$21(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z3ydFF6_SSP9J887aqpUsBWnPQM(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLandroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$startLiveNdkInstallation$28(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLandroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z9SnS75No053TchBG_F0ZtJSzns(Lcom/dex2c/plus/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->lambda$showCustomThemeDialog$51(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    return-void
.end method

.method private applyDialogWidth(Landroid/app/Dialog;)V
    .locals 2

    .line 490
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 492
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method private applyOutputSelection(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 128
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 129
    iput p1, v0, Lcom/dex2c/plus/model/ProjectState;->outputLocationMode:I

    .line 130
    invoke-virtual {v0, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshCustomSettingsLabels()V

    return-void
.end method

.method private applyThemeSelection(I)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 544
    :cond_0
    invoke-static {p0, p1}, Lcom/dex2c/plus/model/ProjectState;->setThemeMode(Landroid/content/Context;I)V

    .line 545
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->updateThemeLabel()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->showCustomThemeDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$10(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swEnvEncryption:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method private synthetic lambda$onCreate$11(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swRewriteDex:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method private synthetic lambda$onCreate$12(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 81
    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->parallelBuild:Z

    .line 82
    invoke-virtual {p1, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$13(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 85
    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->registerNatives:Z

    .line 86
    invoke-virtual {p1, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$14(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 89
    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->envEncryption:Z

    .line 90
    invoke-virtual {p1, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$15(Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 93
    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->rewriteDex:Z

    .line 94
    invoke-virtual {p1, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->showNdkInstallerDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->showOutputSelectionDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$4(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swParallelBuild:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->showCustomLibNameDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$6(Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->showCustomLoaderClassDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$7(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->showAbisConfigDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$8(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->showMethodTypesConfigDialog()V

    return-void
.end method

.method private synthetic lambda$onCreate$9(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swRegisterNatives:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showAbisConfigDialog$33(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Landroid/view/View;)V
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm32:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showAbisConfigDialog$34(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Landroid/view/View;)V
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm64:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showAbisConfigDialog$35(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Landroid/view/View;)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX86:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showAbisConfigDialog$36(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Landroid/view/View;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX8664:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method private synthetic lambda$showAbisConfigDialog$37(Landroid/view/View;)V
    .locals 0

    .line 420
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showAbisConfigDialog$38(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 2

    .line 422
    iget-object p3, p1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm32:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    .line 423
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm64:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    .line 424
    iget-object v1, p1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX86:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    .line 425
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX8664:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p1

    if-nez p3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 431
    :cond_0
    iput-boolean p3, p2, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    .line 432
    iput-boolean v0, p2, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    .line 433
    iput-boolean v1, p2, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    .line 434
    iput-boolean p1, p2, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    .line 435
    invoke-virtual {p2, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    .line 436
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshCustomSettingsLabels()V

    .line 437
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCustomLibNameDialog$29(Landroid/view/View;)V
    .locals 0

    .line 353
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCustomLibNameDialog$30(Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 0

    .line 355
    iget-object p3, p1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 356
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 357
    :goto_0
    invoke-static {p1}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    .line 358
    invoke-virtual {p2, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    .line 359
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshCustomSettingsLabels()V

    .line 360
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCustomLoaderClassDialog$31(Landroid/view/View;)V
    .locals 0

    .line 384
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCustomLoaderClassDialog$32(Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 0

    .line 386
    iget-object p3, p1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 387
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 388
    :goto_0
    invoke-static {p1}, Lcom/dex2c/plus/model/ProjectState;->sanitizeLoaderClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    .line 389
    invoke-virtual {p2, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    .line 390
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshCustomSettingsLabels()V

    .line 391
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCustomThemeDialog$48(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 532
    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->applyThemeSelection(I)V

    return-void
.end method

.method private synthetic lambda$showCustomThemeDialog$49(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 533
    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->applyThemeSelection(I)V

    return-void
.end method

.method private synthetic lambda$showCustomThemeDialog$50(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 534
    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->applyThemeSelection(I)V

    return-void
.end method

.method private synthetic lambda$showCustomThemeDialog$51(Landroid/view/View;)V
    .locals 0

    .line 535
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showMethodTypesConfigDialog$39(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynthetic:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showMethodTypesConfigDialog$40(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeBridge:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showMethodTypesConfigDialog$41(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeStatic:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showMethodTypesConfigDialog$42(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVirtual:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showMethodTypesConfigDialog$43(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypePrivate:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showMethodTypesConfigDialog$44(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynchronized:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method static synthetic lambda$showMethodTypesConfigDialog$45(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVarargs:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method

.method private synthetic lambda$showMethodTypesConfigDialog$46(Landroid/view/View;)V
    .locals 0

    .line 472
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showMethodTypesConfigDialog$47(Lcom/dex2c/plus/model/ProjectState;Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;Landroid/view/View;)V
    .locals 0

    .line 474
    iget-object p3, p2, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynthetic:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    .line 475
    iget-object p3, p2, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeBridge:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    .line 476
    iget-object p3, p2, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeStatic:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    .line 477
    iget-object p3, p2, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVirtual:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    .line 478
    iget-object p3, p2, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypePrivate:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    .line 479
    iget-object p3, p2, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynchronized:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p3

    iput-boolean p3, p1, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    .line 480
    iget-object p2, p2, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVarargs:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p2

    iput-boolean p2, p1, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    .line 481
    invoke-virtual {p1, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    .line 482
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshCustomSettingsLabels()V

    .line 483
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showNdkInstallerDialog$19(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Landroid/view/View;)V
    .locals 2

    .line 183
    iget-boolean p2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    if-eqz p2, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->getOnlineNdkUrlNative()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/dex2c/plus/ui/SettingsActivity;->startLiveNdkInstallation(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLjava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$showNdkInstallerDialog$20(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Ljava/io/File;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 208
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 212
    iput-object v0, p2, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    .line 213
    invoke-virtual {p2, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dex2c/plus/ui/SettingsActivity;->startLiveNdkInstallation(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLjava/lang/String;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showNdkInstallerDialog$21(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 2

    .line 188
    iget-boolean p3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    if-eqz p3, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->hasStoragePermission(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 190
    invoke-static {p0}, Lcom/dex2c/plus/StorageHelper;->requestStoragePermission(Landroid/app/Activity;)V

    return-void

    .line 193
    :cond_1
    iget-object p3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkFilePickerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

    if-eqz p3, :cond_2

    .line 194
    invoke-virtual {p3}, Lcom/dex2c/plus/ui/FileManagerDialog;->dismiss()V

    .line 197
    :cond_2
    iget-object p3, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 198
    iget-object p3, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    const-string p3, ""

    .line 199
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 203
    :goto_1
    new-instance p3, Lcom/dex2c/plus/ui/FileManagerDialog;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;)V

    const/4 p1, 0x1

    invoke-direct {p3, p0, v0, p1, v1}, Lcom/dex2c/plus/ui/FileManagerDialog;-><init>(Landroid/content/Context;Ljava/io/File;ILcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;)V

    iput-object p3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkFilePickerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

    .line 218
    invoke-virtual {p3}, Lcom/dex2c/plus/ui/FileManagerDialog;->show()V

    return-void
.end method

.method private synthetic lambda$showNdkInstallerDialog$22(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Landroid/view/View;)V
    .locals 3

    .line 222
    iget-boolean p3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    if-eqz p3, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object p3, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 224
    iget-object p3, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    .line 225
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 226
    const-string p1, "Select NDK zip"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 229
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 234
    :cond_3
    iput-object p3, p2, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    .line 235
    invoke-virtual {p2, p0}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 236
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/dex2c/plus/ui/SettingsActivity;->startLiveNdkInstallation(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLjava/lang/String;Ljava/io/File;)V

    return-void

    .line 231
    :cond_4
    :goto_1
    const-string p1, "File not found"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showNdkInstallerDialog$23(Landroid/view/View;)V
    .locals 2

    .line 240
    iget-boolean p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    if-eqz p1, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "mini_ndk"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Lcom/dex2c/plus/StorageHelper;->deleteRecursive(Ljava/io/File;)V

    .line 243
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshNdkStatusSubtitle()V

    .line 244
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showNdkInstallerDialog$24(Landroid/view/View;)V
    .locals 0

    .line 248
    iget-boolean p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    if-eqz p1, :cond_0

    .line 249
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->cancelActiveProcesses()V

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showOutputSelectionDialog$16(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->applyOutputSelection(I)V

    return-void
.end method

.method private synthetic lambda$showOutputSelectionDialog$17(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 118
    invoke-direct {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->applyOutputSelection(I)V

    return-void
.end method

.method private synthetic lambda$showOutputSelectionDialog$18(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$startLiveNdkInstallation$25(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLiveStage:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLiveDetail:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->pbNdkLiveProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-nez p4, :cond_1

    .line 287
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->pbNdkLiveProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 288
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLivePercent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 290
    :cond_1
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLivePercent:Landroid/widget/TextView;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startLiveNdkInstallation$26(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    .line 281
    new-instance v0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcom/dex2c/plus/ui/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startLiveNdkInstallation$27(ZLcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    .line 304
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshNdkStatusSubtitle()V

    .line 307
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 309
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 311
    invoke-static {p0}, Lcom/dex2c/plus/engine/NdkCompiler;->checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 312
    iget-boolean p1, v1, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    if-eqz p1, :cond_1

    .line 313
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 315
    :cond_1
    iget-boolean p1, v1, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    invoke-direct {p0, p2, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->updateNdkDialogState(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Z)V

    if-eqz p3, :cond_2

    .line 317
    const-string p1, "Download failed"

    goto :goto_0

    :cond_2
    const-string p1, "Install failed"

    .line 316
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$startLiveNdkInstallation$28(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLandroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 280
    new-instance v0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;)V

    if-eqz p2, :cond_0

    .line 297
    invoke-static {p3, p4, v0}, Lcom/dex2c/plus/engine/NdkCompiler;->downloadAndInstallOnline(Landroid/content/Context;Ljava/lang/String;Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;)Z

    move-result p3

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {p3, p5, v0}, Lcom/dex2c/plus/engine/NdkCompiler;->installFromLocalFile(Landroid/content/Context;Ljava/io/File;Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;)Z

    move-result p3

    .line 302
    :goto_0
    new-instance p4, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p3, p1, p2}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;ZLcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Z)V

    invoke-virtual {p0, p4}, Lcom/dex2c/plus/ui/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshCustomSettingsLabels()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvOutputSelectionValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dex2c/plus/model/ProjectState;->getOutputSelectionSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvCustomLibNameValue:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvCustomLoaderClassValue:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvAbisConfigValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dex2c/plus/model/ProjectState;->getAbisSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvMethodTypesConfigValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dex2c/plus/model/ProjectState;->getMethodTypesSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshNdkStatusSubtitle()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/engine/NdkCompiler;->checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v1, v1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvNdkToggleSub:Landroid/widget/TextView;

    iget-boolean v0, v0, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "Installed & Ready (NDK sysroot + Clang)"

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "Install/Uninstall native code (C/C++) build support!"

    .line 137
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showAbisConfigDialog()V
    .locals 4

    .line 398
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 403
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 404
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    .line 405
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 406
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 408
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    invoke-direct {p0, v2}, Lcom/dex2c/plus/ui/SettingsActivity;->applyDialogWidth(Landroid/app/Dialog;)V

    .line 410
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm32:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->arm32:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 411
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiArm64:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->arm64:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 412
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX86:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->x86:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 413
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->swAbiX8664:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->x86_64:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 415
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiArm32:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda23;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda23;-><init>(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiArm64:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda24;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda24;-><init>(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiX86:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda25;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda25;-><init>(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->rowAbiX8664:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda26;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda26;-><init>(Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->btnAbisCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda27;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;->btnAbisOk:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0, v1, v0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda28;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogAbisConfigBinding;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showCustomLibNameDialog()V
    .locals 4

    .line 336
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 341
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 342
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    .line 343
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 344
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogCustomInputBinding;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 346
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-direct {p0, v2}, Lcom/dex2c/plus/ui/SettingsActivity;->applyDialogWidth(Landroid/app/Dialog;)V

    .line 348
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->tvCustomInputTitle:Landroid/widget/TextView;

    const-string v3, "Custom library name"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    const-string v3, "Enter library name (default: native-lib)"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/dex2c/plus/model/ProjectState;->customLibName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    iget-object v3, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 353
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->btnCustomInputCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda47;

    invoke-direct {v3, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda47;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->btnCustomInputOk:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda48;

    invoke-direct {v3, p0, v1, v0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda48;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showCustomLoaderClassDialog()V
    .locals 4

    .line 367
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 372
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 373
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    .line 374
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 375
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogCustomInputBinding;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 377
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-direct {p0, v2}, Lcom/dex2c/plus/ui/SettingsActivity;->applyDialogWidth(Landroid/app/Dialog;)V

    .line 379
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->tvCustomInputTitle:Landroid/widget/TextView;

    const-string v3, "Custom loader class name"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    const-string v3, "Enter loader class name (default: Loader)"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/dex2c/plus/model/ProjectState;->customLoaderClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    iget-object v3, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 384
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->btnCustomInputCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda49;

    invoke-direct {v3, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda49;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->btnCustomInputOk:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda50;

    invoke-direct {v3, p0, v1, v0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda50;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showCustomThemeDialog()V
    .locals 4

    .line 512
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 517
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 518
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 519
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogThemePickerBinding;

    move-result-object v0

    .line 520
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 521
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    invoke-direct {p0, v2}, Lcom/dex2c/plus/ui/SettingsActivity;->applyDialogWidth(Landroid/app/Dialog;)V

    .line 523
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->getThemeMode(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    .line 525
    iget-object v2, v0, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->rbThemeLight:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-virtual {v2, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_3

    .line 527
    iget-object v2, v0, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->rbThemeDark:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-virtual {v2, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 529
    :cond_3
    iget-object v2, v0, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->rbThemeSystem:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-virtual {v2, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    .line 532
    :goto_0
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->rbThemeLight:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    new-instance v2, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda11;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->rbThemeDark:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    new-instance v2, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda22;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v1, v0, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->rbThemeSystem:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    new-instance v2, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda33;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, v0, Lcom/dex2c/plus/databinding/DialogThemePickerBinding;->btnThemeCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda44;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method private showMethodTypesConfigDialog()V
    .locals 4

    .line 444
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 449
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 450
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    .line 451
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 452
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;

    move-result-object v1

    .line 453
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 454
    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    invoke-direct {p0, v2}, Lcom/dex2c/plus/ui/SettingsActivity;->applyDialogWidth(Landroid/app/Dialog;)V

    .line 456
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynthetic:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->typeSynthetic:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 457
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeBridge:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->typeBridge:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 458
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeStatic:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->typeStatic:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 459
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVirtual:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->typeVirtual:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 460
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypePrivate:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->typePrivate:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 461
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeSynchronized:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->typeSynchronized:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 462
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->swDialogTypeVarargs:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v0, Lcom/dex2c/plus/model/ProjectState;->typeVarargs:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 464
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeSynthetic:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeBridge:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeStatic:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeVirtual:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypePrivate:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeSynchronized:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda12;-><init>(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->rowDialogTypeVarargs:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda13;-><init>(Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->btnMethodTypesCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda14;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;->btnMethodTypesOk:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v0, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda15;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;Lcom/dex2c/plus/databinding/DialogMethodTypesBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showNdkInstallerDialog()V
    .locals 6

    .line 159
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    .line 166
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 167
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    move-result-object v1

    .line 168
    iget-object v3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 169
    iget-object v3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-direct {p0, v3}, Lcom/dex2c/plus/ui/SettingsActivity;->applyDialogWidth(Landroid/app/Dialog;)V

    .line 171
    invoke-static {p0}, Lcom/dex2c/plus/engine/NdkCompiler;->checkStatus(Landroid/content/Context;)Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;

    move-result-object v3

    .line 172
    iget-object v4, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkDialogTitle:Landroid/widget/TextView;

    const-string v5, "Manage Native code support"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-boolean v3, v3, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    invoke-direct {p0, v1, v3}, Lcom/dex2c/plus/ui/SettingsActivity;->updateNdkDialogState(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Z)V

    .line 175
    iget-object v3, v0, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 176
    iget-object v3, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/dex2c/plus/model/ProjectState;->ndkLocalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    iget-object v4, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->etNdkLocalPath:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const/4 v3, 0x2

    .line 180
    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkLocalInstall:Landroid/widget/TextView;

    aput-object v5, v3, v4

    iget-object v4, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkBrowseFile:Landroid/widget/ImageButton;

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/dex2c/plus/ui/UiAnimator;->attachPressAnimation([Landroid/view/View;)V

    .line 182
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkOnlineInstall:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda17;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkBrowseFile:Landroid/widget/ImageButton;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v1, v0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda18;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkLocalInstall:Landroid/widget/TextView;

    new-instance v3, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v1, v0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda19;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkUninstall:Landroid/widget/TextView;

    new-instance v2, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda20;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkDialogClose:Landroid/widget/TextView;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda21;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showOutputSelectionDialog()V
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    :cond_1
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/dex2c/plus/R$style;->SeamlessDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 107
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;

    move-result-object v1

    .line 108
    iget-object v3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v3, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    invoke-direct {p0, v3}, Lcom/dex2c/plus/ui/SettingsActivity;->applyDialogWidth(Landroid/app/Dialog;)V

    .line 111
    iget v0, v0, Lcom/dex2c/plus/model/ProjectState;->outputLocationMode:I

    if-ne v0, v2, :cond_2

    .line 112
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;->rbOutputApkFolder:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;->rbOutputDefault:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    .line 117
    :goto_0
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;->rbOutputDefault:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    new-instance v2, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda51;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda51;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;->rbOutputApkFolder:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    new-instance v2, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, v1, Lcom/dex2c/plus/databinding/DialogOutputPickerBinding;->btnOutputCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private startLiveNdkInstallation(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLjava/lang/String;Ljava/io/File;)V
    .locals 9

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->isNdkInstalling:Z

    .line 263
    invoke-static {}, Lcom/dex2c/plus/engine/NdkCompiler;->resetCancellation()V

    .line 264
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 265
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 267
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->containerNdkInstallOptions:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkOnlineInstall:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkUninstall:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->containerNdkLiveProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLiveStage:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const-string v2, "Downloading..."

    goto :goto_0

    :cond_0
    const-string v2, "Installing..."

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLivePercent:Landroid/widget/TextView;

    const-string v2, "0%"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->pbNdkLiveProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 274
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->pbNdkLiveProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 275
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkLiveDetail:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkDialogClose:Landroid/widget/TextView;

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 279
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda16;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda16;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;ZLandroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateNdkDialogState(Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Z)V
    .locals 3

    .line 143
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->containerNdkLiveProgress:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkDialogClose:Landroid/widget/TextView;

    const-string v2, "CANCEL"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkDialogStatusBadge:Landroid/widget/TextView;

    const-string v2, "Installed & Ready (NDK sysroot + Clang)"

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->containerNdkInstallOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkOnlineInstall:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkUninstall:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 151
    :cond_0
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->tvNdkDialogStatusBadge:Landroid/widget/TextView;

    const-string v2, "Install/Uninstall native code (C/C++) build support!"

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->containerNdkInstallOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object p2, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkOnlineInstall:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;->btnNdkUninstall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateThemeLabel()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvThemeCurrentValue:Landroid/widget/TextView;

    const-string v1, "Light"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 505
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvThemeCurrentValue:Landroid/widget/TextView;

    const-string v1, "Dark"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->tvThemeCurrentValue:Landroid/widget/TextView;

    const-string v1, "System Default"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-static {p0}, Lcom/dex2c/plus/model/ProjectState;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/dex2c/plus/model/ProjectState;->applyThemeMode(I)V

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/dex2c/plus/model/ProjectState;->loadPrefs(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    .line 44
    invoke-virtual {p1}, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->headerSettings:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rootSettings:Landroid/widget/LinearLayout;

    sget v1, Lcom/dex2c/plus/R$color;->md_theme_headerSurface:I

    sget v2, Lcom/dex2c/plus/R$color;->md_theme_surfaceContainer:I

    invoke-static {p0, p1, v0, v1, v2}, Lcom/dex2c/plus/ui/UiAnimator;->applySeamlessDecorView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x1

    .line 53
    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->btnSettingsBack:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/dex2c/plus/ui/UiAnimator;->attachPersistentDrawablePress([Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->btnSettingsBack:Landroid/widget/ImageButton;

    new-instance v0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda29;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->updateThemeLabel()V

    .line 58
    iget-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object p1, p1, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowThemePreference:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda37;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Lcom/dex2c/plus/model/ProjectState;->get()Lcom/dex2c/plus/model/ProjectState;

    move-result-object p1

    .line 61
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshNdkStatusSubtitle()V

    .line 63
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swParallelBuild:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p1, Lcom/dex2c/plus/model/ProjectState;->parallelBuild:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swRegisterNatives:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p1, Lcom/dex2c/plus/model/ProjectState;->registerNatives:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swEnvEncryption:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p1, Lcom/dex2c/plus/model/ProjectState;->envEncryption:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swRewriteDex:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p1, Lcom/dex2c/plus/model/ProjectState;->rewriteDex:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 67
    invoke-direct {p0}, Lcom/dex2c/plus/ui/SettingsActivity;->refreshCustomSettingsLabels()V

    .line 69
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowMiniNdk:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda38;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowOutputSelection:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda39;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowParallelBuild:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda40;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowCustomLibName:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda41;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowCustomLoaderClass:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda42;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowAbisConfig:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda43;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowMethodTypesConfig:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda45;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowRegisterNatives:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda46;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowEnvEncryption:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda30;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->rowRewriteDex:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swParallelBuild:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda32;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swRegisterNatives:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda34;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swEnvEncryption:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda35;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    iget-object v0, v0, Lcom/dex2c/plus/databinding/ActivitySettingsBinding;->swRewriteDex:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p1}, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda36;-><init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 565
    :cond_4
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 566
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 568
    :cond_5
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkFilePickerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

    if-eqz v0, :cond_6

    .line 569
    invoke-virtual {v0}, Lcom/dex2c/plus/ui/FileManagerDialog;->dismiss()V

    :cond_6
    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->themeDialog:Landroid/app/Dialog;

    .line 572
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->outputSelectionDialog:Landroid/app/Dialog;

    .line 573
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->customInputDialog:Landroid/app/Dialog;

    .line 574
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->abisDialog:Landroid/app/Dialog;

    .line 575
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->methodTypesDialog:Landroid/app/Dialog;

    .line 576
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkInstallerDialog:Landroid/app/Dialog;

    .line 577
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->ndkFilePickerDialog:Lcom/dex2c/plus/ui/FileManagerDialog;

    .line 578
    iput-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity;->binding:Lcom/dex2c/plus/databinding/ActivitySettingsBinding;

    .line 579
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
