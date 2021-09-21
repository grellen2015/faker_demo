.class public Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;
.super Lcom/ironsource/mediationsdk/DemandOnlySmash;
.source "DemandOnlyRvSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# instance fields
.field private mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

.field private mLoadStartTime:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 6

    .line 27
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0, p7}, Lcom/ironsource/mediationsdk/DemandOnlySmash;-><init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 28
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    .line 29
    iget-object p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdUnitSetings()Lorg/json/JSONObject;

    move-result-object p4

    iput-object p4, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    .line 30
    iput-object p7, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 31
    iput-object p5, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    .line 32
    iput p6, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mLoadTimeoutSecs:I

    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRvForDemandOnly(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    return-object p0
.end method

.method private logAdapterCallback(Ljava/lang/String;)V
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandOnlyRewardedVideoSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandOnlyRewardedVideoSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private startLoadTimer()V
    .locals 1

    const-string v0, "start timer"

    .line 81
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logInternal(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash$1;-><init>(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->startTimer(Ljava/util/TimerTask;)V

    return-void
.end method


# virtual methods
.method public isRewardedVideoAvailable()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public loadRewardedVideo()V
    .locals 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRewardedVideo state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logInternal(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->compareAndSetState([Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const-wide/16 v2, 0x0

    const/16 v4, 0x41d

    if-ne v0, v1, :cond_1

    .line 49
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v1, "load already in progress"

    invoke-direct {v0, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v1, v0, p0, v2, v3}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;J)V

    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v1, "cannot load because show is in progress"

    invoke-direct {v0, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v1, v0, p0, v2, v3}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;J)V

    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->startLoadTimer()V

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mLoadStartTime:J

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadVideoForDemandOnly(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    :goto_1
    return-void
.end method

.method public onRewardedVideoAdClicked()V
    .locals 1

    const-string v0, "onRewardedVideoAdClicked"

    .line 185
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 1

    .line 146
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->setState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)V

    const-string v0, "onRewardedVideoAdClosed"

    .line 147
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 0

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 1

    const-string v0, "onRewardedVideoAdOpened"

    .line 138
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return-void
.end method

.method public onRewardedVideoAdRewarded()V
    .locals 1

    const-string v0, "onRewardedVideoAdRewarded"

    .line 201
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 176
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->setState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdClosed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 0

    return-void
.end method

.method public onRewardedVideoAdVisible()V
    .locals 1

    const-string v0, "onRewardedVideoAdVisible"

    .line 193
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdVisible(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    return-void
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 0

    return-void
.end method

.method public onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->stopTimer()V

    .line 128
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 130
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;J)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadSuccess()V
    .locals 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoLoadSuccess state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->stopTimer()V

    .line 115
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 117
    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoLoadSuccess(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;J)V

    :cond_0
    return-void
.end method

.method public showRewardedVideo()V
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRewardedVideo state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->logInternal(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x41e

    const-string v2, "load must be called before show"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mListener:Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;

    invoke-interface {v1, v0, p0}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    :goto_0
    return-void
.end method
