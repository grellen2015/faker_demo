.class public Lcom/ironsource/mediationsdk/InterstitialSmash;
.super Lcom/ironsource/mediationsdk/AbstractSmash;
.source "InterstitialSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialSmashApi;


# instance fields
.field private mInterstitialAdapterConfigs:Lorg/json/JSONObject;

.field private mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

.field private mLoadStartTime:J

.field private mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

.field private mTimeout:I


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V
    .locals 3

    .line 36
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 37
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerIteration"

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMaxAdsPerIteration:I

    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerSession"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMaxAdsPerSession:I

    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerDay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMaxAdsPerDay:I

    .line 41
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mIsMultipleInstances:Z

    .line 42
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mSpId:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mTimeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/InterstitialSmash;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadStartTime:J

    return-wide v0
.end method


# virtual methods
.method completeIteration()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mIterationShowCounter:I

    .line 51
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    return-void
.end method

.method protected getAdUnitString()Ljava/lang/String;
    .locals 1

    const-string v0, "interstitial"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 108
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->startInitTimer()V

    .line 109
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    .line 111
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":initInterstitial()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 114
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    :cond_1
    return-void
.end method

.method public isInterstitialReady()Z
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":isInterstitialReady()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady(Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadInterstitial()V
    .locals 4

    .line 120
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->startLoadTimer()V

    .line 121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":loadInterstitial()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadStartTime:J

    .line 124
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClicked(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClosed(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 192
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopLoadTimer()V

    .line 193
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 195
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;J)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdOpened(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 4

    .line 183
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopLoadTimer()V

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 186
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdReady(Lcom/ironsource/mediationsdk/InterstitialSmash;J)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdRewarded()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;->onInterstitialAdRewarded(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdVisible()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdVisible(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopInitTimer()V

    .line 173
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    .line 174
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 176
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopInitTimer()V

    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    :cond_0
    return-void
.end method

.method public setInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    return-void
.end method

.method public setRewardedInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":showInterstitial()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 132
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->preShow()V

    .line 133
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    :cond_0
    return-void
.end method

.method startInitTimer()V
    .locals 4

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopInitTimer()V

    .line 59
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInitTimer:Ljava/util/Timer;

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInitTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/InterstitialSmash$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/InterstitialSmash$1;-><init>(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    iget v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startInitTimer"

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->logException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method startLoadTimer()V
    .locals 4

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopLoadTimer()V

    .line 81
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadTimer:Ljava/util/Timer;

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/InterstitialSmash$2;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/InterstitialSmash$2;-><init>(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    iget v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startLoadTimer"

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->logException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
