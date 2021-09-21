.class public Lcom/ironsource/adapters/ris/RISAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "RISAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;


# instance fields
.field private final AD_VISIBLE_EVENT_NAME:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

.field private hasAdAvailable:Z

.field private mConsent:Z

.field private mDidReportInitStatus:Z

.field private mDidSetConsent:Z

.field private mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 36
    iput-boolean p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    const-string p1, "controllerUrl"

    .line 38
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

    const-string p1, "debugMode"

    .line 39
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

    const-string p1, "controllerConfig"

    .line 40
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

    const-string p1, "impressions"

    .line 42
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->AD_VISIBLE_EVENT_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/ris/RISAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/ris/RISAdapter;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidSetConsent:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/ris/RISAdapter;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mConsent:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/ris/RISAdapter;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ris/RISAdapter;->applyConsent(Z)V

    return-void
.end method

.method private applyConsent(Z)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "gdprConsentStatus"

    .line 306
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "demandSourceName"

    .line 307
    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 311
    :goto_0
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p1, v0}, Lcom/ironsource/sdk/SSAPublisher;->updateConsentInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/ris/RISAdapter;
    .locals 1

    .line 48
    new-instance v0, Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/ris/RISAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 1

    const-string p5, "controllerUrl"

    .line 105
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->isAdaptersDebugEnabled()Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x3

    .line 108
    invoke-static {p5}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    goto :goto_0

    :cond_0
    const-string p5, "debugMode"

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p4, p5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p5

    invoke-static {p5}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    :goto_0
    const-string p5, "controllerConfig"

    const-string v0, ""

    .line 115
    invoke-virtual {p4, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 117
    new-instance p4, Lcom/ironsource/adapters/ris/RISAdapter$1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/ironsource/adapters/ris/RISAdapter$1;-><init>(Lcom/ironsource/adapters/ris/RISAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 0

    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 0

    .line 175
    iget-boolean p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 1

    .line 138
    iget-boolean p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p2, :cond_0

    .line 141
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p2, :cond_2

    const-string v0, "No Ads to Load"

    .line 146
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRVAdClicked()V
    .locals 3

    .line 265
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onRVAdClicked()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public onRVAdClosed()V
    .locals 3

    .line 239
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onRVAdClosed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    :cond_0
    return-void
.end method

.method public onRVAdCredited(I)V
    .locals 2

    .line 231
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onRVAdCredited()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 233
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mRewardedInterstitial:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mRewardedInterstitial:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;->onInterstitialAdRewarded()V

    :cond_0
    return-void
.end method

.method public onRVAdOpened()V
    .locals 3

    .line 247
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onRVAdOpened()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    .line 251
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    :cond_0
    return-void
.end method

.method public onRVEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 274
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :onRISEventNotificationReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    .line 274
    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "impressions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdVisible()V

    :cond_0
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .locals 3

    .line 204
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onRVInitFail()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 207
    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v0, :cond_1

    .line 208
    iput-boolean v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 209
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v1, :cond_0

    const-string v2, "Interstitial"

    .line 211
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .locals 5

    .line 182
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onRVInitSuccess()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "onRVInitSuccess:parseInt()"

    invoke-virtual {v1, v3, v4, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 191
    :cond_0
    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 193
    iget-boolean p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez p1, :cond_2

    .line 194
    iput-boolean v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 195
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onRVNoMoreOffers()V
    .locals 3

    .line 218
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onRVNoMoreOffers()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 220
    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v0, :cond_1

    .line 221
    iput-boolean v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 222
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .locals 3

    .line 257
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onRVShowFail()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 259
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fd

    const-string v2, "Show Failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected setConsent(Z)V
    .locals 1

    .line 292
    iput-boolean p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mConsent:Z

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidSetConsent:Z

    .line 294
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ris/RISAdapter;->applyConsent(Z)V

    return-void
.end method

.method protected setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :setMediationState(RIS:(rewardedvideo)):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->getValue()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 287
    iget-object p2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    const-string v0, "rewardedvideo"

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->getValue()I

    move-result p1

    invoke-interface {p2, v0, v1, p1}, Lcom/ironsource/sdk/SSAPublisher;->setMediationState(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    .line 153
    iput-object p2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 155
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p1

    .line 158
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "demandSourceName"

    .line 160
    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionDepth"

    .line 161
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p1, p2}, Lcom/ironsource/sdk/SSAPublisher;->showRewardedVideo(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x1fd

    const-string v1, "Please call init before calling showRewardedVideo"

    invoke-direct {p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 0

    return-void
.end method
