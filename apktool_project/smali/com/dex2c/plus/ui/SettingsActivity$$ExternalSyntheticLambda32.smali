.class public final synthetic Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/dex2c/plus/ui/SettingsActivity;

.field public final synthetic f$1:Lcom/dex2c/plus/model/ProjectState;


# direct methods
.method public synthetic constructor <init>(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda32;->f$0:Lcom/dex2c/plus/ui/SettingsActivity;

    iput-object p2, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda32;->f$1:Lcom/dex2c/plus/model/ProjectState;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda32;->f$0:Lcom/dex2c/plus/ui/SettingsActivity;

    iget-object v1, p0, Lcom/dex2c/plus/ui/SettingsActivity$$ExternalSyntheticLambda32;->f$1:Lcom/dex2c/plus/model/ProjectState;

    invoke-static {v0, v1, p1, p2}, Lcom/dex2c/plus/ui/SettingsActivity;->$r8$lambda$YnslUlNF9BxoZkIwPFPEH9gS7E4(Lcom/dex2c/plus/ui/SettingsActivity;Lcom/dex2c/plus/model/ProjectState;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
