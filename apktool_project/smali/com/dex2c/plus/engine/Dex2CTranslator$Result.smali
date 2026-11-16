.class public Lcom/dex2c/plus/engine/Dex2CTranslator$Result;
.super Ljava/lang/Object;
.source "Dex2CTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/engine/Dex2CTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final cppFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final registeredMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/engine/Dex2CTranslator$NativeEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final translatedClassDescriptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public translatedMethods:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->cppFiles:Ljava/util/List;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedMethods:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->registeredMethods:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/engine/Dex2CTranslator$Result;->translatedClassDescriptors:Ljava/util/Set;

    return-void
.end method
