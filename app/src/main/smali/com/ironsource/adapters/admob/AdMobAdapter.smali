.class public Lcom/ironsource/adapters/admob/AdMobAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "AdMobAdapter.java"


# static fields
.field public static BN_FAILED_TO_RELOAD_ERROR_CODE:I = 0x67

.field private static final CORE_SDK_VERSION:Ljava/lang/String; = "17.2.0"

.field private static final GitHash:Ljava/lang/String; = "310e12000"

.field public static IS_NOT_READY_ERROR_CODE:I = 0x68

.field public static RV_NOT_READY_ERROR_CODE:I = 0x65

.field private static final VERSION:Ljava/lang/String; = "4.3.3"


# instance fields
.field private final AD_UNIT_ID:Ljava/lang/String;

.field private final APP_ID:Ljava/lang/String;

.field private final IRONSOURCE_REQUEST_AGENT:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private mAdIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private mAdUnitIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAge:I

.field private mConsent:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mDidInitSdk:Ljava/lang/Boolean;

.field private mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRvAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const-string p1, "ironSource"

    .line 59
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->IRONSOURCE_REQUEST_AGENT:Ljava/lang/String;

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    const/4 p1, 0x0

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Ljava/lang/Boolean;

    const-string p1, "adUnitId"

    .line 75
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->AD_UNIT_ID:Ljava/lang/String;

    const-string p1, "appId"

    .line 76
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->APP_ID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    .line 88
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRvAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/admob/AdMobAdapter;I)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getInterstitialAd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->loadRewardedVideoAdFromAdmob(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createBannerAdListener(Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mBannerPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Landroid/app/Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRvAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createRewardedAdCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createInterstitialAdListener(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;

    move-result-object p0

    return-object p0
.end method

.method private createAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 4

    .line 627
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v1, "ironSource"

    .line 628
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 629
    iget v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 630
    iget v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 635
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "npa"

    const-string v3, "1"

    .line 636
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 642
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method private createBannerAdListener(Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 480
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$11;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;)V

    return-object v0
.end method

.method private createInterstitialAdListener(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    .locals 0

    .line 324
    new-instance p1, Lcom/ironsource/adapters/admob/AdMobAdapter$7;

    invoke-direct {p1, p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$7;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    return-object p1
.end method

.method private createRewardedAdCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
    .locals 1

    .line 258
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$5;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private createRewardedAdLoadCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 1

    .line 295
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$6;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private getAdSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/google/android/gms/ads/AdSize;
    .locals 2

    .line 459
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "SMART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "LARGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 473
    :pswitch_0
    new-instance p2, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    return-object p2

    :pswitch_1
    if-eqz p2, :cond_1

    .line 470
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    :goto_2
    return-object p1

    .line 467
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 464
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 461
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown error"

    return-object p1

    :pswitch_0
    const-string p1, "The ad request was successful, but no ad was returned due to lack of ad inventory"

    return-object p1

    :pswitch_1
    const-string p1, "The ad request was unsuccessful due to network connectivity"

    return-object p1

    :pswitch_2
    const-string p1, "The ad request was invalid"

    return-object p1

    :pswitch_3
    const-string p1, "Internal error"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .locals 2

    .line 99
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "AdMob"

    const-string v1, "4.3.3"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.ads.AdActivity"

    .line 100
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getInterstitialAd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    const-string v0, "adUnitId"

    .line 661
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized initSDK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdk:Ljava/lang/Boolean;

    .line 125
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initSDK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 129
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 130
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.google.android.gms.ads.APPLICATION_ID"

    .line 131
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 133
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can\'t find APPLICATION_ID in manifest.xml "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 136
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, v0

    .line 140
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    goto :goto_2

    .line 143
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 122
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized loadRewardedVideoAdFromAdmob(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 218
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 221
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rv loadAd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 222
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createRewardedAdLoadCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 217
    monitor-exit p0

    throw p1
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/admob/AdMobAdapter;
    .locals 1

    .line 83
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized destroyBanner(Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    .line 580
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 581
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$13;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 579
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$2;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit p0

    throw p1
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "17.2.0"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.3.3"

    return-object v0
.end method

.method public declared-synchronized initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 0

    monitor-enter p0

    .line 438
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActivity:Landroid/app/Activity;

    .line 439
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContext:Landroid/content/Context;

    const-string p1, "adUnitId"

    .line 441
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AdMobAdapter loadBanner adUnitId is empty"

    const-string p2, "Banner"

    .line 443
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 444
    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 448
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 449
    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$10;

    invoke-direct {p2, p0, p4, p5}, Lcom/ironsource/adapters/admob/AdMobAdapter$10;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 437
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 0

    monitor-enter p0

    .line 230
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActivity:Landroid/app/Activity;

    .line 231
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContext:Landroid/content/Context;

    const-string p1, "adUnitId"

    .line 233
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "Missing params: \'adUnitId\' "

    const-string p2, "Interstitial"

    .line 235
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    new-instance p3, Lcom/ironsource/adapters/admob/AdMobAdapter$4;

    invoke-direct {p3, p0, p4, p1, p5}, Lcom/ironsource/adapters/admob/AdMobAdapter$4;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 229
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 0

    monitor-enter p0

    .line 152
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActivity:Landroid/app/Activity;

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mContext:Landroid/content/Context;

    const-string p1, "adUnitId"

    .line 155
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Missing params: \'adUnitId\' "

    const-string p2, "Rewarded Video"

    .line 157
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/ironsource/adapters/admob/AdMobAdapter$1;

    invoke-direct {p2, p0, p4, p5}, Lcom/ironsource/adapters/admob/AdMobAdapter$1;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 151
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "adUnitId"

    .line 426
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 430
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 425
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "adUnitId"

    .line 190
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRvAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mRvAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    .line 542
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "AdMob loadBanner banner == null"

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "adUnitId"

    .line 546
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, "AdMob"

    .line 550
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 554
    :cond_1
    :try_start_2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 555
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$12;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/admob/AdMobAdapter$12;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    .line 540
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    monitor-enter p0

    .line 374
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 375
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$8;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 373
    monitor-exit p0

    throw p1
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V

    .line 185
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public declared-synchronized reloadBanner(Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "adUnitId"

    .line 602
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 605
    new-instance v2, Lcom/ironsource/adapters/admob/AdMobAdapter$14;

    invoke-direct {v2, p0, p1, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter$14;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 601
    monitor-exit p0

    throw p1
.end method

.method public setAge(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mAge:I

    return-void
.end method

.method protected declared-synchronized setConsent(Z)V
    .locals 0

    monitor-enter p0

    .line 670
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter;->mConsent:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 669
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    monitor-enter p0

    .line 402
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 403
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$9;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 401
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter$3;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 195
    monitor-exit p0

    throw p1
.end method
