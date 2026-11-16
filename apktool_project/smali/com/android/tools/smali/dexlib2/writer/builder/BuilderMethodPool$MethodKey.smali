.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;
.super Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;
.source "BuilderMethodPool.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/reference/MethodReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodKey"
.end annotation


# instance fields
.field private final definingClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final returnType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/android/tools/smali/dexlib2/base/reference/BaseMethodReference;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->definingClass:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->name:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->parameterTypes:Ljava/util/List;

    .line 132
    iput-object p4, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->returnType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->parameterTypes:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->returnType:Ljava/lang/String;

    return-object v0
.end method
