.class Lcom/dex2c/plus/ConsoleLogger$1;
.super Ljava/lang/Object;
.source "ConsoleLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dex2c/plus/ConsoleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dex2c/plus/ConsoleLogger;


# direct methods
.method constructor <init>(Lcom/dex2c/plus/ConsoleLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/dex2c/plus/ConsoleLogger$1;->this$0:Lcom/dex2c/plus/ConsoleLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/dex2c/plus/ConsoleLogger$1;->this$0:Lcom/dex2c/plus/ConsoleLogger;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/dex2c/plus/ConsoleLogger$1;->this$0:Lcom/dex2c/plus/ConsoleLogger;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dex2c/plus/ConsoleLogger;->-$$Nest$fputuiDispatchScheduled(Lcom/dex2c/plus/ConsoleLogger;Z)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dex2c/plus/ConsoleLogger$1;->this$0:Lcom/dex2c/plus/ConsoleLogger;

    invoke-static {v2}, Lcom/dex2c/plus/ConsoleLogger;->-$$Nest$fgetlisteners(Lcom/dex2c/plus/ConsoleLogger;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dex2c/plus/ConsoleLogger$Listener;

    .line 155
    invoke-interface {v1}, Lcom/dex2c/plus/ConsoleLogger$Listener;->onLogUpdated()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 153
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
