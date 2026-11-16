.class public final synthetic Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/dex2c/plus/ui/FileManagerDialog$OnApkSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/dex2c/plus/ui/SettingsActivity;

.field public final synthetic f$1:Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

.field public final synthetic f$2:Lcom/dex2c/plus/model/ProjectState;


# direct methods
.method public synthetic constructor <init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/dex2c/plus/ui/SettingsActivity;

    iput-object p2, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;->f$1:Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    iput-object p3, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;->f$2:Lcom/dex2c/plus/model/ProjectState;

    return-void
.end method


# virtual methods
.method public final onApkSelected(Ljava/io/File;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/dex2c/plus/ui/SettingsActivity;

    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;->f$1:Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    iget-object v2, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda5;->f$2:Lcom/dex2c/plus/model/ProjectState;

    invoke-static {v0, v1, v2, p1}, Lcom/dex2c/plus/ui/SettingsActivity;->$r8$lambda$Nl0Ch4AV3IpT08aCumIg3ufD_eQ(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Lcom/dex2c/plus/model/ProjectState;Ljava/io/File;)V

    return-void
.end method
