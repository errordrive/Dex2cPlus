.class public Lcom/dex2c/plus/model/DexClassItem;
.super Ljava/lang/Object;
.source "DexClassItem.java"


# instance fields
.field public final descriptor:Ljava/lang/String;

.field public final dexEntryName:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final lowerDexEntryName:Ljava/lang/String;

.field public final lowerDisplayName:Ljava/lang/String;

.field public final methodCount:I

.field public selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/dex2c/plus/model/DexClassItem;->dexEntryName:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 21
    :goto_1
    iput-object p2, p0, Lcom/dex2c/plus/model/DexClassItem;->descriptor:Ljava/lang/String;

    .line 22
    invoke-static {p2}, Lcom/dex2c/plus/model/DexClassItem;->descriptorToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dex2c/plus/model/DexClassItem;->displayName:Ljava/lang/String;

    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dex2c/plus/model/DexClassItem;->lowerDisplayName:Ljava/lang/String;

    .line 24
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dex2c/plus/model/DexClassItem;->lowerDexEntryName:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/dex2c/plus/model/DexClassItem;->methodCount:I

    return-void
.end method

.method private static descriptorToJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 29
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    return-object p0

    .line 32
    :cond_1
    const-string p0, ""

    return-object p0
.end method
