.class public final enum Lcom/dex2c/plus/ui/ClassAdapter$NodeType;
.super Ljava/lang/Enum;
.source "ClassAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ui/ClassAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dex2c/plus/ui/ClassAdapter$NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

.field public static final enum CLASS_LEAF:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

.field public static final enum DEX_FILE:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

.field public static final enum PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;


# direct methods
.method private static synthetic $values()[Lcom/dex2c/plus/ui/ClassAdapter$NodeType;
    .locals 3

    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->DEX_FILE:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->CLASS_LEAF:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const-string v1, "DEX_FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->DEX_FILE:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    .line 22
    new-instance v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const-string v1, "PACKAGE_FOLDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->PACKAGE_FOLDER:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    .line 23
    new-instance v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    const-string v1, "CLASS_LEAF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->CLASS_LEAF:Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    .line 20
    invoke-static {}, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->$values()[Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->$VALUES:[Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dex2c/plus/ui/ClassAdapter$NodeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    const-class v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    return-object p0
.end method

.method public static values()[Lcom/dex2c/plus/ui/ClassAdapter$NodeType;
    .locals 1

    .line 20
    sget-object v0, Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->$VALUES:[Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    invoke-virtual {v0}, [Lcom/dex2c/plus/ui/ClassAdapter$NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dex2c/plus/ui/ClassAdapter$NodeType;

    return-object v0
.end method
