.class Lcom/android/tools/smali/dexlib2/writer/InstructionWriter$1;
.super Ljava/lang/Object;
.source "InstructionWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;


# direct methods
.method constructor <init>(Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter$1;->this$0:Lcom/android/tools/smali/dexlib2/writer/InstructionWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)I
    .locals 0

    .line 556
    invoke-interface {p1}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p1

    invoke-interface {p2}, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 554
    check-cast p1, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    check-cast p2, Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/smali/dexlib2/writer/InstructionWriter$1;->compare(Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;Lcom/android/tools/smali/dexlib2/iface/instruction/SwitchElement;)I

    move-result p1

    return p1
.end method
