.class public Lcom/ironsource/mediationsdk/DemandOnlySmash;
.super Ljava/lang/Object;
.source "DemandOnlySmash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;
    }
.end annotation


# instance fields
.field protected mAdUnitSettings:Lorg/json/JSONObject;

.field protected mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field protected mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

.field mLoadTimeoutSecs:I

.field private mLoadTimer:Ljava/util/Timer;

.field private mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

.field private final mStateLock:Ljava/lang/Object;

.field private final mTimerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mStateLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mTimerLock:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    .line 37
    iput-object p2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 38
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdUnitSetings()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdUnitSettings:Lorg/json/JSONObject;

    .line 39
    sget-object p1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mLoadTimer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method compareAndSetState([Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    .line 129
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/DemandOnlySmash;->setState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)V

    .line 133
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    if-ne v1, p1, :cond_0

    .line 111
    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/DemandOnlySmash;->setState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)V

    const/4 p1, 0x1

    .line 112
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 114
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderEventData()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "providerAdapterVersion"

    .line 88
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    .line 89
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    .line 90
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    .line 91
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isDemandOnly"

    const/4 v2, 0x1

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 94
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProviderEventData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlySmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method getStateString()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSubProviderId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public setConsent(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    return-void
.end method

.method setState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)V
    .locals 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandOnlySmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mState:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method startTimer(Ljava/util/TimerTask;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlySmash;->stopTimer()V

    .line 163
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mLoadTimer:Ljava/util/Timer;

    .line 164
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mLoadTimer:Ljava/util/Timer;

    iget v2, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mLoadTimeoutSecs:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method stopTimer()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mLoadTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mLoadTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 174
    iput-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlySmash;->mLoadTimer:Ljava/util/Timer;

    .line 176
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
