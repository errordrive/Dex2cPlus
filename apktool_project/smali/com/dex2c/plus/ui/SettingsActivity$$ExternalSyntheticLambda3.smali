.class public final synthetic Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/dex2c/plus/engine/NdkCompiler$InstallProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/dex2c/plus/ui/SettingsActivity;

.field public final synthetic f$1:Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/dex2c/plus/ui/SettingsActivity;

    iput-object p2, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda3;->f$1:Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    return-void
.end method


# virtual methods
.method public final onProgress(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/dex2c/plus/ui/SettingsActivity;

    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda3;->f$1:Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/dex2c/plus/ui/SettingsActivity;->$r8$lambda$uMiuWfYkYxrpSLIYAJu0uuDYdto(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/databinding/DialogNdkInstallerBinding;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
