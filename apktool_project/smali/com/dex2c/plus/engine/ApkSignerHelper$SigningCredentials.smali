.class public Lcom/dex2c/plus/engine/ApkSignerHelper$SigningCredentials;
.super Ljava/lang/Object;
.source "ApkSignerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/ApkSignerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningCredentials"
.end annotation


# instance fields
.field public cert:Ljava/security/cert/X509Certificate;

.field public certDer:[B

.field public privateKey:Ljava/security/PrivateKey;

.field public pubKeyDer:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
