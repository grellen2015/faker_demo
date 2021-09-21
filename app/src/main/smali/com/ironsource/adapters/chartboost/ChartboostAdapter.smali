.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;
    }
.end annotation


# static fields
.field private static final GitHash:Ljava/lang/String; = "10efb6721"

.field private static final VERSION:Ljava/lang/String; = "4.1.9"


# instance fields
.field private final AD_LOCATION:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final APP_SIGNATURE:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAlreadyCalledInit:Ljava/lang/Boolean;

.field private mConsentCollectingUserData:Ljava/lang/Boolean;

.field private mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

.field private mDidInitSuccessfully:Z

.field private mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;
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

    .line 55
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/lang/Boolean;

    .line 41
    iput-boolean p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    const-string p1, "appID"

    .line 43
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->APP_ID:Ljava/lang/String;

    const-string p1, "appSignature"

    .line 44
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->APP_SIGNATURE:Ljava/lang/String;

    const-string p1, "adLocation"

    .line 45
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->AD_LOCATION:Ljava/lang/String;

    .line 56
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDelegate:Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->isAdaptersDebugEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$802(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    return p1
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .locals 1

    .line 69
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

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
    .locals 2

    .line 61
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "Chartboost"

    const-string v1, "4.1.9"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.chartboost.sdk.CBImpressionActivity"

    .line 62
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "adLocation"

    .line 407
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Default"

    :cond_0
    return-object p1
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 123
    new-instance p3, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
    .locals 1

    .line 51
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fetchRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 189
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 185
    monitor-exit p0

    throw p1
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.1.9"

    return-object v0
.end method

.method public declared-synchronized initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string p2, "appID"

    .line 223
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "appSignature"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 230
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "IS"

    const-string p2, "appID"

    .line 231
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "appSignature"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-boolean p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    if-eqz p1, :cond_1

    .line 234
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    :try_start_1
    const-string p1, "Missing params"

    const-string p2, "Interstitial"

    .line 225
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 222
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string p2, "appID"

    .line 169
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "appSignature"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 176
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "RV"

    const-string p5, "appID"

    .line 177
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p5, "appSignature"

    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mDidInitSuccessfully:Z

    if-eqz p1, :cond_1

    .line 180
    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    const/4 p1, 0x0

    .line 171
    :try_start_1
    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 168
    monitor-exit p0

    throw p1
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 4

    .line 240
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loadInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 243
    new-instance v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 115
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 116
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    .line 107
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 108
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized setConsent(Z)V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mAlreadyCalledInit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->setPIDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->setPIDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    throw p1
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 3

    .line 253
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showInterstitial placementId: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 256
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 257
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 260
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string p2, "Interstitial"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 3

    .line 201
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getLocationId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showRewardedVideo placementId: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 204
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 205
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 209
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string p2, "Rewarded Video"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method
