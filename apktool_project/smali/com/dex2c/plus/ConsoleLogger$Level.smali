.class public final enum Lcom/dex2c/plus/ConsoleLogger$Level;
.super Ljava/lang/Enum;
.source "ConsoleLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ConsoleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dex2c/plus/ConsoleLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dex2c/plus/ConsoleLogger$Level;

.field public static final enum ERROR:Lcom/dex2c/plus/ConsoleLogger$Level;

.field public static final enum INFO:Lcom/dex2c/plus/ConsoleLogger$Level;

.field public static final enum SUCCESS:Lcom/dex2c/plus/ConsoleLogger$Level;

.field public static final enum WARN:Lcom/dex2c/plus/ConsoleLogger$Level;


# direct methods
.method private static synthetic $values()[Lcom/dex2c/plus/ConsoleLogger$Level;
    .locals 3

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [Lcom/dex2c/plus/ConsoleLogger$Level;

    sget-object v1, Lcom/dex2c/plus/ConsoleLogger$Level;->INFO:Lcom/dex2c/plus/ConsoleLogger$Level;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dex2c/plus/ConsoleLogger$Level;->SUCCESS:Lcom/dex2c/plus/ConsoleLogger$Level;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dex2c/plus/ConsoleLogger$Level;->WARN:Lcom/dex2c/plus/ConsoleLogger$Level;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dex2c/plus/ConsoleLogger$Level;->ERROR:Lcom/dex2c/plus/ConsoleLogger$Level;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/dex2c/plus/ConsoleLogger$Level;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dex2c/plus/ConsoleLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->INFO:Lcom/dex2c/plus/ConsoleLogger$Level;

    new-instance v0, Lcom/dex2c/plus/ConsoleLogger$Level;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dex2c/plus/ConsoleLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->SUCCESS:Lcom/dex2c/plus/ConsoleLogger$Level;

    new-instance v0, Lcom/dex2c/plus/ConsoleLogger$Level;

    const-string v1, "WARN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dex2c/plus/ConsoleLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->WARN:Lcom/dex2c/plus/ConsoleLogger$Level;

    new-instance v0, Lcom/dex2c/plus/ConsoleLogger$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dex2c/plus/ConsoleLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->ERROR:Lcom/dex2c/plus/ConsoleLogger$Level;

    invoke-static {}, Lcom/dex2c/plus/ConsoleLogger$Level;->$values()[Lcom/dex2c/plus/ConsoleLogger$Level;

    move-result-object v0

    sput-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->$VALUES:[Lcom/dex2c/plus/ConsoleLogger$Level;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dex2c/plus/ConsoleLogger$Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    const-class v0, Lcom/dex2c/plus/ConsoleLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dex2c/plus/ConsoleLogger$Level;

    return-object p0
.end method

.method public static values()[Lcom/dex2c/plus/ConsoleLogger$Level;
    .locals 1

    .line 14
    sget-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->$VALUES:[Lcom/dex2c/plus/ConsoleLogger$Level;

    invoke-virtual {v0}, [Lcom/dex2c/plus/ConsoleLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dex2c/plus/ConsoleLogger$Level;

    return-object v0
.end method
