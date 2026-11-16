.class Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;
.super Ljava/lang/Object;
.source "BuilderClassPool.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;->getClassEntryByType(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderTypeReference;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

.field final synthetic val$classDef:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool;

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->getKey()Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    iget v0, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/tools/smali/dexlib2/writer/builder/BuilderClassPool$1;->setValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
