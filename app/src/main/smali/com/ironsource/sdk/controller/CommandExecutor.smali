.class public Lcom/ironsource/sdk/controller/CommandExecutor;
.super Ljava/lang/Object;
.source "CommandExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;
    }
.end annotation


# instance fields
.field private mCommandExecutorQueue:Ljava/util/ArrayList;

.field private mCommandExecutorState:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->NOT_READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/CommandExecutor;->mCommandExecutorState:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/CommandExecutor;->mCommandExecutorQueue:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized executeCommand(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/CommandExecutor;->mCommandExecutorState:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    sget-object v1, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    if-eq v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/ironsource/sdk/controller/CommandExecutor;->mCommandExecutorQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized purgeDelayedCommands()V
    .locals 3

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/CommandExecutor;->mCommandExecutorQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 26
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Runnable;

    .line 27
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x0

    .line 28
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/CommandExecutor;->mCommandExecutorQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReady()V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    sget-object v0, Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;->READY:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/CommandExecutor;->mCommandExecutorState:Lcom/ironsource/sdk/controller/CommandExecutor$CommandExecutorState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method
