.class public Lcom/dex2c/plus/ui/BuildPromptOkListener;
.super Ljava/lang/Object;
.source "BuildPromptOkListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field private final activity:Lcom/dex2c/plus/MainActivity;
.field private final dialog:Landroid/app/Dialog;
.field private final binding:Lcom/dex2c/plus/databinding/DialogCustomInputBinding;
.field private final state:Lcom/dex2c/plus/model/ProjectState;

# direct methods
.method public constructor <init>(Lcom/dex2c/plus/MainActivity;Landroid/app/Dialog;Lcom/dex2c/plus/databinding/DialogCustomInputBinding;Lcom/dex2c/plus/model/ProjectState;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->activity:Lcom/dex2c/plus/MainActivity;
    iput-object p2, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->dialog:Landroid/app/Dialog;
    iput-object p3, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->binding:Lcom/dex2c/plus/databinding/DialogCustomInputBinding;
    iput-object p4, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->state:Lcom/dex2c/plus/model/ProjectState;
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->binding:Lcom/dex2c/plus/databinding/DialogCustomInputBinding;
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object p1
    if-eqz p1, :cond_null_url
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p1
    goto :goto_save
    :cond_null_url
    const-string p1, ""
    :goto_save
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->state:Lcom/dex2c/plus/model/ProjectState;
    if-eqz v0, :cond_no_state
    iput-object p1, v0, Lcom/dex2c/plus/model/ProjectState;->remoteControlUrl:Ljava/lang/String;
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->activity:Lcom/dex2c/plus/MainActivity;
    invoke-virtual {v0, p1}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V
    :cond_no_state
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->dialog:Landroid/app/Dialog;
    if-eqz p1, :cond_no_dialog
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :cond_no_dialog
    iget-object p1, p0, Lcom/dex2c/plus/ui/BuildPromptOkListener;->activity:Lcom/dex2c/plus/MainActivity;
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/dex2c/plus/ui/BuildActivity;
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p1, v0}, Lcom/dex2c/plus/MainActivity;->startActivity(Landroid/content/Intent;)V
    return-void
.end method
