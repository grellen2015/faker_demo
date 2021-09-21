.class Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;
.implements Lcom/ironsource/sdk/listeners/OnOfferWallListener;
.implements Lcom/ironsource/sdk/listeners/OnInterstitialListener;
.implements Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
.implements Lcom/ironsource/sdk/listeners/OnBannerListener;


# static fields
.field private static final VERSION:Ljava/lang/String; = "6.10.2"

.field private static mUIThreadHandler:Landroid/os/Handler;


# instance fields
.field private final AD_VISIBLE_EVENT_NAME:Ljava/lang/String;

.field private final APPLICATION_PRIVATE_KEY:Ljava/lang/String;

.field private final APPLICATION_USER_AGE_GROUP:Ljava/lang/String;

.field private final APPLICATION_USER_GENDER:Ljava/lang/String;

.field private final CAMPAIGN_ID:Ljava/lang/String;

.field private final CLIENT_SIDE_CALLBACKS:Ljava/lang/String;

.field private final CUSTOM_PARAM_PREFIX:Ljava/lang/String;

.field private final CUSTOM_SEGMENT:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

.field private final ITEM_COUNT:Ljava/lang/String;

.field private final ITEM_NAME:Ljava/lang/String;

.field private final ITEM_SIGNATURE:Ljava/lang/String;

.field private final LANGUAGE:Ljava/lang/String;

.field private final MAX_VIDEO_LENGTH:Ljava/lang/String;

.field private final OW_PLACEMENT_ID:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private final SUPERSONIC_ADS:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private mConsent:Z

.field private mDidSetConsent:Z

.field private mDidSetInitParams:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRVAvailable:Z

.field private mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

.field private mMediationSegment:Ljava/lang/String;

.field private mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

.field private mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

.field private mUserAgeGroup:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const-string p1, "timestamp"

    .line 59
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->TIMESTAMP:Ljava/lang/String;

    const-string p1, "itemSignature"

    .line 60
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->ITEM_SIGNATURE:Ljava/lang/String;

    const-string p1, "SDKPluginType"

    .line 61
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    const-string p1, "placementId"

    .line 62
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->OW_PLACEMENT_ID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsRVAvailable:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mDidSetInitParams:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "SupersonicAds"

    .line 77
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->SUPERSONIC_ADS:Ljava/lang/String;

    const-string p1, "controllerUrl"

    .line 79
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

    const-string p1, "debugMode"

    .line 80
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

    const-string p1, "controllerConfig"

    .line 81
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

    const-string p1, "applicationUserGender"

    .line 83
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->APPLICATION_USER_GENDER:Ljava/lang/String;

    const-string p1, "applicationUserAgeGroup"

    .line 84
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->APPLICATION_USER_AGE_GROUP:Ljava/lang/String;

    const-string p1, "language"

    .line 86
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->LANGUAGE:Ljava/lang/String;

    const-string p1, "maxVideoLength"

    .line 87
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->MAX_VIDEO_LENGTH:Ljava/lang/String;

    const-string p1, "campaignId"

    .line 88
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->CAMPAIGN_ID:Ljava/lang/String;

    const-string p1, "custom_"

    .line 89
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->CUSTOM_PARAM_PREFIX:Ljava/lang/String;

    const-string p1, "custom_Segment"

    .line 90
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->CUSTOM_SEGMENT:Ljava/lang/String;

    const-string p1, "itemName"

    .line 92
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->ITEM_NAME:Ljava/lang/String;

    const-string p1, "itemCount"

    .line 93
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->ITEM_COUNT:Ljava/lang/String;

    const-string p1, "privateKey"

    .line 94
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->APPLICATION_PRIVATE_KEY:Ljava/lang/String;

    const-string p1, "useClientSideCallbacks"

    .line 96
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->CLIENT_SIDE_CALLBACKS:Ljava/lang/String;

    const-string p1, "impressions"

    .line 97
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->AD_VISIBLE_EVENT_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/sdk/SSAPublisher;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getRewardedVideoExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveBannerSmash:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveBannerSmash:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveBannerSmash:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mDidSetConsent:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mConsent:Z

    return p0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->applyConsent(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getInterstitialExtraParams()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getBannerExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    return-object p1
.end method

.method private addItemNameCountSignature(Ljava/util/HashMap;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "itemName"

    .line 610
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemCount"

    const/4 v2, -0x1

    .line 611
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "privateKey"

    .line 612
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "itemName"

    .line 619
    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "itemCount"

    .line 627
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v3, :cond_3

    .line 631
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCurrentTimestamp()I

    move-result v2

    const-string v3, "timestamp"

    .line 632
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "itemSignature"

    .line 633
    invoke-direct {p0, v2, v0, v1, p2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 637
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, " addItemNameCountSignature"

    invoke-virtual {p2, v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private applyConsent(Z)V
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-nez v0, :cond_0

    return-void

    .line 1072
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "gdprConsentStatus"

    .line 1074
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "demandSourceName"

    .line 1075
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1077
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1079
    :goto_0
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p1, v0}, Lcom/ironsource/sdk/SSAPublisher;->updateConsentInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method private createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;
    .locals 6

    .line 665
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "SMART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "LARGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0x5a

    const/16 v4, 0x32

    const/16 v5, 0x140

    packed-switch v1, :pswitch_data_0

    if-eqz p3, :cond_6

    const-string p1, "SupersonicAds"

    .line 700
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_4

    .line 687
    :pswitch_0
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v1

    .line 688
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p2

    if-lt v1, v5, :cond_2

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, p2

    move v5, v1

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    const-string p1, "SupersonicAds"

    .line 691
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_3
    return-object v2

    .line 681
    :pswitch_1
    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p3, 0x2d8

    const/16 v5, 0x2d8

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    :pswitch_2
    const/16 v3, 0x32

    .line 705
    :goto_3
    :pswitch_3
    invoke-static {p1, v5}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p2

    .line 706
    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p3

    .line 707
    new-instance v1, Lcom/ironsource/sdk/ISAdSize;

    invoke-direct {v1, p2, p3, v0}, Lcom/ironsource/sdk/ISAdSize;-><init>(IILjava/lang/String;)V

    .line 709
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p2, p1, v1}, Lcom/ironsource/sdk/SSAPublisher;->createBanner(Landroid/app/Activity;Lcom/ironsource/sdk/ISAdSize;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_4
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_4
        0x44dc31b -> :sswitch_3
        0x4b59da9 -> :sswitch_2
        0x7458732c -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createMinimumOfferCommissionSig(DLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createUserCreationDateSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBannerExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private getGenenralExtraParams()Ljava/util/HashMap;
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

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "applicationUserAgeGroup"

    .line 527
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserGender:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "applicationUserGender"

    .line 531
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserGender:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SDKPluginType"

    .line 535
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
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

    .line 1104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1106
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "applicationUserAgeGroup"

    .line 1107
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserGender:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "applicationUserGender"

    .line 1111
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserGender:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SDKPluginType"

    .line 1116
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :cond_2
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mMediationSegment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "custom_Segment"

    .line 1120
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mMediationSegment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .locals 3

    .line 111
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "SupersonicAds"

    const-string v1, "6.10.2"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.ironsource.sdk.controller.ControllerActivity"

    const-string v1, "com.ironsource.sdk.controller.InterstitialActivity"

    const-string v2, "com.ironsource.sdk.controller.OpenUrlActivity"

    .line 112
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getInterstitialExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getOfferwallExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "language"

    .line 584
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "language"

    .line 586
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_0
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getClientSideCallbacks()Z

    move-result v1

    const-string v2, "useClientSideCallbacks"

    .line 591
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getOfferwallCustomParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 595
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 598
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private getRewardedVideoExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 541
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "language"

    .line 544
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "language"

    .line 546
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "maxVideoLength"

    .line 550
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "maxVideoLength"

    .line 552
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "campaignId"

    .line 556
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "campaignId"

    .line 558
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mMediationSegment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "custom_Segment"

    .line 562
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mMediationSegment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 569
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getRewardedVideoCustomParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 570
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 571
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_4
    return-object v0
.end method

.method private setParamsBeforeInit(Lorg/json/JSONObject;)V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mDidSetInitParams:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "controllerUrl"

    .line 510
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->isAdaptersDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 513
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    goto :goto_0

    :cond_0
    const-string v0, "debugMode"

    .line 515
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    :goto_0
    const-string v0, "controllerConfig"

    const-string v1, ""

    .line 518
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;
    .locals 1

    .line 103
    new-instance v0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected addBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyBanner(Lorg/json/JSONObject;)V
    .locals 0

    .line 499
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-virtual {p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->performCleanup()V

    const/4 p1, 0x0

    .line 501
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    :cond_0
    return-void
.end method

.method public earlyInit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "earlyInit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1089
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": null activity"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->isAdaptersDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 1093
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    goto :goto_0

    :cond_1
    const-string v0, "debugMode"

    const/4 v1, 0x0

    .line 1095
    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    :goto_0
    const-string v0, "controllerUrl"

    .line 1098
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    const-string v0, "controllerConfig"

    const-string v1, ""

    .line 1099
    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getInitParams()Ljava/util/HashMap;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/ironsource/sdk/IronSourceNetwork;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 3

    .line 215
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": fetchRewardedVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 217
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    .line 219
    iget-boolean v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsRVAvailable:Z

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .line 124
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfferwallCredits()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 373
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v2, v0, v1, p0}, Lcom/ironsource/sdk/SSAPublisher;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    goto :goto_0

    .line 378
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "Please call init before calling getOfferwallCredits"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.10.2"

    return-object v0
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 8

    .line 404
    sget-object p5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": initBanners"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p5, v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 406
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->setParamsBeforeInit(Lorg/json/JSONObject;)V

    .line 407
    new-instance p5, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$4;

    move-object v2, p5

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$4;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    .line 263
    sget-object p5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": initInterstitial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p5, v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 265
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->setParamsBeforeInit(Lorg/json/JSONObject;)V

    .line 266
    new-instance p4, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$2;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$2;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    .line 344
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": initOfferwall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 346
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->setParamsBeforeInit(Lorg/json/JSONObject;)V

    .line 347
    new-instance v0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 8

    .line 181
    sget-object p5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": initRewardedVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p5, v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 183
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->setParamsBeforeInit(Lorg/json/JSONObject;)V

    .line 184
    new-instance p5, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$1;

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$1;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 1

    .line 332
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/sdk/SSAPublisher;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOfferwallAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .locals 0

    .line 255
    iget-boolean p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsRVAvailable:Z

    return p1
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 2

    .line 431
    :try_start_0
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-nez p2, :cond_1

    .line 432
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "Please call initBanner before calling loadBanner"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 433
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v0, :cond_0

    const-string v1, "Load was called before Init"

    .line 435
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 441
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "SupersonicAds loadBanner banner == null"

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 444
    :cond_2
    iput-object p3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveBannerSmash:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 447
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    if-eqz p2, :cond_3

    .line 448
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-virtual {p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->performCleanup()V

    const/4 p2, 0x0

    .line 449
    iput-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    .line 451
    :cond_3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "demandSourceName"

    .line 452
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "productType"

    .line 453
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    sget-object p3, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUIThreadHandler:Landroid/os/Handler;

    if-nez p3, :cond_4

    .line 456
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p3, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUIThreadHandler:Landroid/os/Handler;

    .line 460
    :cond_4
    sget-object p3, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$5;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 481
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz p1, :cond_0

    .line 289
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "demandSourceName"

    .line 291
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 293
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 295
    :goto_0
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p2, p1}, Lcom/ironsource/sdk/SSAPublisher;->loadInterstitial(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 297
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p2, "Please call initInterstitial before calling loadInterstitial"

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 299
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p2, :cond_1

    const-string v0, "Load was called before Init"

    .line 301
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public onBannerClick()V
    .locals 4

    .line 1011
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onBannerAdClicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1013
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveBannerSmash:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveBannerSmash:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method

.method public onBannerInitFailed(Ljava/lang/String;)V
    .locals 4

    .line 1001
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onBannerInitFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1003
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v1, :cond_0

    const-string v2, "Banner"

    .line 1005
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBannerInitSuccess()V
    .locals 4

    .line 991
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onBannerInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 993
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v1, :cond_0

    .line 995
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBannerLoadFail(Ljava/lang/String;)V
    .locals 4

    .line 1032
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onBannerLoadFail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1034
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v1, :cond_0

    const-string v2, "Banner"

    .line 1036
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBannerLoadSuccess()V
    .locals 5

    .line 1019
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onBannerLoadSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1021
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    if-eqz v2, :cond_0

    .line 1023
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->getAdViewSize()Lcom/ironsource/sdk/ISAdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/ISAdSize;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->getAdViewSize()Lcom/ironsource/sdk/ISAdSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/ISAdSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 1024
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1025
    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-interface {v1, v3, v2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGetOWCreditsFailed(Ljava/lang/String;)V
    .locals 4

    .line 979
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onGetOWCreditsFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 981
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 982
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 983
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdRewarded(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onInterstitialClick()V
    .locals 4

    .line 888
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialAdClicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 890
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public onInterstitialClose()V
    .locals 4

    .line 863
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 865
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    :cond_0
    return-void
.end method

.method public onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 897
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialEventNotificationReceived: "

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

    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 898
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "impressions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_0

    .line 899
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdVisible()V

    :cond_0
    return-void
.end method

.method public onInterstitialInitFailed(Ljava/lang/String;)V
    .locals 4

    .line 821
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialInitFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 822
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 824
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 4

    .line 812
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 813
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 815
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;)V
    .locals 4

    .line 840
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialAdLoadFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 842
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 844
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInterstitialLoadSuccess()V
    .locals 4

    .line 830
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialLoadSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 832
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 834
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInterstitialOpen()V
    .locals 4

    .line 850
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialAdOpened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 852
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    :cond_0
    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;)V
    .locals 4

    .line 879
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialAdShowFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 881
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v1, "Interstitial"

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 4

    .line 871
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onInterstitialAdShowSucceeded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 873
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    :cond_0
    return-void
.end method

.method public onOWAdClosed()V
    .locals 4

    .line 971
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onOWAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 973
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallClosed()V

    :cond_0
    return-void
.end method

.method public onOWAdCredited(IIZ)Z
    .locals 4

    .line 964
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onOWAdCredited "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 966
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOWShowFail(Ljava/lang/String;)V
    .locals 4

    .line 949
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onOWShowFail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 951
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 952
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 953
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onOWShowSuccess(Ljava/lang/String;)V
    .locals 4

    .line 936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 937
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onOWShowSuccess()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 939
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onOWShowSuccess(placementId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 942
    :goto_0
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz p1, :cond_1

    .line 943
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallOpened()V

    :cond_1
    return-void
.end method

.method public onOfferwallEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 929
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :onOfferwallEventNotificationReceived "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 929
    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onOfferwallInitFail(Ljava/lang/String;)V
    .locals 4

    .line 918
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onOfferwallInitFail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 920
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 921
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 922
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 4

    .line 909
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onOfferwallInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 911
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, v3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(Z)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRVAdClicked()V
    .locals 4

    .line 759
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRVAdClicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 761
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    :cond_0
    return-void
.end method

.method public onRVAdClosed()V
    .locals 4

    .line 794
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRVAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 796
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public onRVAdCredited(I)V
    .locals 3

    .line 785
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": onRVAdCredited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 787
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz p1, :cond_0

    .line 788
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    :cond_0
    return-void
.end method

.method public onRVAdOpened()V
    .locals 4

    .line 802
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRVAdOpened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 804
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public onRVEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 768
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRVEventNotificationReceived: "

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

    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 770
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "impressions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz p1, :cond_1

    .line 771
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdVisible()V

    :cond_1
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .locals 3

    .line 749
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": onRVInitFail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 751
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 753
    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .locals 5

    .line 728
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRVInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 733
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

    .line 735
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, ": onRVInitSuccess: parseInt()"

    invoke-virtual {v1, v2, v4, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 739
    :cond_0
    iput-boolean v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsRVAvailable:Z

    .line 741
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v1, :cond_1

    .line 743
    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onRVNoMoreOffers()V
    .locals 4

    .line 716
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRVNoMoreOffers "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsRVAvailable:Z

    .line 720
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v2, :cond_0

    .line 722
    invoke-interface {v2, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .locals 4

    .line 777
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRVShowFail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 779
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fd

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public reloadBanner(Lorg/json/JSONObject;)V
    .locals 2

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->loadAd(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reloadBanner Failed to reload banner ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected removeBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAge(I)V
    .locals 1

    const/16 v0, 0xd

    if-lt p1, v0, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    const-string p1, "1"

    .line 147
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    const-string p1, "2"

    .line 149
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    const/16 v0, 0x18

    if-gt p1, v0, :cond_2

    const-string p1, "3"

    .line 151
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v0, 0x19

    if-lt p1, v0, :cond_3

    const/16 v0, 0x22

    if-gt p1, v0, :cond_3

    const-string p1, "4"

    .line 153
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v0, 0x23

    if-lt p1, v0, :cond_4

    const/16 v0, 0x2c

    if-gt p1, v0, :cond_4

    const-string p1, "5"

    .line 155
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_5

    const/16 v0, 0x36

    if-gt p1, v0, :cond_5

    const-string p1, "6"

    .line 157
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/16 v0, 0x37

    if-lt p1, v0, :cond_6

    const/16 v0, 0x40

    if-gt p1, v0, :cond_6

    const-string p1, "7"

    .line 159
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/16 v0, 0x41

    if-le p1, v0, :cond_7

    const/16 v0, 0x78

    if-gt p1, v0, :cond_7

    const-string p1, "8"

    .line 161
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string p1, "0"

    .line 163
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserAgeGroup:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected setConsent(Z)V
    .locals 4

    .line 1059
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": setConsent ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1061
    iput-boolean v3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mDidSetConsent:Z

    .line 1062
    iput-boolean p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mConsent:Z

    .line 1063
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->applyConsent(Z)V

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mUserGender:Ljava/lang/String;

    return-void
.end method

.method public setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mMediationSegment:Ljava/lang/String;

    return-void
.end method

.method protected setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V
    .locals 4

    .line 1052
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 1053
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": setMediationState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1054
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->getValue()I

    move-result p1

    invoke-interface {v0, p2, v1, p1}, Lcom/ironsource/sdk/SSAPublisher;->setMediationState(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    .line 308
    iput-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 310
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    .line 311
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p1

    .line 313
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "demandSourceName"

    .line 315
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionDepth"

    .line 316
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 321
    :goto_0
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p1, p2}, Lcom/ironsource/sdk/SSAPublisher;->showInterstitial(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 323
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "Please call loadInterstitial before calling showInterstitial"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 325
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_1

    .line 326
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string p2, "Interstitial"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public showOfferwall(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 383
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "placementId"

    .line 385
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz p1, :cond_1

    .line 389
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p1, p2}, Lcom/ironsource/sdk/SSAPublisher;->showOfferWall(Ljava/util/Map;)V

    goto :goto_0

    .line 391
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p2, "Please call init before calling showOfferwall"

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 2

    .line 226
    iput-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 228
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz p1, :cond_0

    .line 229
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result p1

    .line 231
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "demandSourceName"

    .line 233
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionDepth"

    .line 234
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {p1, p2}, Lcom/ironsource/sdk/SSAPublisher;->showRewardedVideo(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mIsRVAvailable:Z

    .line 243
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz p2, :cond_1

    .line 244
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mActiveRewardedVideoSmash:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string v0, "Rewarded Video"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 246
    :cond_1
    iget-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAllRewardedVideoSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
