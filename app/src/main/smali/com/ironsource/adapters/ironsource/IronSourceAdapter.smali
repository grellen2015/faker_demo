.class public Lcom/ironsource/adapters/ironsource/IronSourceAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "IronSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;,
        Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;
    }
.end annotation


# static fields
.field private static final IS_LOAD_EXCEPTION:I = 0x3e8

.field private static final IS_SHOW_EXCEPTION:I = 0x3e9

.field private static final RV_LOAD_EXCEPTION:I = 0x3ea

.field private static final RV_SHOW_EXCEPTION:I = 0x3eb

.field private static final VERSION:Ljava/lang/String; = "6.10.2"


# instance fields
.field private final ADM_KEY:Ljava/lang/String;

.field private final APPLICATION_USER_AGE_GROUP:Ljava/lang/String;

.field private final APPLICATION_USER_GENDER:Ljava/lang/String;

.field private final CUSTOM_SEGMENT:Ljava/lang/String;

.field private final DEMAND_SOURCE_NAME:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mDidInitSdk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediationSegment:Ljava/lang/String;

.field private mUserAgeGroup:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const-string v0, "controllerUrl"

    .line 41
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

    const-string v0, "debugMode"

    .line 42
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

    const-string v0, "controllerConfig"

    .line 43
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

    const-string v0, "applicationUserGender"

    .line 45
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->APPLICATION_USER_GENDER:Ljava/lang/String;

    const-string v0, "applicationUserAgeGroup"

    .line 46
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->APPLICATION_USER_AGE_GROUP:Ljava/lang/String;

    const-string v0, "SDKPluginType"

    .line 47
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    const-string v0, "custom_Segment"

    .line 48
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->CUSTOM_SEGMENT:Ljava/lang/String;

    const-string v0, "adm"

    .line 49
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->ADM_KEY:Ljava/lang/String;

    const-string v0, "demandSourceName"

    .line 51
    iput-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->DEMAND_SOURCE_NAME:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": new instance"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Ljava/lang/String;)V

    .line 70
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserGender:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mMediationSegment:Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDidInitSdk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "demandSourceName"

    .line 591
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "demandSourceName"

    .line 592
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getInitParams()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "applicationUserAgeGroup"

    .line 151
    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserGender:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "applicationUserGender"

    .line 155
    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserGender:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SDKPluginType"

    .line 160
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mMediationSegment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "custom_Segment"

    .line 164
    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mMediationSegment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "initSDK: null activity"

    .line 398
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDidInitSdk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->isAdaptersDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 405
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    goto :goto_0

    :cond_1
    const-string v0, "debugMode"

    .line 407
    invoke-virtual {p4, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    :goto_0
    const-string v0, "controllerUrl"

    .line 410
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    const-string v0, "controllerConfig"

    const-string v1, ""

    .line 411
    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mContext:Landroid/content/Context;

    .line 413
    invoke-direct {p0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getInitParams()Ljava/util/HashMap;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/ironsource/sdk/IronSourceNetwork;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 4

    .line 608
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IronSourceAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private log(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 612
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IronSourceAdapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 4

    .line 604
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IronSourceAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/ironsource/IronSourceAdapter;
    .locals 1

    .line 64
    new-instance v0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public earlyInit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "earlyInit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "fetchRewardedVideo"

    .line 326
    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    if-nez p1, :cond_0

    const-string p1, "fetchRewardedVideo exception: null adInstance "

    .line 330
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchRewardedVideo exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getAdListener()Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "fetch exception"

    .line 340
    invoke-interface {p1, v0}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialLoadFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/sdk/IronSourceNetwork;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "token"

    .line 187
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "IS bidding token is null"

    .line 190
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    const-string v0, "token"

    const-string v1, ""

    .line 191
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public getRvBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 275
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/sdk/IronSourceNetwork;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "token"

    .line 278
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "RV bidding token is null"

    .line 281
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    const-string v0, "token"

    const-string v1, ""

    .line 282
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.10.2"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 1

    const-string v0, "initInterstitial"

    .line 211
    invoke-direct {p0, p4, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 213
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance p2, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    new-instance p3, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;

    invoke-direct {p3, p0, p5, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;-><init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V

    .line 215
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->build()Lcom/ironsource/sdk/IronSourceAdInstance;

    move-result-object p2

    .line 216
    iget-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    return-void
.end method

.method public initInterstitialForBidding(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 1

    const-string v0, "initInterstitialForBidding"

    .line 199
    invoke-direct {p0, p4, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 201
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance p2, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    new-instance p3, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;

    invoke-direct {p3, p0, p5, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;-><init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V

    .line 203
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->setInAppBidding()Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    move-result-object p2

    .line 204
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->build()Lcom/ironsource/sdk/IronSourceAdInstance;

    move-result-object p2

    .line 205
    iget-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 1

    const-string v0, "initRewardedVideo"

    .line 314
    invoke-direct {p0, p4, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 316
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 317
    new-instance p2, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    new-instance p3, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;

    invoke-direct {p3, p0, p5, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;-><init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V

    .line 318
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->setRewarded()Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    move-result-object p2

    .line 319
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->build()Lcom/ironsource/sdk/IronSourceAdInstance;

    move-result-object p2

    .line 320
    iget-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->fetchRewardedVideo(Lorg/json/JSONObject;)V

    return-void
.end method

.method public initRvForBidding(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 1

    const-string v0, "initRvForBidding"

    .line 289
    invoke-direct {p0, p4, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 291
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 292
    new-instance p2, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    new-instance p3, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;

    invoke-direct {p3, p0, p5, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;-><init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V

    .line 293
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->setInAppBidding()Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    move-result-object p2

    .line 294
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->setRewarded()Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    move-result-object p2

    .line 295
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->build()Lcom/ironsource/sdk/IronSourceAdInstance;

    move-result-object p2

    .line 296
    iget-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoInitSuccess()V

    return-void
.end method

.method public initRvForDemandOnly(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 1

    const-string v0, "initRvForDemandOnly"

    .line 303
    invoke-direct {p0, p4, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 305
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance p2, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    new-instance p3, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p5, p1, p4}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;-><init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;Z)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;-><init>(Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V

    .line 307
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->setRewarded()Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;

    move-result-object p2

    .line 308
    invoke-virtual {p2}, Lcom/ironsource/sdk/IronSourceAdInstanceBuilder;->build()Lcom/ironsource/sdk/IronSourceAdInstance;

    move-result-object p2

    .line 309
    iget-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    if-eqz p1, :cond_0

    .line 265
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->isAdAvailableForInstance(Lcom/ironsource/sdk/IronSourceAdInstance;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    if-eqz p1, :cond_0

    .line 390
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->isAdAvailableForInstance(Lcom/ironsource/sdk/IronSourceAdInstance;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    const-string v0, "loadInterstitial"

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    .line 240
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadInterstitial exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3e8

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V
    .locals 2

    const-string v0, "loadInterstitial"

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 224
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adm"

    .line 225
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    .line 227
    invoke-static {p1, v0}, Lcom/ironsource/sdk/IronSourceNetwork;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadInterstitial for bidding exception "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    .line 230
    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x3e8

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public loadVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V
    .locals 2

    const-string v0, "loadVideo (RV in bidding mode)"

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 361
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adm"

    .line 362
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    .line 364
    invoke-static {p1, v0}, Lcom/ironsource/sdk/IronSourceNetwork;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadVideo exception "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    .line 367
    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x3ea

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 p1, 0x0

    .line 368
    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :goto_0
    return-void
.end method

.method public loadVideoForDemandOnly(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 2

    const-string v0, "loadVideoForDemandOnly"

    .line 347
    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    .line 350
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadVideoForDemandOnly exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3ea

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public setAge(I)V
    .locals 1

    const/16 v0, 0xd

    if-lt p1, v0, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    const-string p1, "1"

    .line 117
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    const-string p1, "2"

    .line 119
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    const/16 v0, 0x18

    if-gt p1, v0, :cond_2

    const-string p1, "3"

    .line 121
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v0, 0x19

    if-lt p1, v0, :cond_3

    const/16 v0, 0x22

    if-gt p1, v0, :cond_3

    const-string p1, "4"

    .line 123
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v0, 0x23

    if-lt p1, v0, :cond_4

    const/16 v0, 0x2c

    if-gt p1, v0, :cond_4

    const-string p1, "5"

    .line 125
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_5

    const/16 v0, 0x36

    if-gt p1, v0, :cond_5

    const-string p1, "6"

    .line 127
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/16 v0, 0x37

    if-lt p1, v0, :cond_6

    const/16 v0, 0x40

    if-gt p1, v0, :cond_6

    const-string p1, "7"

    .line 129
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/16 v0, 0x41

    if-le p1, v0, :cond_7

    const/16 v0, 0x78

    if-gt p1, v0, :cond_7

    const-string p1, "8"

    .line 131
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string p1, "0"

    .line 133
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserAgeGroup:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected setConsent(Z)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConsent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "gdprConsentStatus"

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-static {v0}, Lcom/ironsource/sdk/IronSourceNetwork;->updateConsentInfo(Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConsent exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mUserGender:Ljava/lang/String;

    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mMediationSegment:Ljava/lang/String;

    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 3

    const-string v0, "showInterstitial"

    .line 249
    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 251
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 252
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sessionDepth"

    .line 253
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToISAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    .line 255
    invoke-static {p1, v1}, Lcom/ironsource/sdk/IronSourceNetwork;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitial exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3e9

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 3

    const-string v0, "showRewardedVideo"

    .line 374
    invoke-direct {p0, p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->log(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->mDemandSourceToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->getDemandSourceName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/IronSourceAdInstance;

    .line 377
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sessionDepth"

    .line 379
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {p1, v1}, Lcom/ironsource/sdk/IronSourceNetwork;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRewardedVideo exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->logError(Ljava/lang/String;)V

    .line 383
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3eb

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method
