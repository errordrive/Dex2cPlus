.class public Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;
.super Ljava/lang/Object;
.source "NdkCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/NdkCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NdkStatus"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;

.field public final ready:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->ready:Z

    .line 67
    iput-object p2, p0, Lcom/dex2c/plus/engine/NdkCompiler$NdkStatus;->message:Ljava/lang/String;

    return-void
.end method
