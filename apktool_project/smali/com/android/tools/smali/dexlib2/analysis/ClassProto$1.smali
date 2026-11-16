.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$1;
.super Ljava/lang/Object;
.source "ClassProto.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/analysis/ClassProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$1;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/tools/smali/dexlib2/iface/ClassDef;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$1;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->classPath:Lcom/android/tools/smali/dexlib2/analysis/ClassPath;

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$1;->this$0:Lcom/android/tools/smali/dexlib2/analysis/ClassProto;

    iget-object v1, v1, Lcom/android/tools/smali/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/smali/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$1;->get()Lcom/android/tools/smali/dexlib2/iface/ClassDef;

    move-result-object v0

    return-object v0
.end method
