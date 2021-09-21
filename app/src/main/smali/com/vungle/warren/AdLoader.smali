.class public Lcom/vungle/warren/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdLoader$DownloadAdCallback;,
        Lcom/vungle/warren/AdLoader$Operation;,
        Lcom/vungle/warren/AdLoader$ReschedulePolicy;,
        Lcom/vungle/warren/AdLoader$DownloadCallback;
    }
.end annotation


# static fields
.field public static final EXPONENTIAL_RATE:J = 0x2L

.field public static final RETRY_COUNT:I = 0x5

.field public static final RETRY_DELAY:J = 0x7d0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cacheManager:Lcom/vungle/warren/persistence/CacheManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final downloader:Lcom/vungle/warren/downloader/AssetDownloader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private jobRunner:Lcom/vungle/warren/tasks/JobRunner;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final loadOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/vungle/warren/persistence/Repository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final runtimeValues:Lcom/vungle/warren/RuntimeValues;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final vungleApi:Lcom/vungle/warren/VungleStaticApi;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final vungleApiClient:Lcom/vungle/warren/VungleApiClient;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/utility/SDKExecutors;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/VungleStaticApi;)V
    .locals 1
    .param p1    # Lcom/vungle/warren/utility/SDKExecutors;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/persistence/Repository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/VungleApiClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/persistence/CacheManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/vungle/warren/downloader/AssetDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/vungle/warren/RuntimeValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/vungle/warren/VungleStaticApi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    .line 199
    iput-object p1, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 200
    iput-object p2, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 201
    iput-object p3, p0, Lcom/vungle/warren/AdLoader;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    .line 202
    iput-object p4, p0, Lcom/vungle/warren/AdLoader;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    .line 203
    iput-object p5, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 204
    iput-object p6, p0, Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    .line 205
    iput-object p7, p0, Lcom/vungle/warren/AdLoader;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    return-void
.end method

.method static synthetic access$100(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleStaticApi;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleApiClient;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/AdLoader;I)Ljava/lang/Throwable;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->reposeCodeToVungleException(I)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/SDKExecutors;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->retrofitToVungleException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/AdLoader;->downloadAdAssets(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/AdLoader;->onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->isZip(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->canReDownload(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/AdLoader;->downloadAdContent(Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/AdLoader;->fetchAdMetadata(Ljava/lang/String;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;)V

    return-void
.end method

.method private canReDownload(Lcom/vungle/warren/model/Advertisement;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 210
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 217
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdAsset;

    .line 219
    iget v3, v1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v3, v2, :cond_3

    .line 220
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v3, v1}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 224
    :cond_3
    iget-object v1, v1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method private downloadAdAssets(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;)V
    .locals 11

    .line 632
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 633
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 634
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    :cond_1
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, p3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object p2, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Aborting, Failed to download Ad assets for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 641
    :cond_2
    new-instance v0, Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v1}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    .line 642
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 644
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/vungle/warren/AdLoader;->getAssetDownloadListener(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/vungle/warren/downloader/AssetDownloadListener;

    move-result-object v2

    .line 654
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 656
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/AdAsset;

    .line 658
    iget v5, v4, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v6, 0x3

    const/16 v7, 0x18

    const/4 v8, 0x1

    if-ne v5, v6, :cond_4

    .line 660
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v4}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 664
    :cond_3
    iget v5, v4, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v5, v8, :cond_4

    .line 665
    new-instance p2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p2, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 666
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    .line 665
    invoke-interface {v0, p2, p3, p1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 672
    :cond_4
    iget v5, v4, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    iget v5, v4, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v5, :cond_5

    goto :goto_0

    .line 676
    :cond_5
    iget-object v5, v4, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 677
    new-instance p2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p2, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 678
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    .line 677
    invoke-interface {v0, p2, p3, p1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 683
    :cond_6
    new-instance v5, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v6, v4, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    iget-object v7, v4, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    iget-object v9, v4, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v9}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget v6, v4, Lcom/vungle/warren/model/AdAsset;->status:I

    if-ne v6, v8, :cond_7

    .line 686
    iget-object v6, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v6, v5, v9, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z

    .line 689
    :cond_7
    sget-object v6, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting download for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iput v8, v4, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 692
    :try_start_0
    iget-object v6, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v4}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 694
    :catch_0
    new-instance p2, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {p2, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p3, p1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 701
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 702
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/vungle/warren/AdLoader;->onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    return-void

    .line 706
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 708
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 709
    iget-object p3, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {p3, p2, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    goto :goto_1

    :cond_a
    return-void
.end method

.method private downloadAdContent(Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 2
    .param p4    # Lcom/vungle/warren/AdLoader$DownloadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 598
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getAdMarketId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Lcom/vungle/warren/DirectDownloadStrategy;

    invoke-direct {v0, p3}, Lcom/vungle/warren/DirectDownloadStrategy;-><init>(Lcom/vungle/warren/PublisherDirectDownload;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getAdMarketId()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/vungle/warren/AdLoader$3;

    invoke-direct {v1, p0, p2, p4, p1}, Lcom/vungle/warren/AdLoader$3;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;)V

    invoke-interface {v0, p3, v1}, Lcom/vungle/warren/DownloadStrategy;->isApplicationAvailable(Ljava/lang/String;Lcom/vungle/warren/DownloadStrategy$VerificationCallback;)V

    goto :goto_1

    .line 620
    :cond_1
    invoke-direct {p0, p2, p4, p1}, Lcom/vungle/warren/AdLoader;->downloadAdAssets(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private fetchAdMetadata(Ljava/lang/String;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;)V
    .locals 8
    .param p3    # Lcom/vungle/warren/AdLoader$DownloadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/HeaderBiddingCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 468
    :goto_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v1, p1, v0}, Lcom/vungle/warren/VungleApiClient;->requestAd(Ljava/lang/String;Z)Lretrofit2/Call;

    move-result-object v0

    new-instance v7, Lcom/vungle/warren/AdLoader$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/AdLoader$2;-><init>(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;Lcom/vungle/warren/PublisherDirectDownload;)V

    invoke-interface {v0, v7}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z
    .locals 2

    .line 1222
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide p1, p2, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getAssetDownloadListener(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/vungle/warren/downloader/AssetDownloadListener;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 720
    new-instance v6, Lcom/vungle/warren/AdLoader$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/AdLoader$4;-><init>(Lcom/vungle/warren/AdLoader;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;)V

    return-object v6
.end method

.method private isZip(Ljava/io/File;)Z
    .locals 2

    .line 823
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "template"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private loadAd(Ljava/lang/String;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/PublisherDirectDownload;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/DownloadCallbackWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 349
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/vungle/warren/AdLoader$1;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/DownloadCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/PublisherDirectDownload;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/AdLoader$DownloadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$DownloadCallback;",
            "Lcom/vungle/warren/model/Advertisement;",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;",
            ">;)V"
        }
    .end annotation

    .line 831
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1a

    const/16 v3, 0x18

    if-eqz v0, :cond_6

    .line 832
    iget-object p4, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p4

    invoke-virtual {p4}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 834
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, p1, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/AdAsset;

    .line 840
    iget v5, v4, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 841
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, v5, v4}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 844
    new-instance p4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p4, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 848
    :cond_2
    iget v6, v4, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v6, :cond_1

    .line 850
    :try_start_0
    invoke-direct {p0, p3, v4, v5, p4}, Lcom/vungle/warren/AdLoader;->unzipFile(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    :catch_0
    new-instance p4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p4, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 856
    :cond_3
    iget v5, v4, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v5, :cond_1

    iget v4, v4, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 857
    new-instance p4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p4, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 862
    :cond_4
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result p4

    if-ne p4, v1, :cond_5

    .line 863
    iget-object p4, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p4

    invoke-virtual {p4}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/File;

    .line 864
    sget-object v0, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving MRAID for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p3, p4}, Lcom/vungle/warren/model/Advertisement;->setMraidAssetDir(Ljava/io/File;)V

    .line 867
    :try_start_1
    iget-object p4, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p4, p3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 869
    :catch_1
    new-instance p4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p4, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 874
    :cond_5
    :goto_1
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 879
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 882
    iget-object v4, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    invoke-static {v4}, Lcom/vungle/warren/error/VungleException;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v4

    if-ne v4, v2, :cond_8

    .line 883
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_3

    .line 887
    :cond_8
    iget v4, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->serverCode:I

    invoke-direct {p0, v4}, Lcom/vungle/warren/AdLoader;->recoverableServerCode(I)Z

    move-result v4

    const/16 v5, 0x17

    if-eqz v4, :cond_9

    iget v4, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    if-ne v4, v1, :cond_9

    .line 888
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_2

    .line 889
    :cond_9
    iget v0, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    if-nez v0, :cond_a

    .line 890
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_2

    .line 892
    :cond_a
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 897
    :goto_2
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 902
    :cond_b
    :goto_3
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private onError(Lcom/vungle/warren/AdLoader$Operation;I)V
    .locals 4
    .param p1    # Lcom/vungle/warren/AdLoader$Operation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 303
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/LoadAdCallback;

    if-eqz v1, :cond_0

    .line 305
    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recoverableServerCode(I)Z
    .locals 1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_0

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private reposeCodeToVungleException(I)Ljava/lang/Throwable;
    .locals 1

    .line 312
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->recoverableServerCode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    .line 315
    :cond_0
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x15

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1
.end method

.method private retrofitToVungleException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 324
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_0

    .line 325
    new-instance p1, Lcom/vungle/warren/error/VungleError;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleError;-><init>(I)V

    return-object p1

    .line 326
    :cond_0
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    return-object p1

    .line 328
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 329
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    :cond_2
    return-object p1
.end method

.method private setLoading(Ljava/lang/String;Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private unzipFile(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    .locals 7
    .param p3    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/model/Advertisement;",
            "Lcom/vungle/warren/model/AdAsset;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/AdAsset;

    .line 1112
    iget v3, v2, Lcom/vungle/warren/model/AdAsset;->fileType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1113
    iget-object v2, v2, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1117
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vungle/warren/AdLoader$5;

    invoke-direct {v3, p0, v1}, Lcom/vungle/warren/AdLoader$5;-><init>(Lcom/vungle/warren/AdLoader;Ljava/util/List;)V

    invoke-static {p4, v2, v3}, Lcom/vungle/warren/utility/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;

    move-result-object p4

    .line 1137
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1141
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mraid.js"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1143
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "!function(e){\"use strict\";var t,r=e.vungle=e.vungle||{};r.error||(t=r.error=r.error||{},t.bridgeError={BRG000:\"Missing command in mraidBridge.executeSDKCommand method call!\",BRG001:\"Vungle SDK is not ready to process MRAID command!\"},t.bridgeExtError={BRX000:\"Cannot retrieve #dynamic container in Ad Unit!\"},t.mraidError={MRD000:\"Cannot add listener for unknown MRAID event!\",MRD001:\"Missing argument(s)! Both event and/or listener are required for method call!\",MRD002:\"Unable to find listener registered for event!\",MRD003:\"Missing MRAID event! Cannot remove event listener!\",MRD004:\"Missing object! An expand properties object is required for method call!\",MRD005:\"Missing object! An orientation properties object is required for method call!\",MRD006:\"Missing object! An resize properties object is required for method call!\",MRD007:\"Missing URL! A URL is required for method call!\",MRD008:\"Ad unit is hidden and cannot be closed!\",MRD009:\"Missing URL! A video/caption URL is required for method call!\",MRD010:\"Ad Unit is not viewable! Please make sure isViewAble is set to true!\",MRD011:\"Ad unit can only be expanded from the default or resized state!\",MRD012:\"Ad unit can only be resized from the default or resized state!\",MRD013:\"Missing URI! A valid URI is required for method call!\",MRD015:\"Invalid data/type detected when updating MRAID properties!\",MRD016:\"Missing app store id! An app store id is required for method call!\"},t.mraidClientError={MRC000:\"MRAID SDK error detected!\",MRC001:\"Missing MRAID object in window!\",MRC002:\"Missing video URL!  mraidClient.playVideo cannot retrieve video URL from arguments!\"},t.adTemplateError={ADT000:\"Missing page template JavaScript!\",ADT001:\"Error encountered loading template configuration!\"},t.gestureTrackingError={GET000:\"Cannot serialize user interaction tracking event object!\"})}(window),function(e){\"use strict\";var t=e.vungle=e.vungle||{},r=t.mraidCore=t.mraidCore||{},n=t.debugLog=t.debugLog||[];n&&n.push(\"vungle.mraidCore loaded.\"),r.consts={versions:{V1:\"1.0\",V2:\"2.0\"},states:{LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"},events:{INFO:\"info\",READY:\"ready\",ERROR:\"error\",STATE_CHANGE:\"stateChange\",ORIENTATION_CHANGE:\"orientationChange\",VIEWABLE_CHANGE:\"viewableChange\",SIZE_CHANGE:\"sizeChange\"},placements:{UNKNOWN:\"unknown\",INLINE:\"inline\",INTERSTITIAL:\"interstitial\"},orientations:{PORTRAIT:\"portrait\",LANDSCAPE:\"landscape\",NONE:\"none\"},closePositions:{CENTER:\"center\",TOP_LEFT:\"top-left\",TOP_CENTER:\"top-center\",TOP_RIGHT:\"top-right\",BOTTOM_LEFT:\"bottom-left\",BOTTOM_CENTER:\"bottom-center\",BOTTOM_RIGHT:\"bottom-right\"}},r.PropertiesValueObject=function(e){var t=function(e){var t;return e&&\"object\"==typeof e?(t={},Object.keys(e).forEach(function(r){t[r]=e[r]})):t=e,t};this.value=t(e),this.clone=function(){return t(this.value)},this.update=function(e){if(e&&\"object\"==typeof e){var t=this;Object.keys(e).forEach(function(r){t.value[r]=e[r]})}else this.value=e}},r.EventListeners=function(e){var t={};this.event=e,this.listenerCount=0,this.add=function(e){var r=String(e);return!t[r]&&(t[r]=e,this.listenerCount++,!0)},this.remove=function(e){var r=String(e);return!(!t.hasOwnProperty(r)||!t[r])&&(t[r]=null,delete t[r],this.listenerCount--,!0)},this.removeAll=function(){var e=this;Object.keys(t).forEach(function(r){e.remove(t[r])})},this.broadcast=function(e){var r=this;Object.keys(t).forEach(function(n){t[n].apply(r.mraid,e)})}};var i=new r.PropertiesValueObject(r.consts.versions.V1),o=new r.PropertiesValueObject({width:0,height:0}),a=new r.PropertiesValueObject({width:0,height:0}),s=new r.PropertiesValueObject({x:0,y:0,width:0,height:0}),d=new r.PropertiesValueObject({x:0,y:0,width:0,height:0}),c=new r.PropertiesValueObject({width:0,height:0,useCustomClose:!1,isModal:!0}),u=new r.PropertiesValueObject({width:0,height:0,offsetX:0,offsetY:0,customClosePosition:r.consts.closePositions.TOP_RIGHT,allowOffscreen:!0}),l=new r.PropertiesValueObject({allowOrientationChange:!0,forceOrientation:r.consts.orientations.NONE}),p=new r.PropertiesValueObject({sms:!1,tel:!1,calendar:!1,storePicture:!1,inlineVideo:!1}),m=new r.PropertiesValueObject(r.consts.states.LOADING),g=new r.PropertiesValueObject(r.consts.placements.UNKNOWN),f=new r.PropertiesValueObject((!1)),E=new r.PropertiesValueObject((!1)),v=new r.PropertiesValueObject((!1)),R=new r.PropertiesValueObject((!1)),y=new r.PropertiesValueObject((!1)),h=new r.PropertiesValueObject((!1)),C=new r.PropertiesValueObject((!1)),D=new r.PropertiesValueObject((!1)),B=new r.PropertiesValueObject((!1)),x=new r.PropertiesValueObject((!1)),P={},O=new r.PropertiesValueObject(\"\"),S=new r.PropertiesValueObject(\"\");r.eventListeners=P,r.propertiesHandlers={os:{update:function(e){O.update(e)},clone:function(){return O.clone()}},osVersion:{update:function(e){S.update(e)},clone:function(){return S.clone()}},incentivized:{update:function(e){E.update(e)},clone:function(){return E.clone()}},consentRequired:{update:function(e){v.update(e)},clone:function(){return v.clone()}},consentTitleText:{update:function(e){R.update(e)},clone:function(){return R.clone()}},consentBodyText:{update:function(e){y.update(e)},clone:function(){return y.clone()}},consentAcceptButtonText:{update:function(e){h.update(e)},clone:function(){return h.clone()}},consentDenyButtonText:{update:function(e){C.update(e)},clone:function(){return C.clone()}},version:{update:function(e){i.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting MRAID version to: \"+String(e))},clone:function(){return i.clone()}},maxSize:{update:function(e){o.update(e),c.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting maxSize to: \"+String(e))},clone:function(){return o.clone()}},screenSize:{update:function(e){var t;a.update(e),t=a.clone(),r.broadcastEvent(r.consts.events.INFO,\"Setting screenSize to: \"+String(e)),r.broadcastEvent(r.consts.events.SIZE_CHANGE,t.width,t.height)},clone:function(){return a.clone()}},defaultPosition:{update:function(e){s.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting defaultPosition to: \"+String(e))},clone:function(){return s.clone()}},currentPosition:{update:function(e){d.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting currentPosition to: \"+String(e))},clone:function(){return d.clone()}},expandProperties:{update:function(e){c.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting expandProperties to: \"+String(e))},clone:function(){return c.clone()}},resizeProperties:{update:function(e){u.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting resizeProperties to: \"+String(e))},clone:function(){return u.clone()}},orientationProperties:{update:function(e){l.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting orientationProperties to: \"+String(e))},clone:function(){return l.clone()}},supports:{update:function(e){p.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting supports to: \"+String(e))},clone:function(){return p.clone()}},state:{update:function(e){m.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting state to: \"+String(e)),r.broadcastEvent(r.consts.events.STATE_CHANGE,m.clone()),m.clone()===r.consts.states.DEFAULT&&r.broadcastEvent(r.consts.events.READY)},clone:function(){return m.clone()}},placementType:{update:function(e){g.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting placementType to: \"+String(e))},clone:function(){return g.clone()}},isViewable:{update:function(e){f.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting isViewable to: \"+String(e)),r.broadcastEvent(r.consts.events.VIEWABLE_CHANGE,f.clone())},clone:function(){return f.clone()}},customClose:{update:function(e){D.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting useCustomClose to: \"+String(e))},clone:function(){return D.clone()}},customPrivacy:{update:function(e){B.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting useCustomPrivacy to: \"+String(e))},clone:function(){return B.clone()}},enableBackImmediately:{update:function(e){x.update(e),r.broadcastEvent(r.consts.events.INFO,\"Setting enableBackImmediately to: \"+String(e))},clone:function(){return x.clone()}}},r.propertiesValidator=function(e,r,n){var i=!0;return typeof e!=typeof r&&\"useCustomClose\"!==n?(i=!1,t.mraidBridgeExt&&t.mraidBridgeExt.notifyError([\"MRD015\",n,e].join(\":\"))):\"object\"==typeof e&&Object.keys(e).forEach(function(e){e in r||(i=!1,t.mraidBridgeExt&&t.mraidBridgeExt.notifyError([\"MRD015\",n,e].join(\":\")))}),i},r.broadcastEvent=function(){var e=Array.prototype.slice.call(arguments),t=e.shift(),r=P[t];r&&r.broadcast(e)},r.isValidMARIDEvent=function(e){for(var t in r.consts.events)if(r.consts.events[t]===e)return!0;return!1}}(window),function(e){\"use strict\";var t=e.vungle=e.vungle||{},r=t.mraidBridge=t.mraidBridge||{};r.notifyContainer=function(t){e.location=t}}(window),function(e){\"use strict\";var t,r=e.vungle=e.vungle||{},n=r.mraidBridge=r.mraidBridge||{},i=r.mraidBridgeExt=r.mraidBridgeExt||{},o=r.debugLog=r.debugLog||[],a=!1,s=!1,d=[],c=!1,u=!1,l=!1,p=!1,m=r.mraidCore.broadcastEvent,g=r.mraidCore.consts.states,f=r.mraidCore.consts.events;o&&o.push(\"vungle.mraidBridge loaded.\"),i.getReplacementTokens=function(){return t},i.getIsVungleAd=function(){return c},i.getIsDirectDownload=function(){return u},i.getIsDisplayIAP=function(){return l},i.getIsInstalled=function(){return p},i.getEnableBackButtonImmediately=function(){return r.mraidCore.propertiesHandlers.enableBackImmediately.clone()},n.notifyPropertiesChange=function(e,t){o&&o.push(\"mraidBridge.notifyPropertiesChange:\"+JSON.stringify(e)),Object.keys(e).forEach(function(t){r.mraidCore.propertiesHandlers[t]?r.mraidCore.propertiesHandlers[t].update(e[t]):n.notifyErrorEvent(\"notifyPropertiesChange\",\"MRD015: Unhandled Property received - \"+t+\" - \"+e[t])}),\"undefined\"!=typeof t&&t===!0&&r.mraidBridge.notifyContainer(\"mraid://propertiesChangeCompleted\")},n.notifyCommandComplete=function(){o&&o.push(\"mraidBridge.notifyCommandComplete\");var e=\"\";d.length?(e=d.shift(),r.mraidBridge.notifyContainer(e)):s=!1},n.notifyReadyEvent=function(e){o&&o.push(\"mraidBridge.notifyReadyEvent\");var n=r.mraidCore.propertiesHandlers.state.clone();a=!0,\"undefined\"!=typeof e?(c=!0,p=e.isInstalled,l=e.isDisplayIAP,u=e.isDirectDownload,t=e):r.mraidBridgeExt.notifySuccessfulViewAd(),n!==g.DEFAULT?r.mraidCore.propertiesHandlers.state.update(g.DEFAULT):m(f.READY)},n.notifyErrorEvent=function(e,t){o&&o.push(\"mraidBridge.notifyErrorEvent:\"+e+\":\"+t),m(f.ERROR,e,t)},n.executeSDKCommand=function(){var e,t,i,c=\"\";if(!a)throw n.notifyErrorEvent(c,r.error.bridgeError.BRG001),{name:\"VungleMRAIDBridgeException\",message:\"BRG001\"};if(!arguments)throw n.notifyErrorEvent(c,r.error.bridgeError.BRG000),{name:\"VungleMRAIDBridgeException\",message:\"BRG000\"};for(c+=\"mraid://\"+arguments[0],i=1;i<arguments.length;i+=2)e=arguments[i],t=arguments[i+1],c+=(1===i?\"?\":\"&\")+encodeURIComponent(e),\"undefined\"!=typeof t&&(c+=\"=\"+encodeURIComponent(t));s?d.push(c):(s=!0,r.mraidBridge.notifyContainer(c)),o&&o.push(\"mraidBridge.executeSDKCommand: \"+c)},i.fireVideoCompleteEvent=function(){o&&o.push(\"mraidBridgeExt.fireVideoCompleteEvent\");var t=e.document.querySelector(\"#dynamic\"),r=new e.Event(\"vungle.events.video.ended\");t?t.dispatchEvent(r):i.notifyError(e.vungle.error.bridgeExtError.BRX000)},i.notifyPrepareStoreViewSuccess=function(){o&&o.push(\"mraidBridgeExt.notifyPrepareStoreViewSuccess\");var t=e.document.querySelector(\"#dynamic\"),r=new e.Event(\"vungle.events.preparestore.success\");t?t.dispatchEvent(r):i.notifyError(e.vungle.error.bridgeExtError.BRX000)},i.notifyPresentStoreViewFinished=function(){o&&o.push(\"mraidBridgeExt.notifyPresentStoreViewFinished\");var t=e.document.querySelector(\"#dynamic\"),r=new e.Event(\"vungle.events.preparestore.finished\");t?t.dispatchEvent(r):i.notifyError(e.vungle.error.bridgeExtError.BRX000)},i.notifyError=function(t){o&&o.push(\"mraidBridgeExt.notifyError:\"+t);try{r.mraidBridge.executeSDKCommand(\"error\",\"code\",t)}catch(n){\"VungleMRAIDBridgeException\"===n.name?o&&o.push(\"%cVungleMRAIDBridgeException caught in mraidBridgeExt.notifyError! Message: %s\",\"color: red; font-size: x-large\",e.vungle.error.bridgeError[n.message]):o&&o.push(\"%cUnknown Exception caught in mraidBridgeExt.notifyError! Message: %s\",\"color: red; font-size: x-large\",n.message)}},i.notifyTPAT=function(e){o&&o.push(\"mraidBridgeExt.notifyTPATEvent:\"+e);try{r.mraidBridge.executeSDKCommand(\"tpat\",\"event\",e)}catch(t){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.notifyTPAT\",t.message)}},i.consentAction=function(e){o&&o.push(\"mraidBridgeExt.consentActionEvent:\"+e);try{r.mraidBridge.executeSDKCommand(\"consentAction\",\"event\",e)}catch(t){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.consentActionEvent\",t.message)}},i.notifyUserInteraction=function(e,t){o&&o.push(\"mraidBridgeExt.notifyUserInteraction\");try{r.mraidBridge.executeSDKCommand(\"action\",e,t)}catch(n){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.notifyUserInteraction\",n.message)}},i.notifyEventValuePairEvent=function(e,t){o&&o.push(\"mraidBridgeExt.notifyEventValuePairEvent\");var n=e||\"null\",i=t||\"null\";try{r.mraidBridge.executeSDKCommand(\"actionWithValue\",\"event\",n,\"value\",i)}catch(n){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.notifyEventValuePairEvent\",n.message)}},i.playHTML5Video=function(e){o&&o.push(\"mraidBridgeExt.playHTML5Video\");try{r.mraidBridge.executeSDKCommand(\"playHTML5Video\",\"selector\",e)}catch(t){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.playHTML5Video\",t.message)}},i.openPrivacy=function(e){o&&o.push(\"mraidBridgeExt.openPrivacy\");try{r.mraidBridge.executeSDKCommand(\"openPrivacy\",\"url\",e)}catch(t){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.openPrivacy\",t.message)}},i.requestMRAIDClose=function(){o&&o.push(\"mraidBridgeExt.requestMRAIDClose\");try{var e,t=\"windows\"===r.mraidExt.getOS()&&(0===r.mraidExt.getOSVersion().indexOf(\"WinPhone81\")||0===r.mraidExt.getOSVersion().indexOf(\"Win81\")),n=\"android\"===r.mraidExt.getOS()&&parseInt(r.mraidExt.getOSVersion(),10)<=17;t||n?(e=document.createEvent(\"Event\"),e.initEvent(\"vungle.events.request.close\",!0,!0)):e=new Event(\"vungle.events.request.close\"),c?document.querySelector(\"#dynamic\").dispatchEvent(e):r.mraidBridge.executeSDKCommand(\"close\")}catch(i){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.requestMRAIDClose\",i.message)}},i.notifySuccessfulViewAd=function(){o&&o.push(\"mraidBridgeExt.notifySuccessfulViewAd\");try{r.mraidBridge.executeSDKCommand(\"successfulView\")}catch(e){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.notifySuccessfulViewAd\",e.message)}},i.openAppInDevice=function(){o&&o.push(\"mraidBridgeExt.openAppInDevice\");try{r.mraidBridge.executeSDKCommand(\"openAppInDevice\")}catch(e){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.openAppInDevice\",e.message)}},i.openStorePage=function(){o&&o.push(\"mraidBridgeExt.openStorePage\");try{r.mraidBridge.executeSDKCommand(\"openStorePage\")}catch(e){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.openStorePage\",e.message)}},i.cancelDownload=function(){o&&o.push(\"mraidBridgeExt.cancelDownload\");try{r.mraidBridge.executeSDKCommand(\"cancelDownload\")}catch(e){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.cancelDownload\",e.message)}},i.getInstallationStatus=function(t){o&&o.push(\"mraidBridgeExt.getInstallationStatus\");var r=e.document.querySelector(\"#dynamic\"),n=new e.CustomEvent(\"vungle.events.installationStatus.updated\",{detail:t});r?r.dispatchEvent(n):i.notifyError(e.vungle.error.bridgeExtError.BRX000)},i.startDownloadAppOnDevice=function(){o&&o.push(\"mraidBridgeExt.startDownloadAppOnDevice\");try{r.mraidBridge.executeSDKCommand(\"startDownloadAppOnDevice\")}catch(e){r.mraidBridge.notifyErrorEvent(\"mraidBridgeExt.startDownloadAppOnDevice\",e.message)}}}(window),function(e){\"use strict\";var t=e.vungle=e.vungle||{},r=e.mraid=t.mraid=t.mraid||{},n=t.mraidExt=t.mraidExt||{},i=t.debugLog=t.debugLog||[],o=t.mraidBridge.executeSDKCommand,a=t.mraidCore.broadcastEvent,s=t.mraidCore.propertiesHandlers,d=t.mraidCore.propertiesValidator,c=t.mraidCore.consts.states,u=t.mraidCore.consts.events,l=t.mraidCore.consts.placements;i&&i.push(\"vungle.mraid loaded.\"),r.addEventListener=function(e,r){e&&r?t.mraidCore.isValidMARIDEvent(e)?(t.mraidCore.eventListeners[e]||(t.mraidCore.eventListeners[e]=new t.mraidCore.EventListeners(e)),t.mraidCore.eventListeners[e].add(r)):a(u.ERROR,\"mraid.addEventListener\",t.error.mraidError.MRD000+\":\"+e):a(u.ERROR,\"mraid.addEventListener\",t.error.mraidError.MRD001)},r.removeEventListener=function(e,r){var n,i=!1;e?(n=t.mraidCore.eventListeners[e],r?(n&&(i=n.remove(r)),i||a(u.ERROR,\"mraid.removeEventListener\",t.error.mraidError.MRD002+\":\"+e)):n&&t.mraidCore.eventListeners.removeAll(),n&&0===n.count&&(t.mraidCore.eventListeners[e]=null,delete t.mraidCore.eventListeners[e])):a(u.ERROR,\"mraid.removeEventListener\",t.error.mraidError.MRD003)},n.prepareStoreView=function(e){e?o(\"prepareStoreView\",\"appStoreId\",e):a(u.ERROR,\"mraid.prepareStoreView\",t.error.mraidError.MRD016)},n.presentStoreView=function(e){e?o(\"presentStoreView\",\"appStoreId\",e):a(u.ERROR,\"mraid.presentStoreView\",t.error.mraidError.MRD016)},n.getMraidVersion=function(){return\"v4.4.0\"},n.getOS=function(){return s.os.clone()},n.getOSVersion=function(){return s.osVersion.clone()},n.getIncentivized=function(){return s.incentivized.clone()},r.getVersion=function(){return s.version.clone()},r.getMaxSize=function(){return s.maxSize.clone()},r.getScreenSize=function(){return s.screenSize.clone()},r.getDefaultPosition=function(){return s.defaultPosition.clone()},r.getCurrentPosition=function(){return s.currentPosition.clone()},r.getExpandProperties=function(){return s.expandProperties.clone()},r.getResizeProperties=function(){return s.resizeProperties.clone()},r.getOrientationProperties=function(){return s.orientationProperties.clone()},r.supports=function(e){return s.supports.clone()[e]},r.getState=function(){return s.state.clone()},r.getPlacementType=function(){return s.placementType.clone()},r.getConsentRequired=function(){return s.consentRequired.clone()},r.getConsentTitleText=function(){return s.consentTitleText.clone()},r.getConsentBodyText=function(){return s.consentBodyText.clone()},r.getConsentAcceptButtonText=function(){return s.consentAcceptButtonText.clone()},r.getConsentDenyButtonText=function(){return s.consentDenyButtonText.clone()},r.isViewable=function(){return s.isViewable.clone()},r.getViewable=r.isViewable,r.setExpandProperties=function(e){var r={};\"object\"==typeof e?(Object.keys(e).forEach(function(t){\"isModal\"!==t&&(r[t]=e[t])}),d(r,s.expandProperties.clone(),\"expandProperties\")&&s.expandProperties.update(r)):(a(u.ERROR,\"mraid.setExpandProperties\",t.error.mraidError.MRD004),t.mraidBridgeExt&&t.mraidBridgeExt.notifyError(\"MRD004\"))},r.setOrientationProperties=function(e){var r;\"object\"==typeof e?(r=[\"setOrientationProperties\",\"allowOrientationChange\",e.allowOrientationChange,\"forceOrientation\",e.forceOrientation],d(e,s.orientationProperties.clone(),\"orientationProperties\")&&(s.orientationProperties.update(e),o.apply(null,r))):(a(u.ERROR,\"mraid.setOrientationProperties\",t.error.mraidError.MRD005),t.mraidBridgeExt&&t.mraidBridgeExt.notifyError(\"MRD005\"))},r.setResizeProperties=function(e){\"object\"==typeof e?d(e,s.resizeProperties.clone(),\"resizeProperties\")&&s.resizeProperties.update(e):(a(u.ERROR,\"mraid.setResizeProperties\",t.error.mraidError.MRD006),t.mraidBridgeExt&&t.mraidBridgeExt.notifyError(\"MRD006\"))},r.useCustomClose=function(e){var t;d(e,s.customClose.clone(),\"useCustomClose\")&&d({useCustomClose:e},s.expandProperties.clone(),\"expandProperties\")&&(s.customClose.update(e),s.expandProperties.update({useCustomClose:e}),t=e===!0?\"invisible\":e===!1?\"visible\":void 0===e?\"gone\":\"\",o(\"useCustomClose\",\"sdkCloseButton\",t))},n.useCustomPrivacy=function(e){d(e,s.customPrivacy.clone(),\"useCustomPrivacy\")&&(s.customPrivacy.update(e),o(\"useCustomPrivacy\",\"useCustomPrivacy\",e))},r.open=function(e){e?o(\"open\",\"url\",encodeURI(e)):a(u.ERROR,\"mraid.open\",t.error.mraidError.MRD007)},r.close=function(){r.getState()!==c.HIDDEN?o(\"close\"):a(u.ERROR,\"mraid.close\",t.error.mraidError.MRD008)},r.playVideo=function(){var e=arguments&&arguments[0]?arguments[0]:\"\",n=arguments&&arguments[1]?arguments[1]:\"\";r.isViewable()?e.length>0?o(\"playVideo\",\"uri\",e,\"captionUrl\",n):a(u.ERROR,\"mraid.playVideo\",t.error.mraidError.MRD009):a(u.ERROR,\"mraid.playVideo\",t.error.mraidError.MRD010)},r.expand=function(e){var r=s.customClose.clone(),n=s.placementType.clone(),i=s.state.clone(),d=[\"expand\",\"useCustomClose\",r];n!==l.INLINE||i!==c.DEFAULT&&i!==c.RESIZED?a(u.ERROR,\"mraid.expand\",t.error.mraidError.MRD011):(e&&(arguments.push(\"url\"),arguments.push(encodeURI(e))),o.apply(null,d))},r.resize=function(){var e=s.resize.clone(),n=[\"resize\"],i=r.getState();i!==c.DEFAULT&&i!==c.RESIZED?(n.push(\"width\"),n.push(e.width),n.push(\"height\"),n.push(e.height),n.push(\"offsetX\"),n.push(e.offsetX),n.push(\"offsetY\"),n.push(e.offsetY),n.push(\"customClosePosition\"),n.push(e.customClosePosition),n.push(\"allowOffscreen\"),n.push(e.allowOffscreen),o.apply(null,n)):a(u.ERROR,\"mraid.resize\",t.error.mraidError.MRD012)},r.createCalendarEvent=function(){},r.storePicture=function(e){r.isViewable()?e?a(u.ERROR,\"mraid.storePicture\",t.error.mraidError.MRD013):o(\"storePicture\",\"uri\",e):a(u.ERROR,\"mraid.storePicture\",t.error.mraidError.MRD010)}}(window);\n//# sourceMappingURL=vungle.mraid.min.js.map"

    .line 1144
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 1150
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1151
    new-instance v3, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 1153
    iput v2, v3, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 1154
    iget-object v1, p2, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    iput-object v1, v3, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    const/4 v1, 0x3

    .line 1155
    iput v1, v3, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 1156
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto :goto_1

    .line 1159
    :cond_3
    sget-object p1, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uzipped "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    const/4 p1, 0x4

    .line 1162
    iput p1, p2, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 1163
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance p4, Lcom/vungle/warren/AdLoader$6;

    invoke-direct {p4, p0, p3}, Lcom/vungle/warren/AdLoader$6;-><init>(Lcom/vungle/warren/AdLoader;Ljava/io/File;)V

    invoke-virtual {p1, p2, p4}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void
.end method


# virtual methods
.method public canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->hasAssetsFor(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    .line 241
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/AdLoader$Operation;

    const/16 v3, 0x19

    invoke-direct {p0, v2, v3}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V

    .line 246
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    invoke-direct {p0, v1, v3}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 240
    monitor-exit p0

    throw v0
.end method

.method getPendingOperations()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getRunningOperations()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasAssetsFor(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 1194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/AdAsset;

    .line 1196
    iget v3, v2, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v3, :cond_2

    .line 1197
    iget v2, v2, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    goto :goto_0

    .line 1205
    :cond_2
    iget v3, v2, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 1210
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1211
    invoke-direct {p0, v3, v2}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method public isLoading(Ljava/lang/String;)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized load(Lcom/vungle/warren/AdLoader$Operation;)V
    .locals 5
    .param p1    # Lcom/vungle/warren/AdLoader$Operation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    if-nez v0, :cond_0

    const/16 v0, 0x9

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v0, :cond_1

    .line 281
    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 284
    :cond_1
    iget-wide v0, p1, Lcom/vungle/warren/AdLoader$Operation;->delay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v0, :cond_2

    .line 287
    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    new-instance v1, Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {v2}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/vungle/warren/AdLoader$DownloadAdCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$1;)V

    invoke-direct {v1, v2, v3}, Lcom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->directDownload:Lcom/vungle/warren/PublisherDirectDownload;

    invoke-direct {p0, v0, v1, p1}, Lcom/vungle/warren/AdLoader;->loadAd(Ljava/lang/String;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/PublisherDirectDownload;)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/vungle/warren/tasks/DownloadJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    iget-wide v3, p1, Lcom/vungle/warren/AdLoader$Operation;->delay:J

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 273
    monitor-exit p0

    throw p1
.end method

.method public load(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/PublisherDirectDownload;)V
    .locals 13

    .line 1071
    new-instance v12, Lcom/vungle/warren/AdLoader$Operation;

    const/4 v0, 0x1

    new-array v11, v0, [Lcom/vungle/warren/LoadAdCallback;

    const/4 v0, 0x0

    aput-object p2, v11, v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v11}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;JJIILcom/vungle/warren/PublisherDirectDownload;IZ[Lcom/vungle/warren/LoadAdCallback;)V

    move-object v0, p0

    invoke-virtual {p0, v12}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method public loadEndless(Ljava/lang/String;J)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->publisherDirectDownload:Lcom/vungle/warren/PublisherDirectDownload;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;JLcom/vungle/warren/PublisherDirectDownload;)V

    return-void
.end method

.method public loadEndless(Ljava/lang/String;JLcom/vungle/warren/PublisherDirectDownload;)V
    .locals 13

    .line 1086
    new-instance v12, Lcom/vungle/warren/AdLoader$Operation;

    const/4 v0, 0x0

    new-array v11, v0, [Lcom/vungle/warren/LoadAdCallback;

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, v12

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;JJIILcom/vungle/warren/PublisherDirectDownload;IZ[Lcom/vungle/warren/LoadAdCallback;)V

    move-object v0, p0

    invoke-virtual {p0, v12}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method public declared-synchronized loadPendingInternal(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 268
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 270
    :try_start_1
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 265
    monitor-exit p0

    throw p1
.end method

.method public setJobRunner(Lcom/vungle/warren/tasks/JobRunner;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/tasks/JobRunner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    iput-object p1, p0, Lcom/vungle/warren/AdLoader;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    return-void
.end method
