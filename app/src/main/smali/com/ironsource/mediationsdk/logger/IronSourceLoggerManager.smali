.class public Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
.super Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.source "IronSourceLoggerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/logger/LogListener;


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;


# instance fields
.field private mIsDebugEnabled:Z

.field private mLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/logger/IronSourceLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 23
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->initSubLoggers()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->initSubLoggers()V

    return-void
.end method

.method private findLoggerByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 132
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .locals 3

    const-class v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-class v2, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 51
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    if-nez v1, :cond_0

    .line 65
    new-instance p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-class v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    goto :goto_0

    .line 67
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iput p0, v1, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mDebugLevel:I

    .line 70
    :goto_0
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mInstance:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0

    throw p0
.end method

.method private initSubLoggers()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/ConsoleLogger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/logger/ConsoleLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    return v0
.end method

.method public declared-synchronized log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mDebugLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p3, v0, :cond_0

    .line 91
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 94
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->getDebugLevel()I

    move-result v2

    if-gt v2, p3, :cond_1

    .line 95
    invoke-virtual {v1, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 89
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    .line 112
    :try_start_0
    iget-object p3, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, p1, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 116
    invoke-virtual {v1, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 119
    :cond_1
    monitor-exit p0

    return-void

    .line 110
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

.method public setAdaptersDebug(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mIsDebugEnabled:Z

    return-void
.end method

.method public setLoggerDebugLevel(Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->findLoggerByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_1

    const/4 v2, 0x3

    if-gt p2, v2, :cond_1

    .line 159
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLoggerDebugLevel(loggerName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,debugLevel:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 160
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->setDebugLevel(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find logger:setLoggerDebugLevel(loggerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,debugLevel:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
