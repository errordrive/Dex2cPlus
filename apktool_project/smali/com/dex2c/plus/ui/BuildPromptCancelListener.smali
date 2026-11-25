.class public Lcom/dex2c/plus/ui/BuildPromptCancelListener;
.super Ljava/lang/Object;
.source "BuildPromptCancelListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field private final dialog:Landroid/app/Dialog;

# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/dex2c/plus/ui/BuildPromptCancelListener;->dialog:Landroid/app/Dialog;
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcom/dex2c/plus/ui/BuildPromptCancelListener;->dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :cond_0
    return-void
.end method
