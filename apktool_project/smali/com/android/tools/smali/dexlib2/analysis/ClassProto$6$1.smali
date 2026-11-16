.class Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6$1;
.super Ljava/lang/Object;
.source "ClassProto.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->getSortedInstanceFields(Lcom/android/tools/smali/dexlib2/iface/ClassDef;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/tools/smali/dexlib2/iface/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6$1;->this$1:Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/tools/smali/dexlib2/iface/Field;Lcom/android/tools/smali/dexlib2/iface/Field;)I
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6$1;->this$1:Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;

    invoke-static {v0, p1}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->access$300(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6$1;->this$1:Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;

    invoke-static {v1, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;->access$300(Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6;Lcom/android/tools/smali/dexlib2/iface/reference/FieldReference;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 792
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 796
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 785
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/Field;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/Field;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/analysis/ClassProto$6$1;->compare(Lcom/android/tools/smali/dexlib2/iface/Field;Lcom/android/tools/smali/dexlib2/iface/Field;)I

    move-result p1

    return p1
.end method
