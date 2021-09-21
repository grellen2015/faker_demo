.class public final Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Lcom/ironsource/sdk/SSAPublisher;
.implements Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSBannerListener;
.implements Lcom/ironsource/sdk/IronSourceNetworkAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "IronSourceAdsPublisherAgent"

.field private static mutableContextWrapper:Landroid/content/MutableContextWrapper;

.field private static sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;


# instance fields
.field private final SUPERSONIC_ADS:Ljava/lang/String;

.field private adViewContainerCounter:J

.field private mApplicationKey:Ljava/lang/String;

.field private mBannerJSAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

.field private mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

.field private mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

.field private mTokenService:Lcom/ironsource/sdk/service/TokenService;

.field private mUserId:Ljava/lang/String;

.field private session:Lcom/ironsource/sdk/data/SSASession;

.field private wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "SupersonicAds"

    .line 52
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->SUPERSONIC_ADS:Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->initPublisherAgent(Landroid/app/Activity;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SupersonicAds"

    .line 52
    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->SUPERSONIC_ADS:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->initPublisherAgent(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/MutableContextWrapper;
    .locals 1

    .line 49
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/DemandSourceManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/service/TokenService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/BannerJSAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mBannerJSAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/controller/BannerJSAdapter;)Lcom/ironsource/sdk/controller/BannerJSAdapter;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mBannerJSAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/CommandExecutor;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method public static createInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/IronSourceNetworkAPI;
    .locals 0

    .line 136
    invoke-static {p1, p2, p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Lcom/ironsource/sdk/IronSourceNetworkAPI;

    move-result-object p0

    return-object p0
.end method

.method private createToken(Landroid/app/Activity;)Lcom/ironsource/sdk/service/TokenService;
    .locals 3

    .line 102
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/ironsource/sdk/service/TokenService;->fetchIndependentData()V

    .line 104
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/sdk/service/TokenService;->fetchDependentData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createWebView(Landroid/app/Activity;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private decodeADM(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "adm"

    .line 857
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 858
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adm"

    .line 859
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private endSession()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSASession;->endSession()V

    .line 235
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->addSession(Lcom/ironsource/sdk/data/SSASession;)V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    :cond_0
    return-void
.end method

.method private getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/listeners/OnBannerListener;

    return-object p1
.end method

.method private getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    return-object p1
.end method

.method private getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    return-object p1
.end method

.method private getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;
    .locals 1

    .line 748
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Lcom/ironsource/sdk/IronSourceNetworkAPI;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    goto :goto_0

    .line 155
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, p2}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/ironsource/sdk/service/TokenService;->collectApplicationKey(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/service/TokenService;->collectApplicationUserId(Ljava/lang/String;)V

    .line 160
    :goto_0
    sget-object p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v0

    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-static {p0, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v0

    :try_start_0
    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "getInstance()"

    .line 176
    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V

    sput-object v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    goto :goto_0

    .line 185
    :cond_0
    sget-object p1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {p1, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 188
    :goto_0
    sget-object p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 175
    monitor-exit v0

    throw p0
.end method

.method private initPublisherAgent(Landroid/app/Activity;)V
    .locals 2

    .line 84
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->createToken(Landroid/app/Activity;)Lcom/ironsource/sdk/service/TokenService;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    .line 86
    new-instance v0, Lcom/ironsource/sdk/controller/CommandExecutor;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/CommandExecutor;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    .line 87
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    .line 88
    new-instance v0, Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    .line 89
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/Logger;->enableLogging(I)V

    const-string v0, "IronSourceAdsPublisherAgent"

    const-string v1, "C\'tor"

    .line 91
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->adViewContainerCounter:J

    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->createWebView(Landroid/app/Activity;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->startSession(Landroid/content/Context;)V

    return-void
.end method

.method private loadInAppBiddingAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 838
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->decodeADM(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 840
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "IronSourceAdsPublisherAgent"

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInAppBiddingAd failed decoding ADM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    return-void
.end method

.method private loadInitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadOnInitializedInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$17;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 847
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    goto :goto_0

    .line 850
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadUninitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private loadUninitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadOnNewInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSession(Landroid/content/Context;)V
    .locals 2

    .line 225
    new-instance v0, Lcom/ironsource/sdk/data/SSASession;

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->launched:Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/ironsource/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    return-void
.end method

.method private updateConsentInToken(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "gdprConsentStatus"

    .line 779
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gdprConsentStatus"

    .line 782
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 783
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "consent"

    .line 784
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 785
    iget-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/service/TokenService;->updateData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 787
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public createBanner(Landroid/app/Activity;Lcom/ironsource/sdk/ISAdSize;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;
    .locals 5

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupersonicAds_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->adViewContainerCounter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    iget-wide v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->adViewContainerCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->adViewContainerCounter:J

    .line 796
    new-instance v1, Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-direct {v1, p1, v0, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/sdk/ISAdSize;)V

    .line 797
    iget-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mBannerJSAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/controller/BannerJSAdapter;->setCommunicationWithAdView(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)V

    return-object v1
.end method

.method public getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$8;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$8;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2

    .line 338
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 339
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$7;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object v0
.end method

.method public initBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnBannerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnBannerListener;",
            ")V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 416
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p3

    .line 418
    iget-object p4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance p5, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$12;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$12;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p4, p5}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initBanner(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnBannerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnBannerListener;",
            ")V"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    .line 429
    iget-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance p3, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$13;

    invoke-direct {p3, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$13;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p2, p3}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 367
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p3

    .line 369
    iget-object p4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance p5, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$9;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$9;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p4, p5}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v7, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$4;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mApplicationKey:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mUserId:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 255
    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p3

    .line 262
    iget-object p4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance p5, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p4, p5}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/sdk/IronSourceAdInstance;)Z
    .locals 4

    .line 908
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "IronSourceAdsPublisherAgent"

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAdAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 917
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getAvailabilityState()Z

    move-result p1

    return p1
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->isInAppBidding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInAppBiddingAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    goto :goto_0

    .line 830
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public loadBanner(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "demandSourceName"

    .line 383
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdProductClick(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 1

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 627
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 628
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 630
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdClicked()V

    goto :goto_0

    .line 632
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 633
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 635
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialClick()V

    goto :goto_0

    .line 637
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 638
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 640
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 1

    .line 596
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 598
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 599
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 601
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdClosed()V

    goto :goto_0

    .line 603
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 604
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 606
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialClose()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdProductEventNotificationReceived(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 653
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_0

    .line 654
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "demandSourceName"

    .line 656
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    invoke-interface {p1, p3, p4}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 659
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_1

    .line 660
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "demandSourceName"

    .line 662
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    invoke-interface {p1, p3, p4}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 667
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 549
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    .line 551
    invoke-virtual {p2, v0}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 553
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 554
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 556
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVInitFail(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 559
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 561
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 564
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 566
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerInitFailed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdProductInitSuccess(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .locals 1

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    .line 526
    invoke-virtual {p2, v0}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 528
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 529
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 531
    invoke-interface {p1, p3}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V

    goto :goto_0

    .line 533
    :cond_0
    sget-object p3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p3, :cond_1

    .line 534
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 536
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitSuccess()V

    goto :goto_0

    .line 538
    :cond_1
    sget-object p3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p3, :cond_2

    .line 539
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 541
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerInitSuccess()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdProductOpen(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 1

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 676
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 677
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 679
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialOpen()V

    goto :goto_0

    .line 681
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 682
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 684
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdOpened()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBannerLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 814
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 816
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 818
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerLoadFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBannerLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 803
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 805
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsBNListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnBannerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 807
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnBannerListener;->onBannerLoadSuccess()V

    :cond_0
    return-void
.end method

.method public onInterstitialAdRewarded(Ljava/lang/String;I)V
    .locals 2

    .line 737
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 738
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialAdRewarded(Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 704
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 706
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 708
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialLoadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 693
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 695
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 697
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialLoadSuccess()V

    :cond_0
    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 726
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 730
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialShowFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess(Ljava/lang/String;)V
    .locals 1

    .line 715
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 717
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 719
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialShowSuccess()V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 4

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->enterBackground()V

    .line 475
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 477
    invoke-direct {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->endSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 479
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public onRVAdCredited(Ljava/lang/String;I)V
    .locals 1

    .line 585
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 587
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 589
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdCredited(I)V

    :cond_0
    return-void
.end method

.method public onRVNoMoreOffers(Ljava/lang/String;)V
    .locals 1

    .line 574
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 576
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 578
    invoke-interface {p1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVNoMoreOffers()V

    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 614
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 616
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 618
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVShowFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 455
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 457
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->enterForeground()V

    .line 461
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 463
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->resumeSession(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "release()"

    .line 488
    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->release()V

    .line 491
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 494
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 496
    iget-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->destroy()V

    .line 497
    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    goto :goto_0

    .line 500
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 501
    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)V

    .line 508
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :catch_0
    :goto_0
    sput-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .line 517
    invoke-direct {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->endSession()V

    return-void
.end method

.method public resumeSession(Landroid/content/Context;)V
    .locals 2

    .line 229
    new-instance v0, Lcom/ironsource/sdk/data/SSASession;

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/ironsource/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    return-void
.end method

.method public setMediationState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 755
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->getProductType(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 759
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 761
    invoke-virtual {p1, p3}, Lcom/ironsource/sdk/data/DemandSource;->setMediationState(I)V

    :cond_0
    return-void
.end method

.method public showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "IronSourceAdsPublisherAgent"

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p1}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$11;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$11;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$6;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$6;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$3;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$3;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 2

    .line 769
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->updateConsentInToken(Lorg/json/JSONObject;)V

    .line 770
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mCommandExecutor:Lcom/ironsource/sdk/controller/CommandExecutor;

    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$16;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$16;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/CommandExecutor;->executeCommand(Ljava/lang/Runnable;)V

    return-void
.end method
