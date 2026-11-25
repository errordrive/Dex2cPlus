.class public Lcom/dex2c/plus/ui/UrlPromptOkListener;
.super Ljava/lang/Object;
.source "UrlPromptOkListener.java"

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
    iput-object p1, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->activity:Lcom/dex2c/plus/MainActivity;
    iput-object p2, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->dialog:Landroid/app/Dialog;
    iput-object p3, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->binding:Lcom/dex2c/plus/databinding/DialogCustomInputBinding;
    iput-object p4, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->state:Lcom/dex2c/plus/model/ProjectState;
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    iget-object p1, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->binding:Lcom/dex2c/plus/databinding/DialogCustomInputBinding;
    if-eqz p1, :cond_no_binding
    iget-object p1, p1, Lcom/dex2c/plus/databinding/DialogCustomInputBinding;->etCustomInputValue:Landroid/widget/EditText;
    if-eqz p1, :cond_no_binding
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
    iget-object v0, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->state:Lcom/dex2c/plus/model/ProjectState;
    if-eqz v0, :cond_no_state
    iput-object p1, v0, Lcom/dex2c/plus/model/ProjectState;->remoteControlUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->activity:Lcom/dex2c/plus/MainActivity;
    if-eqz v1, :cond_no_state
    invoke-virtual {v0, v1}, Lcom/dex2c/plus/model/ProjectState;->savePrefs(Landroid/content/Context;)V
    :cond_no_state
    :cond_no_binding
    iget-object p1, p0, Lcom/dex2c/plus/ui/UrlPromptOkListener;->dialog:Landroid/app/Dialog;
    if-eqz p1, :cond_no_dialog
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :cond_no_dialog
    return-void
.end method
