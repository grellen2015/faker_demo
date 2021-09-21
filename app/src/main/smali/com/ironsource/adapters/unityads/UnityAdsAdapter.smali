.class Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "UnityAdsAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsListener;
.implements Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;


# static fields
.field private static final GitHash:Ljava/lang/String; = "7d0d9b16a"

.field private static final VERSION:Ljava/lang/String; = "4.1.6"


# instance fields
.field private final CONSENT_GDPR:Ljava/lang/String;

.field private final GAME_ID:Ljava/lang/String;

.field private final PLACEMENT_ID:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mConsentCollectingUserData:Ljava/lang/Boolean;

.field private mDidInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mISZoneReceivedFirstStatus:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnityAdsStorageLock:Ljava/lang/Object;

.field private mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const-string p1, "sourceId"

    .line 36
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->GAME_ID:Ljava/lang/String;

    const-string p1, "zoneId"

    .line 37
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->PLACEMENT_ID:Ljava/lang/String;

    const-string p1, "gdpr.consent"

    .line 38
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->CONSENT_GDPR:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    .line 45
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mUnityAdsStorageLock:Ljava/lang/Object;

    .line 54
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mISZoneReceivedFirstStatus:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .locals 1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .locals 4

    .line 62
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "UnityAds"

    const-string v1, "4.1.6"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.unity3d.services.ads.adunit.AdUnitActivity"

    const-string v1, "com.unity3d.services.ads.adunit.AdUnitTransparentActivity"

    const-string v2, "com.unity3d.services.ads.adunit.AdUnitTransparentSoftwareActivity"

    const-string v3, "com.unity3d.services.ads.adunit.AdUnitSoftwareActivity"

    .line 63
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private initSDK(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "initiating unityAds SDK in manual mode"

    .line 118
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    .line 122
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mUnityAdsStorageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    new-instance v3, Lcom/unity3d/ads/metadata/MediationMetaData;

    invoke-direct {v3, p1}, Lcom/unity3d/ads/metadata/MediationMetaData;-><init>(Landroid/content/Context;)V

    const-string v4, "IronSource"

    .line 124
    invoke-virtual {v3, v4}, Lcom/unity3d/ads/metadata/MediationMetaData;->setName(Ljava/lang/String;)V

    const-string v4, "4.1.6"

    .line 125
    invoke-virtual {v3, v4}, Lcom/unity3d/ads/metadata/MediationMetaData;->setVersion(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3}, Lcom/unity3d/ads/metadata/MediationMetaData;->commit()V

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {p1, p2, p0, v2, v1}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZ)V

    .line 133
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->isAdaptersDebugEnabled()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 140
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->setConsent(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 127
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    :goto_1
    return-void
.end method

.method private loadRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRewardedVideo placementId: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 231
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 4

    .line 111
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
    .locals 1

    .line 48
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "zoneId"

    .line 178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRewardedVideo with placementId: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fetchRewardedVideo: null listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    .line 190
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-eq v1, v2, :cond_2

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object p1

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 193
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.1.6"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    const-string p2, "sourceId"

    .line 238
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p5, :cond_0

    const-string p1, "Missing params"

    const-string p2, "Interstitial"

    .line 241
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void

    :cond_1
    const-string p3, "zoneId"

    .line 245
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initInterstitial gameId: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> placementId: <"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 249
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p5, :cond_2

    .line 250
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "sourceId"

    .line 253
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;)V

    if-eqz p5, :cond_3

    .line 256
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    :cond_3
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 1

    const-string p2, "sourceId"

    .line 150
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "zoneId"

    .line 151
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 152
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initRewardedVideo gameId: <"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> placementId: <"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 155
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " initRewardedVideo: null listener"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 159
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    .line 160
    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void

    .line 164
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 165
    iget-object p4, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p3, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_2
    iget-object p4, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mISZoneReceivedFirstStatus:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p4, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 169
    invoke-static {p3}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result p4

    invoke-interface {p5, p4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 172
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "zoneId"

    .line 299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInterstitialReady placementId <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">  state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "zoneId"

    .line 226
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 3

    const-string v0, "zoneId"

    .line 262
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadInterstitial placementId <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 267
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "null listener for placement Id <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 271
    :cond_0
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;)V

    .line 274
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-ne v0, v1, :cond_1

    .line 275
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-ne v0, v1, :cond_3

    .line 278
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad unavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onUnityAdsClick(Ljava/lang/String;)V
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnityAdsClick placementId: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_1

    .line 369
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnityAdsError(errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", errorMessage: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnityAdsFinish placementId: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> finishState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_1

    .line 337
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 339
    sget-object p1, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {p2, p1}, Lcom/unity3d/ads/UnityAds$FinishState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 340
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    .line 341
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    .line 343
    :cond_0
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    goto :goto_0

    .line 346
    :cond_1
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_2

    .line 348
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$PlacementState;Lcom/unity3d/ads/UnityAds$PlacementState;)V
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnityAdsPlacementStateChanged placementId: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is Ready: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p3, p2}, Lcom/unity3d/ads/UnityAds$PlacementState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/unity3d/ads/UnityAds$PlacementState;->WAITING:Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {p3, p2}, Lcom/unity3d/ads/UnityAds$PlacementState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mISZoneReceivedFirstStatus:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 385
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz p2, :cond_1

    .line 387
    sget-object p1, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {p3, p1}, Lcom/unity3d/ads/UnityAds$PlacementState;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p2, :cond_3

    .line 391
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/UnityAds$PlacementState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_0

    .line 395
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " placement state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/unity3d/ads/UnityAds$PlacementState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnityAdsReady placementId <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnityAdsStart placementId <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 319
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_1

    .line 323
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 324
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setConsent(Z)V
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConsent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mUnityAdsStorageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    new-instance v1, Lcom/unity3d/ads/metadata/MetaData;

    iget-object v2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    const-string v2, "gdpr.consent"

    .line 102
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v1}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    .line 104
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 106
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    const-string v0, "zoneId"

    .line 286
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitial placementId <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "Interstitial"

    .line 293
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 3

    const-string v0, "zoneId"

    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRewardedVideo placementId: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->log(Ljava/lang/String;)V

    .line 203
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mUnityAdsStorageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    new-instance v1, Lcom/unity3d/ads/metadata/PlayerMetaData;

    iget-object v2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/unity3d/ads/metadata/PlayerMetaData;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/metadata/PlayerMetaData;->setServerId(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Lcom/unity3d/ads/metadata/PlayerMetaData;->commit()V

    .line 209
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Rewarded Video"

    .line 215
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 220
    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_3
    return-void
.end method
