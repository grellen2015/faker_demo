.class final Lcom/vungle/warren/Vungle$2;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/vungle/warren/Vungle$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$2;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 253
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 255
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/downloader/AssetDownloader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vungle/warren/Vungle$2;->val$context:Landroid/content/Context;

    .line 258
    invoke-static {v3}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v3

    sget-object v4, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 259
    invoke-virtual {v4}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;-><init>(ILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 256
    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->access$102(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/AssetDownloader;

    .line 262
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 263
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    new-instance v1, Lcom/vungle/warren/persistence/CacheManager;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/CacheManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->access$202(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/persistence/CacheManager;)Lcom/vungle/warren/persistence/CacheManager;

    .line 264
    :cond_1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    const/16 v1, 0x10

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 265
    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v2

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForInit()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 266
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/vungle/warren/Vungle;->access$400(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 267
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 270
    :cond_2
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    invoke-static {}, Lcom/vungle/warren/Vungle;->access$500()Lcom/vungle/warren/persistence/CacheManager$Listener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/warren/persistence/CacheManager;->addListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 272
    new-instance v5, Lcom/vungle/warren/persistence/GraphicDesigner;

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vungle/warren/persistence/GraphicDesigner;-><init>(Lcom/vungle/warren/persistence/CacheManager;)V

    .line 274
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    if-nez v0, :cond_3

    .line 275
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    new-instance v2, Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$2;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 276
    invoke-virtual {v4}, Lcom/vungle/warren/utility/SDKExecutors;->getIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sget-object v6, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v6}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-direct {v2, v3, v5, v4, v6}, Lcom/vungle/warren/persistence/Repository;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v2, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 280
    :cond_3
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vungle/warren/Vungle;->access$602(Lcom/vungle/warren/Vungle;Landroid/content/Context;)Landroid/content/Context;

    .line 281
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$2;->val$appId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/vungle/warren/Vungle;->access$702(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    :try_start_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->init()V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    if-nez v0, :cond_4

    .line 294
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    new-instance v2, Lcom/vungle/warren/VungleApiClient;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/vungle/warren/Vungle$2;->val$appId:Ljava/lang/String;

    sget-object v6, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 295
    invoke-static {v6}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v6

    sget-object v7, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v7, v7, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/vungle/warren/VungleApiClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;)V

    iput-object v2, v0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    .line 298
    :cond_4
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$800(Lcom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 299
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$800(Lcom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$900(Lcom/vungle/warren/Vungle;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/VungleApiClient;->updateIMEI(Ljava/lang/String;Z)V

    .line 302
    :cond_5
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    if-eqz v0, :cond_6

    .line 303
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 304
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v2

    iget-object v2, v2, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    invoke-virtual {v2}, Lcom/vungle/warren/VungleSettings;->getAndroidIdOptOut()Z

    move-result v2

    .line 303
    invoke-virtual {v0, v2}, Lcom/vungle/warren/VungleApiClient;->setDefaultIdFallbackDisabled(Z)V

    .line 307
    :cond_6
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/AdLoader;

    move-result-object v0

    if-nez v0, :cond_7

    .line 308
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    new-instance v2, Lcom/vungle/warren/AdLoader;

    sget-object v7, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v8, v3, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v9, v3, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 311
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v10

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 312
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/downloader/AssetDownloader;

    move-result-object v11

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 313
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v12

    .line 314
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1100()Lcom/vungle/warren/VungleStaticApi;

    move-result-object v13

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/vungle/warren/AdLoader;-><init>(Lcom/vungle/warren/utility/SDKExecutors;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/VungleStaticApi;)V

    .line 308
    invoke-static {v0, v2}, Lcom/vungle/warren/Vungle;->access$1002(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/AdLoader;

    .line 317
    :cond_7
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    if-nez v0, :cond_8

    .line 318
    new-instance v0, Lcom/vungle/warren/tasks/VungleJobCreator;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v4, v2, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v6, v2, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    new-instance v7, Lcom/vungle/warren/analytics/VungleAnalytics;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v2, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-direct {v7, v2}, Lcom/vungle/warren/analytics/VungleAnalytics;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    .line 323
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1200()Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    move-result-object v8

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 324
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/AdLoader;

    move-result-object v9

    .line 325
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1100()Lcom/vungle/warren/VungleStaticApi;

    move-result-object v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/vungle/warren/tasks/VungleJobCreator;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;)V

    .line 328
    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    new-instance v3, Lcom/vungle/warren/VungleJobRunner;

    sget-object v4, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 330
    invoke-virtual {v4}, Lcom/vungle/warren/utility/SDKExecutors;->getJobExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;

    invoke-direct {v5}, Lcom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;-><init>()V

    invoke-direct {v3, v0, v4, v5}, Lcom/vungle/warren/VungleJobRunner;-><init>(Lcom/vungle/warren/tasks/JobCreator;Ljava/util/concurrent/Executor;Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;)V

    iput-object v3, v2, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    .line 335
    :cond_8
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/AdLoader;

    move-result-object v0

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v2, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/AdLoader;->setJobRunner(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 338
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1400(Lcom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 339
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v0

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$1400(Lcom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/warren/Vungle;->updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_9
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v2, "consentIsImportantToVungle"

    const-class v3, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    .line 343
    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1500(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/warren/Vungle;->access$1302(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/Vungle$Consent;)Lcom/vungle/warren/Vungle$Consent;

    .line 344
    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1600(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->access$1402(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    :goto_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v2, "appId"

    const-class v3, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-nez v0, :cond_a

    .line 352
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v2, "appId"

    invoke-direct {v0, v2}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_a
    const-string v2, "appId"

    .line 355
    iget-object v3, p0, Lcom/vungle/warren/Vungle$2;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    :try_start_1
    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v2, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 359
    :catch_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/vungle/warren/Vungle;->access$400(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 360
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 288
    :catch_1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->access$400(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 289
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 366
    :cond_b
    :goto_1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->access$1700(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;)V

    return-void
.end method
