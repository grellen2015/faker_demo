.class public Lcom/vungle/warren/Vungle;
.super Ljava/lang/Object;
.source "Vungle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/Vungle$Consent;
    }
.end annotation


# static fields
.field private static final COM_VUNGLE_SDK:Ljava/lang/String; = "com.vungle.sdk"

.field private static final TAG:Ljava/lang/String;

.field static final _instance:Lcom/vungle/warren/Vungle;

.field private static cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

.field private static isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile isInitialized:Z

.field private static isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

.field static sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

.field private static final vungleApi:Lcom/vungle/warren/VungleStaticApi;


# instance fields
.field private adLoader:Lcom/vungle/warren/AdLoader;

.field private volatile appID:Ljava/lang/String;

.field private volatile cacheManager:Lcom/vungle/warren/persistence/CacheManager;

.field private volatile consent:Lcom/vungle/warren/Vungle$Consent;

.field private volatile consentVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private volatile downloader:Lcom/vungle/warren/downloader/AssetDownloader;

.field volatile jobRunner:Lcom/vungle/warren/tasks/JobRunner;

.field private playOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field volatile repository:Lcom/vungle/warren/persistence/Repository;

.field private volatile runtimeValues:Lcom/vungle/warren/RuntimeValues;

.field private volatile shouldTransmitIMEI:Z

.field private volatile userIMEI:Ljava/lang/String;

.field volatile vungleApiClient:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    const-class v0, Lcom/vungle/warren/Vungle;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/vungle/warren/Vungle;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 132
    new-instance v0, Lcom/vungle/warren/utility/SDKExecutors;

    invoke-direct {v0}, Lcom/vungle/warren/utility/SDKExecutors;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    const/4 v0, 0x0

    .line 139
    sput-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 140
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    new-instance v0, Lcom/vungle/warren/Vungle$1;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle$1;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    .line 1386
    new-instance v0, Lcom/vungle/warren/Vungle$11;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle$11;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    .line 1414
    new-instance v0, Lcom/vungle/warren/Vungle$12;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle$12;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    .line 149
    new-instance v0, Lcom/vungle/warren/RuntimeValues;

    invoke-direct {v0}, Lcom/vungle/warren/RuntimeValues;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 84
    sget-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/downloader/AssetDownloader;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/AdLoader;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/AdLoader;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/AssetDownloader;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    return-object p1
.end method

.method static synthetic access$1100()Lcom/vungle/warren/VungleStaticApi;
    .locals 1

    .line 84
    sget-object v0, Lcom/vungle/warren/Vungle;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;
    .locals 1

    .line 84
    sget-object v0, Lcom/vungle/warren/Vungle;->reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/Vungle$Consent;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->consent:Lcom/vungle/warren/Vungle$Consent;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/Vungle$Consent;)Lcom/vungle/warren/Vungle$Consent;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->consent:Lcom/vungle/warren/Vungle$Consent;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/vungle/warren/Vungle;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getConsent(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getConsentMessageVersion(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;)V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vungle/warren/Vungle;)Ljava/util/Map;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    return-object p0
.end method

.method static synthetic access$2000(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;)V
    .locals 0

    .line 84
    invoke-static {p0, p1, p2, p3}, Lcom/vungle/warren/Vungle;->renderAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;)V

    return-void
.end method

.method static synthetic access$202(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/persistence/CacheManager;)Lcom/vungle/warren/persistence/CacheManager;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    return-object p1
.end method

.method static synthetic access$2100()V
    .locals 0

    .line 84
    invoke-static {}, Lcom/vungle/warren/Vungle;->stopPlaying()V

    return-void
.end method

.method static synthetic access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lcom/vungle/warren/Vungle;->onError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

.method static synthetic access$500()Lcom/vungle/warren/persistence/CacheManager$Listener;
    .locals 1

    .line 84
    sget-object v0, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vungle/warren/Vungle;)Landroid/content/Context;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$602(Lcom/vungle/warren/Vungle;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$702(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vungle/warren/Vungle;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->userIMEI:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/Vungle;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/vungle/warren/Vungle;->shouldTransmitIMEI:Z

    return p0
.end method

.method static canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z
    .locals 1

    .line 704
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, p0}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method public static canPlayAd(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 693
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 698
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p0}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/model/Advertisement;

    .line 700
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method private static clearCache()V
    .locals 2

    .line 1000
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    sget-object v0, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/Vungle$8;

    invoke-direct {v1}, Lcom/vungle/warren/Vungle$8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1012
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static closeFlexViewAd(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1307
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized, can\'t close flex view ad"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1313
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AdvertisementBus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "placement"

    .line 1314
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "command"

    const-string v1, "closeFlex"

    .line 1315
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p0, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private configure(Lcom/vungle/warren/InitCallback;)V
    .locals 16
    .param p1    # Lcom/vungle/warren/InitCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 401
    :try_start_0
    iget-object v0, v1, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleApiClient;->config()Lretrofit2/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v2, v0}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    .line 405
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 409
    :cond_0
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_2

    .line 410
    iget-object v6, v1, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v6, v0}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lretrofit2/Response;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_1

    .line 412
    iget-object v0, v1, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    sget-object v6, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v6, v6, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v6}, Lcom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 413
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v6, 0xe

    invoke-direct {v0, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v2, v0}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    .line 414
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 418
    :cond_1
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v2, v0}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    .line 419
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 424
    :cond_2
    iget-object v6, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    const-string v9, "com.vungle.sdk"

    invoke-virtual {v6, v9, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "reported"

    invoke-interface {v6, v9, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 425
    iget-object v6, v1, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v6}, Lcom/vungle/warren/VungleApiClient;->reportNew()Lretrofit2/Call;

    move-result-object v6

    new-instance v9, Lcom/vungle/warren/Vungle$4;

    invoke-direct {v9, v1}, Lcom/vungle/warren/Vungle$4;-><init>(Lcom/vungle/warren/Vungle;)V

    invoke-interface {v6, v9}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 445
    :cond_3
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v6, "placements"

    .line 447
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    .line 450
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 453
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v2, v0}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    .line 454
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 458
    :cond_4
    iget-object v9, v1, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 459
    sget-object v9, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v9, v9, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v9}, Lcom/vungle/warren/AdLoader;->clear()V

    .line 461
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    .line 463
    new-instance v11, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/vungle/warren/model/Placement;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :cond_5
    sget-object v6, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v6, v6, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v9}, Lcom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V

    const-string v6, "gdpr"

    .line 468
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x1

    if-eqz v6, :cond_13

    .line 472
    sget-object v6, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v6, v6, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v10, "consentIsImportantToVungle"

    const-class v11, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v6, v10, v11}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/model/Cookie;

    if-nez v6, :cond_6

    .line 476
    new-instance v6, Lcom/vungle/warren/model/Cookie;

    const-string v10, "consentIsImportantToVungle"

    invoke-direct {v6, v10}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    const-string v10, "consent_status"

    const-string v11, "unknown"

    .line 477
    invoke-virtual {v6, v10, v11}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "consent_source"

    const-string v11, "no_interaction"

    .line 478
    invoke-virtual {v6, v10, v11}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "timestamp"

    .line 479
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string v10, "gdpr"

    .line 482
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "is_country_data_protected"

    .line 484
    invoke-static {v10, v11}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "is_country_data_protected"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    :goto_1
    const-string v12, "consent_title"

    .line 485
    invoke-static {v10, v12}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "consent_title"

    invoke-virtual {v10, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_8
    const-string v12, ""

    :goto_2
    const-string v13, "consent_message"

    .line 486
    invoke-static {v10, v13}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "consent_message"

    invoke-virtual {v10, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_9
    const-string v13, ""

    :goto_3
    const-string v14, "consent_message_version"

    .line 487
    invoke-static {v10, v14}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "consent_message_version"

    invoke-virtual {v10, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_a
    const-string v14, ""

    :goto_4
    const-string v15, "button_accept"

    .line 488
    invoke-static {v10, v15}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "button_accept"

    invoke-virtual {v10, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_b
    const-string v15, ""

    :goto_5
    const-string v3, "button_deny"

    .line 489
    invoke-static {v10, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "button_deny"

    invoke-virtual {v10, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_c
    const-string v3, ""

    :goto_6
    const-string v10, "is_country_data_protected"

    .line 491
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "consent_title"

    .line 493
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v12, "Targeted Ads"

    :cond_d
    invoke-virtual {v6, v10, v12}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "consent_message"

    .line 495
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v13, "To receive more relevant ad content based on your interactions with our ads, click \"I Consent\" below. Either way, you will see the same amount of ads."

    :cond_e
    invoke-virtual {v6, v10, v13}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "consent_source"

    .line 499
    invoke-virtual {v6, v10}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "publisher"

    .line 500
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "consent_message_version"

    .line 501
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v14, ""

    :cond_f
    invoke-virtual {v6, v10, v14}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    const-string v10, "button_accept"

    .line 504
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v15, "I Consent"

    :cond_11
    invoke-virtual {v6, v10, v15}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "button_deny"

    .line 506
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v3, "I Do Not Consent"

    :cond_12
    invoke-virtual {v6, v10, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v3, v3, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v6}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    :cond_13
    const-string v3, "apk_direct_download"

    .line 512
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x4

    if-eqz v3, :cond_15

    const-string v3, "apk_direct_download"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v10, "enabled"

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "apk_direct_download"

    .line 513
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v10, "enabled"

    .line 514
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 517
    iget-object v10, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    new-instance v11, Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v12

    sget-object v13, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v13}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    invoke-direct {v11, v6, v12, v13}, Lcom/vungle/warren/downloader/AssetDownloader;-><init>(ILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    invoke-static {v10, v11}, Lcom/vungle/warren/download/APKDirectDownloadManager;->init(Landroid/content/Context;Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 519
    :cond_14
    invoke-static {v3}, Lcom/vungle/warren/download/APKDirectDownloadManager;->setDirectDownloadStatus(I)V

    goto :goto_7

    .line 523
    :cond_15
    iget-object v3, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    new-instance v10, Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v11

    sget-object v12, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v12}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    invoke-direct {v10, v6, v11, v12}, Lcom/vungle/warren/downloader/AssetDownloader;-><init>(ILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    invoke-static {v3, v10}, Lcom/vungle/warren/download/APKDirectDownloadManager;->init(Landroid/content/Context;Lcom/vungle/warren/downloader/AssetDownloader;)V

    const/4 v3, -0x1

    .line 524
    invoke-static {v3}, Lcom/vungle/warren/download/APKDirectDownloadManager;->setDirectDownloadStatus(I)V

    :goto_7
    const-string v3, "ri"

    .line 527
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 530
    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v3, v3, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v6, "configSettings"

    const-class v10, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v3, v6, v10}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Cookie;

    if-nez v3, :cond_16

    .line 533
    new-instance v3, Lcom/vungle/warren/model/Cookie;

    const-string v6, "configSettings"

    invoke-direct {v3, v6}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_16
    const-string v6, "ri"

    .line 535
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v10, "enabled"

    invoke-virtual {v6, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    const-string v10, "isReportIncentivizedEnabled"

    .line 536
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    sget-object v6, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v6, v6, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    :cond_17
    const-string v3, "attribution_reporting"

    .line 540
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "attribution_reporting"

    .line 541
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v6, "should_transmit_imei"

    .line 542
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "should_transmit_imei"

    .line 543
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    iput-boolean v3, v1, Lcom/vungle/warren/Vungle;->shouldTransmitIMEI:Z

    goto :goto_8

    .line 545
    :cond_18
    iput-boolean v5, v1, Lcom/vungle/warren/Vungle;->shouldTransmitIMEI:Z

    goto :goto_8

    .line 548
    :cond_19
    iput-boolean v5, v1, Lcom/vungle/warren/Vungle;->shouldTransmitIMEI:Z

    :goto_8
    const-string v3, "config"

    .line 552
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "config"

    .line 553
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v3, "refresh_time"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10

    .line 554
    iget-object v0, v1, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    iget-object v3, v1, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v3}, Lcom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 558
    :cond_1a
    sput-boolean v9, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 561
    invoke-interface/range {p1 .. p1}, Lcom/vungle/warren/InitCallback;->onSuccess()V

    .line 564
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 566
    iget-object v0, v1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 569
    iget-object v3, v1, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {}, Lcom/vungle/warren/tasks/CleanupJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    if-eqz v0, :cond_1c

    .line 577
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Placement;

    .line 578
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 579
    sget-object v6, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v10, "starting jobs for autocached advs"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v6, v1, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v7, v8}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;J)V

    goto :goto_9

    .line 585
    :cond_1c
    iget-object v0, v1, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {v9}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 588
    sput-boolean v5, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 589
    sget-object v3, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 590
    sget-object v3, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    instance-of v3, v0, Lretrofit2/HttpException;

    if-eqz v3, :cond_1d

    .line 592
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v2, v0}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 593
    :cond_1d
    instance-of v0, v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-eqz v0, :cond_1e

    .line 594
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v2, v0}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 596
    :cond_1e
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v2, v0}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method protected static deInit()V
    .locals 2

    .line 1367
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    if-eqz v0, :cond_0

    .line 1368
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    sget-object v1, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/CacheManager;->removeListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 1371
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    .line 1372
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    .line 1373
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 1374
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 1375
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    .line 1376
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    .line 1377
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    .line 1378
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object v1, v0, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    .line 1379
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iput-object v1, v0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    const/4 v0, 0x0

    .line 1381
    sput-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 1382
    sget-object v1, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1383
    sget-object v1, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static getConsent(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "opted_in"

    const-string v1, "consent_status"

    .line 1284
    invoke-virtual {p0, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    :goto_0
    return-object p0
.end method

.method public static getConsentMessageVersion()Ljava/lang/String;
    .locals 2

    .line 1273
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1274
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized, please wait initialize or wait until Vungle is intialized to get Consent Message Version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1277
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getConsentMessageVersion(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "consent_message_version"

    .line 1292
    invoke-virtual {p0, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConsentStatus()Lcom/vungle/warren/Vungle$Consent;
    .locals 2

    .line 1265
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized, consent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1269
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consent:Lcom/vungle/warren/Vungle$Consent;

    return-object v0
.end method

.method public static getNativeAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1039
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1040
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized, returned VungleNativeAd = null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 1042
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1

    .line 1047
    :cond_1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, p0, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_3

    .line 1049
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "No Placement for ID"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 1051
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1

    .line 1056
    :cond_3
    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v2, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, p0}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    const/16 v3, 0xa

    if-nez v2, :cond_5

    .line 1064
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "No Advertisement for ID"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 1066
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v1

    .line 1071
    :cond_5
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_8

    if-eqz v2, :cond_7

    .line 1072
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result p1

    if-ne p1, v5, :cond_7

    .line 1074
    :try_start_0
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, p0, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p2, :cond_6

    .line 1077
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {p1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1081
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1082
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p0, p0, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;JLcom/vungle/warren/PublisherDirectDownload;)V

    :cond_7
    return-object v1

    .line 1088
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v4, v4, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, p0}, Lcom/vungle/warren/AdLoader;->isLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_3

    .line 1096
    :cond_9
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    if-eq v0, v5, :cond_b

    .line 1097
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Invalid Ad Type for Native Ad."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a

    .line 1099
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-object v1

    :cond_b
    if-nez p1, :cond_c

    .line 1104
    sget-object p1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p1

    :goto_1
    const-string v0, "mrec"

    .line 1105
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    if-ne p1, v0, :cond_e

    :cond_d
    const-string v0, "flexfeed"

    .line 1107
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p1, v0, :cond_f

    .line 1109
    :cond_e
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Corresponding AdConfig#setAdSize must be passed for the type/size of native ad"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1113
    :cond_f
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    :try_start_1
    new-instance p1, Lcom/vungle/warren/ui/view/VungleNativeView;

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/vungle/warren/Vungle$9;

    invoke-direct {v3, v2, p2}, Lcom/vungle/warren/Vungle$9;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PlayAdCallback;)V

    invoke-direct {p1, v0, p0, v1, v3}, Lcom/vungle/warren/ui/view/VungleNativeView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1191
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_10

    .line 1193
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    move-object p1, v1

    :goto_2
    return-object p1

    .line 1089
    :cond_11
    :goto_3
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Playing or Loading operation ongoing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_12

    .line 1091
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    return-object v1
.end method

.method public static getNativeAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1026
    invoke-static {p0, v0, p1}, Lcom/vungle/warren/Vungle;->getNativeAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;

    move-result-object p0

    return-object p0
.end method

.method public static getValidPlacements()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1205
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placemetns list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1210
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->getValidPlacements()Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/InitCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {v0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/InitCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/VungleSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 222
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iput-object p3, v0, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    .line 224
    sget-object p3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p3, p3, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    instance-of v0, p2, Lcom/vungle/warren/InitCallbackWrapper;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vungle/warren/InitCallbackWrapper;

    sget-object v1, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 226
    invoke-virtual {v1}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/vungle/warren/InitCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/InitCallback;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p3, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    instance-of p2, p1, Landroid/app/Application;

    if-nez p2, :cond_2

    .line 234
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p0, p0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object p0, p0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p0, p1}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 238
    :cond_2
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 239
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "init already complete"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p0, p0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object p0, p0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    invoke-interface {p0}, Lcom/vungle/warren/InitCallback;->onSuccess()V

    return-void

    .line 244
    :cond_3
    sget-object p2, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 245
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "init ongoing"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p0, p0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object p0, p0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p0, p1}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 250
    :cond_4
    sget-object p2, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {p2}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/vungle/warren/Vungle$2;

    invoke-direct {p3, p1, p0}, Lcom/vungle/warren/Vungle$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 229
    :cond_5
    :goto_1
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p0, p0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object p0, p0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p0, p1}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 219
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A valid InitCallback required to ensure API calls are being made after initialize is successful"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V
    .locals 0
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/InitCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/vungle/warren/InitCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    new-instance p0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {p0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 608
    sget-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 610
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->getValidPlacements()Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 611
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->getValidPlacements()Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/vungle/warren/LoadAdCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 984
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 986
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p1, p0, v0}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 991
    :cond_1
    new-instance v0, Lcom/vungle/warren/LoadAdCallbackWrapper;

    sget-object v1, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v1}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/vungle/warren/LoadAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/LoadAdCallback;)V

    .line 992
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/vungle/warren/AdLoader;->load(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/PublisherDirectDownload;)V

    return-void
.end method

.method protected static mockDependencies(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/utility/SDKExecutors;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/AdLoader;)V
    .locals 0

    .line 1350
    sput-object p6, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 1352
    sget-object p6, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p0, p6, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    .line 1353
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p1, p0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    .line 1354
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p2, p0, Lcom/vungle/warren/Vungle;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 1355
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p3, p0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 1356
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p4, p0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    .line 1357
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p5, p0, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    .line 1358
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p7, p0, Lcom/vungle/warren/Vungle;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    .line 1359
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p8, p0, Lcom/vungle/warren/Vungle;->adLoader:Lcom/vungle/warren/AdLoader;

    return-void
.end method

.method private static onError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 374
    invoke-interface {p0, p1}, Lcom/vungle/warren/InitCallback;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/PlayAdCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 720
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 722
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 727
    :cond_1
    new-instance v0, Lcom/vungle/warren/PlayAdCallbackWrapper;

    sget-object v1, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v1}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/vungle/warren/PlayAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/PlayAdCallback;)V

    .line 729
    sget-object p2, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {p2}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v1, Lcom/vungle/warren/Vungle$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/vungle/warren/Vungle$6;-><init>(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/AdConfig;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static reConfigure()V
    .locals 3

    .line 379
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/Vungle$3;

    invoke-direct {v1}, Lcom/vungle/warren/Vungle$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 387
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v2, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v2, v2, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V

    :goto_0
    return-void
.end method

.method private static declared-synchronized renderAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/vungle/warren/PlayAdCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/vungle/warren/Vungle;

    monitor-enter v0

    .line 878
    :try_start_0
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v1, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance v1, Lcom/vungle/warren/Vungle$7;

    invoke-direct {v1, p3, p1, p2}, Lcom/vungle/warren/Vungle$7;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PlayAdCallback;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vungle/warren/ui/VungleActivity;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    if-eqz p3, :cond_0

    const-string p1, "flexview"

    .line 962
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 963
    :goto_0
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p2, p2, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-class p3, Lcom/vungle/warren/ui/VungleFlexViewActivity;

    goto :goto_1

    :cond_1
    const-class p3, Lcom/vungle/warren/ui/VungleActivity;

    :goto_1
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 964
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "placement"

    .line 965
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    sget-object p0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p0, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 877
    monitor-exit v0

    throw p0
.end method

.method public static setHeaderBiddingCallback(Lcom/vungle/warren/HeaderBiddingCallback;)V
    .locals 3

    .line 1346
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    new-instance v1, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    sget-object v2, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v2}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/HeaderBiddingCallback;)V

    iput-object v1, v0, Lcom/vungle/warren/RuntimeValues;->headerBiddingCallback:Lcom/vungle/warren/HeaderBiddingCallback;

    return-void
.end method

.method public static setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 633
    sget-object v0, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/vungle/warren/Vungle$5;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/Vungle$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setUserLegacyID(Ljava/lang/String;)V
    .locals 2

    .line 1331
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1334
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p0, v0, Lcom/vungle/warren/Vungle;->userIMEI:Ljava/lang/String;

    goto :goto_1

    .line 1332
    :cond_1
    :goto_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-boolean v1, v1, Lcom/vungle/warren/Vungle;->shouldTransmitIMEI:Z

    invoke-virtual {v0, p0, v1}, Lcom/vungle/warren/VungleApiClient;->updateIMEI(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private static stopPlaying()V
    .locals 3

    .line 1406
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1409
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AdvertisementBus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "stopAll"

    .line 1410
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 4
    .param p0    # Lcom/vungle/warren/Vungle$Consent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1235
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p0, v0, Lcom/vungle/warren/Vungle;->consent:Lcom/vungle/warren/Vungle$Consent;

    .line 1236
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iput-object p1, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    .line 1238
    sget-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1243
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v1, "consentIsImportantToVungle"

    const-class v2, Lcom/vungle/warren/model/Cookie;

    new-instance v3, Lcom/vungle/warren/Vungle$10;

    invoke-direct {v3, p0, p1}, Lcom/vungle/warren/Vungle$10;-><init>(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
