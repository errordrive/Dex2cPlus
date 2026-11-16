.class public Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;
.super Ljava/lang/Object;
.source "Dex2CTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/Dex2CTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeEntry"
.end annotation


# instance fields
.field public final cFuncName:Ljava/lang/String;

.field public final classDesc:Ljava/lang/String;

.field public final jniSig:Ljava/lang/String;

.field public final methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->classDesc:Ljava/lang/String;

    iput-object p2, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->jniSig:Ljava/lang/String;

    iput-object p4, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;->cFuncName:Ljava/lang/String;

    return-void
.end method
