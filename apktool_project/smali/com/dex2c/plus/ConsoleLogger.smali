.class public Lcom/dex2c/plus/ConsoleLogger;
.super Ljava/lang/Object;
.source "ConsoleLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;,
        Lcom/dex2c/plus/ConsoleLogger$Listener;,
        Lcom/dex2c/plus/ConsoleLogger$Level;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/dex2c/plus/ConsoleLogger;


# instance fields
.field private final errorLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dex2c/plus/ConsoleLogger$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final notifyRunnable:Ljava/lang/Runnable;

.field private uiDispatchScheduled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/dex2c/plus/ConsoleLogger;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dex2c/plus/ConsoleLogger;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputuiDispatchScheduled(Lcom/dex2c/plus/ConsoleLogger;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dex2c/plus/ConsoleLogger;->uiDispatchScheduled:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcom/dex2c/plus/ConsoleLogger;

    invoke-direct {v0}, Lcom/dex2c/plus/ConsoleLogger;-><init>()V

    sput-object v0, Lcom/dex2c/plus/ConsoleLogger;->INSTANCE:Lcom/dex2c/plus/ConsoleLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->mainHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    invoke-direct {v0}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->errorLines:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/dex2c/plus/ConsoleLogger;->uiDispatchScheduled:Z

    .line 146
    new-instance v0, Lcom/dex2c/plus/ConsoleLogger$1;

    invoke-direct {v0, p0}, Lcom/dex2c/plus/ConsoleLogger$1;-><init>(Lcom/dex2c/plus/ConsoleLogger;)V

    iput-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->notifyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static get()Lcom/dex2c/plus/ConsoleLogger;
    .locals 1

    .line 160
    sget-object v0, Lcom/dex2c/plus/ConsoleLogger;->INSTANCE:Lcom/dex2c/plus/ConsoleLogger;

    return-object v0
.end method

.method private scheduleUiNotify()V
    .locals 4

    .line 212
    iget-boolean v0, p0, Lcom/dex2c/plus/ConsoleLogger;->uiDispatchScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/dex2c/plus/ConsoleLogger;->uiDispatchScheduled:Z

    .line 214
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger;->notifyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/dex2c/plus/ConsoleLogger$Listener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 167
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    invoke-interface {p1}, Lcom/dex2c/plus/ConsoleLogger$Listener;->onLogUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    invoke-virtual {v0}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->clear()V

    .line 235
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->errorLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    invoke-direct {p0}, Lcom/dex2c/plus/ConsoleLogger;->scheduleUiNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    sget-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->ERROR:Lcom/dex2c/plus/ConsoleLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/dex2c/plus/ConsoleLogger;->log(Lcom/dex2c/plus/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllText()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    invoke-virtual {v0}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->exportAllText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getErrorsOnly()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->errorLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 228
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger;->errorLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getGapBuffer()Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    return-object v0
.end method

.method public declared-synchronized hasErrors()Z
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->errorLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 188
    sget-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->INFO:Lcom/dex2c/plus/ConsoleLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/dex2c/plus/ConsoleLogger;->log(Lcom/dex2c/plus/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized log(Lcom/dex2c/plus/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "["

    const-string v1, "LOG_"

    monitor-enter p0

    if-nez p3, :cond_0

    .line 194
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 195
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "RAW"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v1, v2

    .line 196
    :goto_0
    sget-object v3, Lcom/dex2c/plus/ConsoleLogger$Level;->ERROR:Lcom/dex2c/plus/ConsoleLogger$Level;

    if-ne p1, v3, :cond_4

    if-eqz p2, :cond_2

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "RAW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/dex2c/plus/ConsoleLogger;->errorLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x200

    if-ge p1, p2, :cond_3

    .line 200
    iget-object p1, p0, Lcom/dex2c/plus/ConsoleLogger;->errorLines:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    invoke-virtual {p1, v2, p3}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->upsertKeyedLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 204
    iget-object p1, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    invoke-virtual {p1, v1, p3}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->upsertKeyedLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    invoke-virtual {p1, v2, p3}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->upsertKeyedLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_1
    invoke-direct {p0}, Lcom/dex2c/plus/ConsoleLogger;->scheduleUiNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/dex2c/plus/ConsoleLogger$Listener;)V
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 189
    sget-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->SUCCESS:Lcom/dex2c/plus/ConsoleLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/dex2c/plus/ConsoleLogger;->log(Lcom/dex2c/plus/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updateStep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    :try_start_0
    const-string p2, ""

    :goto_0
    if-eqz p3, :cond_1

    .line 182
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const-string p3, ""

    .line 183
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\t"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 184
    :goto_2
    iget-object p3, p0, Lcom/dex2c/plus/ConsoleLogger;->gapBuffer:Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;

    invoke-virtual {p3, p1, p2}, Lcom/dex2c/plus/ConsoleLogger$ChunkedGapBuffer;->upsertKeyedLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/dex2c/plus/ConsoleLogger;->scheduleUiNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    sget-object v0, Lcom/dex2c/plus/ConsoleLogger$Level;->WARN:Lcom/dex2c/plus/ConsoleLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/dex2c/plus/ConsoleLogger;->log(Lcom/dex2c/plus/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
