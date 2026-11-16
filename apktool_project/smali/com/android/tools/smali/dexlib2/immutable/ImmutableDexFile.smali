.class public Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;
.super Ljava/lang/Object;
.source "ImmutableDexFile.java"

# interfaces
.implements Lcom/android/tools/smali/dexlib2/iface/DexFile;


# instance fields
.field protected final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/util/Collection;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcodes;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/tools/smali/dexlib2/iface/ClassDef;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p2}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;->immutableSetOf(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;->classes:Ljava/util/Set;

    .line 49
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/util/Set;)V
    .locals 0
    .param p1    # Lcom/android/tools/smali/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/smali/dexlib2/Opcodes;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p2}, Lcom/android/tools/smali/util/ImmutableUtils;->nullToEmptySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;->classes:Ljava/util/Set;

    .line 54
    iput-object p1, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-void
.end method

.method public static of(Lcom/android/tools/smali/dexlib2/iface/DexFile;)Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;
    .locals 2

    .line 58
    instance-of v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/tools/smali/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;-><init>(Lcom/android/tools/smali/dexlib2/Opcodes;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/tools/smali/dexlib2/immutable/ImmutableClassDef;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;->classes:Ljava/util/Set;

    return-object v0
.end method

.method public getOpcodes()Lcom/android/tools/smali/dexlib2/Opcodes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/tools/smali/dexlib2/immutable/ImmutableDexFile;->opcodes:Lcom/android/tools/smali/dexlib2/Opcodes;

    return-object v0
.end method
