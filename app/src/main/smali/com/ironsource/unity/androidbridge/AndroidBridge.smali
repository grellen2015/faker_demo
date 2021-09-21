.class public Lcom/ironsource/unity/androidbridge/AndroidBridge;
.super Ljava/lang/Object;
.source "AndroidBridge.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/OfferwallListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/SegmentListener;


# static fields
.field private static final GitHash:Ljava/lang/String; = "9f1b6ea"

.field private static final mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;


# instance fields
.field private final BANNER_POSITION_TOP:I

.field private final ERROR_CODE:Ljava/lang/String;

.field private final ERROR_DESCRIPTION:Ljava/lang/String;

.field private final IRONSOURCE_EVENT_GAMEOBJECT:Ljava/lang/String;

.field private final PLACEMENT_NAME:Ljava/lang/String;

.field private final REWARD_AMOUNT:Ljava/lang/String;

.field private final REWARD_NAME:Ljava/lang/String;

.field private mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mBannerContainer:Landroid/widget/FrameLayout;

.field private mIsBannerLoaded:Z

.field private mIsInitBannerCalled:Z

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-direct {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;-><init>()V

    sput-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IronSourceEvents"

    .line 45
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->IRONSOURCE_EVENT_GAMEOBJECT:Ljava/lang/String;

    const-string v0, "error_code"

    .line 46
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->ERROR_CODE:Ljava/lang/String;

    const-string v0, "error_description"

    .line 47
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->ERROR_DESCRIPTION:Ljava/lang/String;

    const-string v0, "placement_name"

    .line 49
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->PLACEMENT_NAME:Ljava/lang/String;

    const-string v0, "reward_name"

    .line 50
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->REWARD_NAME:Ljava/lang/String;

    const-string v0, "reward_amount"

    .line 51
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->REWARD_AMOUNT:Ljava/lang/String;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->BANNER_POSITION_TOP:I

    .line 69
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 70
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 71
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 72
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 73
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 74
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;

    .line 78
    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    .line 80
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    return-void
.end method

.method static synthetic access$000()Lcom/ironsource/unity/androidbridge/AndroidBridge;
    .locals 1

    .line 43
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ironsource/unity/androidbridge/AndroidBridge;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBannerContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ironsource/unity/androidbridge/AndroidBridge;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getBannerSize(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/ironsource/unity/androidbridge/AndroidBridge;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ironsource/unity/androidbridge/AndroidBridge;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getBannerSize(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    const-string v0, "CUSTOM"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(II)V

    return-object p1

    .line 430
    :cond_0
    new-instance p2, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {p2, p1}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/unity/androidbridge/AndroidBridge;
    .locals 2

    const-class v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 9

    .line 342
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v8, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private parseErrorToEvent(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 868
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private sendUnityEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    :cond_1
    const-string v0, "IronSourceEvents"

    .line 98
    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearRewardedVideoServerParams()V
    .locals 0

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->clearRewardedVideoServerParameters()V

    return-void
.end method

.method public destroyBanner()V
    .locals 3

    .line 435
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$3;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public displayBanner()V
    .locals 3

    .line 457
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$4;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$4;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 111
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$1;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$1;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 118
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    const-wide/16 v2, 0x1

    .line 121
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 848
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 851
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 855
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 857
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 861
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getOfferwallCredits()V
    .locals 0

    .line 325
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->getOfferwallCredits()V

    return-void
.end method

.method public getPlacementInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 237
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "placement_name"

    .line 240
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_name"

    .line 241
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_amount"

    .line 242
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getUnityActivity()Landroid/app/Activity;
    .locals 1

    .line 84
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public hideBanner()V
    .locals 3

    .line 476
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$5;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$5;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    .line 176
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p2, v2

    .line 183
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_0
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_1
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_2
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 190
    iput-boolean v3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    .line 191
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public initISDemandOnly(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p2, v2

    .line 202
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_0
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_1
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_2
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method

.method public isBannerPlacementCapped(Ljava/lang/String;)Z
    .locals 0

    .line 495
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isBannerPlacementCapped(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .locals 0

    .line 307
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 0

    .line 271
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .locals 0

    .line 293
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialPlacementCapped(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInterstitialReady()Z
    .locals 1

    .line 289
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result v0

    return v0
.end method

.method public isOfferwallAvailable()Z
    .locals 1

    .line 321
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isOfferwallAvailable()Z

    move-result v0

    return v0
.end method

.method public isRewardedVideoAvailable()Z
    .locals 1

    .line 227
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .locals 0

    .line 231
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoPlacementCapped(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadBanner(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

    .line 331
    sget-object v0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mInstance:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-boolean v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsInitBannerCalled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 336
    iput-boolean v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge;->mIsBannerLoaded:Z

    .line 337
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V

    .line 338
    monitor-exit v0

    return-void

    .line 333
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public loadISDemandOnlyInterstitial(Ljava/lang/String;)V
    .locals 0

    .line 299
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public loadISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .locals 0

    .line 267
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public loadInterstitial()V
    .locals 0

    .line 277
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    return-void
.end method

.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 814
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    .line 815
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onGetOfferwallCreditsFailed"

    .line 816
    invoke-virtual {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onGetOfferwallCreditsFailed"

    const-string v0, ""

    .line 819
    invoke-direct {p0, p1, v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 2

    const-string v0, "onInterstitialAdClicked"

    const-string v1, ""

    .line 711
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onInterstitialAdClickedDemandOnly"

    .line 763
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 2

    const-string v0, "onInterstitialAdClosed"

    const-string v1, ""

    .line 691
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onInterstitialAdClosedDemandOnly"

    .line 743
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    .line 678
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onInterstitialAdLoadFailed"

    .line 679
    invoke-virtual {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onInterstitialAdLoadFailed"

    const-string v0, ""

    .line 681
    invoke-direct {p0, p1, v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 725
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 726
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 727
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_0

    .line 730
    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    :goto_0
    const-string p1, "onInterstitialAdLoadFailedDemandOnly"

    .line 733
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 2

    const-string v0, "onInterstitialAdOpened"

    const-string v1, ""

    .line 686
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdOpened(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onInterstitialAdOpenedDemandOnly"

    .line 738
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 2

    const-string v0, "onInterstitialAdReady"

    const-string v1, ""

    .line 671
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdReady(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onInterstitialAdReadyDemandOnly"

    .line 718
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdRewarded()V
    .locals 2

    const-string v0, "onInterstitialAdRewarded"

    const-string v1, ""

    .line 770
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 702
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    .line 703
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onInterstitialAdShowFailed"

    .line 704
    invoke-virtual {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onInterstitialAdShowFailed"

    const-string v0, ""

    .line 706
    invoke-direct {p0, p1, v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 750
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 751
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 752
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_0

    .line 755
    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    :goto_0
    const-string p1, "onInterstitialAdShowFailedDemandOnly"

    .line 758
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 2

    const-string v0, "onInterstitialAdShowSucceeded"

    const-string v1, ""

    .line 696
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 2

    .line 797
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "credits"

    .line 800
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "totalCredits"

    .line 801
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "totalCreditsFlag"

    .line 802
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onOfferwallAdCredited"

    .line 804
    invoke-direct {p0, p2, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 806
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOfferwallAvailable(Z)V
    .locals 1

    const-string v0, "onOfferwallAvailable"

    .line 777
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallClosed()V
    .locals 2

    const-string v0, "onOfferwallClosed"

    const-string v1, ""

    .line 824
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallOpened()V
    .locals 2

    const-string v0, "onOfferwallOpened"

    const-string v1, ""

    .line 782
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    .line 789
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onOfferwallShowFailed"

    .line 790
    invoke-virtual {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onOfferwallShowFailed"

    const-string v0, ""

    .line 792
    invoke-direct {p0, p1, v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 3

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "placement_id"

    .line 596
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_name"

    .line 597
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_amount"

    .line 598
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_name"

    .line 599
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRewardedVideoAdClicked"

    .line 601
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 604
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onRewardedVideoAdClickedDemandOnly"

    .line 664
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    const-string v0, "onRewardedVideoAdClosed"

    const-string v1, ""

    .line 548
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onRewardedVideoAdClosedDemandOnly"

    .line 639
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 2

    const-string v0, "onRewardedVideoAdEnded"

    const-string v1, ""

    .line 563
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 621
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 622
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 623
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_0

    .line 626
    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    :goto_0
    const-string p1, "onRewardedVideoAdLoadFailedDemandOnly"

    .line 629
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onRewardedVideoAdLoadedDemandOnly"

    .line 613
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    const-string v0, "onRewardedVideoAdOpened"

    const-string v1, ""

    .line 543
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdOpened(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onRewardedVideoAdOpenedDemandOnly"

    .line 634
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 3

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "placement_id"

    .line 570
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_name"

    .line 571
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_amount"

    .line 572
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_reward_name"

    .line 573
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRewardedVideoAdRewarded"

    .line 575
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 578
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onRewardedVideoAdRewardedDemandOnly"

    .line 644
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    .line 586
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRewardedVideoAdShowFailed"

    .line 587
    invoke-virtual {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onRewardedVideoAdShowFailed"

    const-string v0, ""

    .line 589
    invoke-direct {p0, p1, v0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 651
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    .line 652
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 653
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v3, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    goto :goto_0

    .line 656
    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, ""

    aput-object p1, v2, v0

    :goto_0
    const-string p1, "onRewardedVideoAdShowFailedDemandOnly"

    .line 659
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 2

    const-string v0, "onRewardedVideoAdStarted"

    const-string v1, ""

    .line 558
    invoke-direct {p0, v0, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 1

    const-string v0, "onRewardedVideoAvailabilityChanged"

    .line 553
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSegmentReceived(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onSegmentReceived"

    .line 888
    invoke-direct {p0, v0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 872
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    :try_start_0
    const-string v2, "error_code"

    .line 875
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_description"

    .line 876
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 880
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public setAdaptersDebug(Z)V
    .locals 0

    .line 142
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setAdaptersDebug(Z)V

    return-void
.end method

.method public setAge(I)V
    .locals 0

    .line 157
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setAge(I)V

    return-void
.end method

.method public setClientSideCallbacks(Z)V
    .locals 1

    .line 834
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    return-void
.end method

.method public setConsent(Z)V
    .locals 0

    .line 536
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setConsent(Z)V

    return-void
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .locals 0

    .line 138
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setDynamicUserId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setGender(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 830
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setMediationSegment(Ljava/lang/String;)V

    return-void
.end method

.method public setOfferwallCustomParams(Ljava/lang/String;)V
    .locals 1

    .line 843
    invoke-virtual {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 844
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setOfferwallCustomParams(Ljava/util/Map;)V

    return-void
.end method

.method public setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/config/ConfigFile;->setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRewardedVideoCustomParams(Ljava/lang/String;)V
    .locals 1

    .line 838
    invoke-virtual {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 839
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setRewardedVideoCustomParams(Ljava/util/Map;)V

    return-void
.end method

.method public setRewardedVideoServerParams(Ljava/lang/String;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getHashMapFromJsonString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 253
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoServerParameters(Ljava/util/Map;)V

    return-void
.end method

.method public setSegment(Ljava/lang/String;)V
    .locals 4

    .line 500
    :try_start_0
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 501
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    new-instance p1, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {p1}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    .line 504
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 505
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 506
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "age"

    .line 508
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setAge(I)V

    goto :goto_0

    :cond_0
    const-string v3, "gender"

    .line 510
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setGender(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "level"

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 513
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setLevel(I)V

    goto :goto_0

    :cond_2
    const-string v3, "isPaying"

    .line 514
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 515
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setIsPaying(Z)V

    goto :goto_0

    :cond_4
    const-string v3, "userCreationDate"

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 517
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setUserCreationDate(J)V

    goto :goto_0

    :cond_5
    const-string v3, "segmentName"

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 519
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "iapt"

    .line 520
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 521
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setIAPTotal(D)V

    goto/16 :goto_0

    .line 524
    :cond_7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_8
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 530
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public shouldTrackNetworkState(Z)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    return-void
.end method

.method public showISDemandOnlyInterstitial(Ljava/lang/String;)V
    .locals 0

    .line 303
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public showISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .locals 0

    .line 263
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 0

    .line 281
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial()V

    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 0

    .line 285
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method public showOfferwall()V
    .locals 0

    .line 313
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall()V

    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 0

    .line 317
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall(Ljava/lang/String;)V

    return-void
.end method

.method public showRewardedVideo()V
    .locals 0

    .line 219
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo()V

    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public validateIntegration()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    return-void
.end method
