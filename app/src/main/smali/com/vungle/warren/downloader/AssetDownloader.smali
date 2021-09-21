.class public Lcom/vungle/warren/downloader/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogNotTimber"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloader$RequestException;,
        Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;,
        Lcom/vungle/warren/downloader/AssetDownloader$NetworkType;
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final ACCEPT_RANGES:Ljava/lang/String; = "Accept-Ranges"

.field private static final BYTES:Ljava/lang/String; = "bytes"

.field private static final CONNECTION_RETRY_TIMEOUT:I = 0x12c

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final DOWNLOAD_CHUNK_SIZE:I = 0x800

.field private static final ETAG:Ljava/lang/String; = "ETag"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IF_RANGE:Ljava/lang/String; = "If-Range"

.field private static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field private static final MAX_PERCENT:J = 0x64L

.field private static final MAX_RECONNECT_ATTEMPTS:I = 0xa

.field private static final META_POSTFIX_EXT:Ljava/lang/String; = ".vng_meta"

.field private static final PROGRESS_STEP:I = 0x5

.field private static final RANGE:Ljava/lang/String; = "Range"

.field private static final RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final RETRY_COUNT_ON_CONNECTION_LOST:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AssetDownloader"

.field private static final TIMEOUT:I = 0x1e


# instance fields
.field private final connections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final listeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field maxReconnectAttempts:I

.field private final networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

.field private final networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private volatile progressStep:I

.field reconnectTimeout:I

.field retryCountOnConnectionLost:I

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 8

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 92
    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->retryCountOnConnectionLost:I

    const/16 v1, 0xa

    .line 93
    iput v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    const/16 v1, 0x12c

    .line 94
    iput v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->reconnectTimeout:I

    .line 103
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    .line 887
    new-instance v0, Lcom/vungle/warren/downloader/AssetDownloader$9;

    invoke-direct {v0, p0}, Lcom/vungle/warren/downloader/AssetDownloader$9;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    const/4 v0, 0x1

    .line 109
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 110
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, p1

    move v2, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 112
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 113
    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    .line 114
    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 116
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 117
    invoke-virtual {p1, v1, v2, p2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 118
    invoke-virtual {p1, v1, v2, p2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 119
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/downloader/AssetDownloader;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    return p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->shouldPause(Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onPaused(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->mapExceptionToReason(Ljava/lang/Throwable;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->onCancelled(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/vungle/warren/downloader/AssetDownloader;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->onNetworkChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->isConnected(Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/downloader/AssetDownloader;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)J
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->getContentLength(Lokhttp3/Response;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->fullyDownloadedContent(Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;JLcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->satisfiesPartialDownload(Lokhttp3/Response;JLcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    return-void
.end method

.method private debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .locals 2

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", th - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 4

    const-string v0, "gzip"

    const-string v1, "Content-Encoding"

    .line 525
    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    const-string v1, "Content-Type"

    .line 528
    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 529
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    const-wide/16 v2, -0x1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object v1

    .line 532
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method private deliverProgress(Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 4

    .line 739
    invoke-static {p2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->copy(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    move-result-object v0

    .line 740
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/downloader/AssetDownloadListener;

    .line 743
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/downloader/DownloadRequest;

    if-eqz p2, :cond_0

    .line 745
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/downloader/AssetDownloader$8;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/vungle/warren/downloader/AssetDownloader$8;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private fullyDownloadedContent(Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 8

    .line 592
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    const-string v0, "gzip"

    .line 593
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 596
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    .line 597
    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->getContentLength(Lokhttp3/Response;)J

    move-result-wide v2

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_1

    .line 599
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 600
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "200 code, data size matches file size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->responseVersionMatches(Ljava/io/File;Lokhttp3/Response;)Z

    move-result p1

    return p1

    :cond_1
    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_4

    .line 605
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v2, "Content-Range"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 609
    :cond_2
    new-instance v2, Lcom/vungle/warren/downloader/RangeResponse;

    invoke-direct {v2, v0}, Lcom/vungle/warren/downloader/RangeResponse;-><init>(Ljava/lang/String;)V

    const-string v0, "bytes"

    .line 611
    iget-object v3, v2, Lcom/vungle/warren/downloader/RangeResponse;->dimension:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v6, v2, Lcom/vungle/warren/downloader/RangeResponse;->total:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    iget-wide v2, v2, Lcom/vungle/warren/downloader/RangeResponse;->total:J

    .line 613
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 614
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->responseVersionMatches(Ljava/io/File;Lokhttp3/Response;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 616
    :cond_3
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "416 code, data size matches file size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method private getContentLength(Lokhttp3/Response;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 580
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    .line 585
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    return-wide v0
.end method

.method private isConnected(Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 705
    iget v2, p1, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    sparse-switch v0, :sswitch_data_0

    const/4 v2, -0x1

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x1

    :goto_0
    if-lez v2, :cond_1

    .line 725
    iget v3, p1, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 727
    :goto_1
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking pause for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " connected "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 729
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method private declared-synchronized load(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 209
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V

    .line 211
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$4;

    iget v2, p1, Lcom/vungle/warren/downloader/DownloadRequest;->priority:I

    invoke-direct {v1, p0, v2, p1}, Lcom/vungle/warren/downloader/AssetDownloader$4;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;ILcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit p0

    throw p1
.end method

.method private mapExceptionToReason(Ljava/lang/Throwable;Z)I
    .locals 1

    .line 561
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    .line 563
    instance-of p2, p1, Ljava/net/SocketException;

    if-nez p2, :cond_4

    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 567
    :cond_1
    instance-of p2, p1, Ljava/net/UnknownHostException;

    if-nez p2, :cond_3

    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private onCancelled(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 3
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 536
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/AssetDownloadListener;

    if-nez p2, :cond_0

    .line 540
    new-instance p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {p2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    :cond_0
    const/4 v1, 0x3

    .line 545
    iput v1, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    if-eqz v0, :cond_1

    .line 548
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/downloader/AssetDownloader$5;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/vungle/warren/downloader/AssetDownloader$5;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 556
    :cond_1
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 5
    .param p2    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-nez p2, :cond_0

    .line 649
    monitor-exit p0

    return-void

    .line 651
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/AssetDownloadListener;

    .line 652
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p2, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 653
    invoke-virtual {p2, v1}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V

    if-nez p1, :cond_1

    .line 657
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 662
    :goto_0
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnError - Removing connections and listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 664
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On download error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/downloader/AssetDownloader$7;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/vungle/warren/downloader/AssetDownloader$7;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 647
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onNetworkChanged(I)V
    .locals 6

    monitor-enter p0

    .line 804
    :try_start_0
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v2, 0x3

    .line 807
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 808
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v2, "Result cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_1
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->isConnected(Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v2

    .line 814
    sget-object v3, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequest;->setConnected(Z)V

    .line 818
    iget-boolean v3, v1, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 819
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequest;)V

    .line 821
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 826
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 803
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPaused(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 3

    monitor-enter p0

    .line 642
    :try_start_0
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 643
    iput v0, p1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 644
    iget-object p2, p2, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 641
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 4
    .param p2    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p2, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/AssetDownloadListener;

    .line 628
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnComplete - Removing connections and listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/downloader/AssetDownloader$6;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader$6;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 638
    :cond_0
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 624
    monitor-exit p0

    throw p1
.end method

.method private responseVersionMatches(Ljava/io/File;Lokhttp3/Response;)Z
    .locals 4

    .line 830
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".vng_meta"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->readMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 833
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    const-string v0, "ETag"

    .line 835
    invoke-virtual {p2, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Last-Modified"

    .line 836
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 837
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server etag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server lastModified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ETag"

    .line 840
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "etags miss match current: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ETag"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "Last-Modified"

    .line 845
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 846
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastModified miss match current: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Last-Modified"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private satisfiesPartialDownload(Lokhttp3/Response;JLcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 5

    .line 676
    new-instance v0, Lcom/vungle/warren/downloader/RangeResponse;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "Content-Range"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/downloader/RangeResponse;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v1, 0xce

    if-ne p1, v1, :cond_0

    const-string p1, "bytes"

    iget-object v1, v0, Lcom/vungle/warren/downloader/RangeResponse;->dimension:Ljava/lang/String;

    .line 678
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v1, v0, Lcom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    iget-wide v0, v0, Lcom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 681
    :goto_0
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "satisfies partial download: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->debugString(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private shouldPause(Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 1

    .line 694
    iget-boolean v0, p1, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 697
    :cond_0
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->isConnected(Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public declared-synchronized cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 3
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-nez p1, :cond_0

    .line 755
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 757
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequest;->getAndSetStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    .line 759
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->onCancelled(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 760
    iget-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 761
    iget-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 754
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelAll()V
    .locals 2

    monitor-enter p0

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 793
    invoke-virtual {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 795
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 791
    monitor-exit p0

    throw v0
.end method

.method public cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z
    .locals 5
    .param p1    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 769
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    .line 770
    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    add-long/2addr v1, p2

    .line 773
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long p2, p2, v1

    const/4 p3, 0x0

    if-gez p2, :cond_4

    .line 774
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/downloader/DownloadRequest;

    if-eqz p2, :cond_2

    .line 775
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0xa

    .line 781
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 783
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return p3

    .line 776
    :cond_2
    :goto_1
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request is not present or status changed - finish await "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    .line 777
    :cond_3
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_2
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 776
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    return p3
.end method

.method public declared-synchronized download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/vungle/warren/downloader/AssetDownloader$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader$1;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/DownloadRequest;

    if-eqz v0, :cond_3

    .line 156
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request with same url and path already present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 159
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vungle/warren/downloader/AssetDownloader$2;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_2
    monitor-exit p0

    return-void

    .line 175
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 176
    iget-object v1, v1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Already present request for same path"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    .line 179
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/vungle/warren/downloader/AssetDownloader$3;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_5
    monitor-exit p0

    return-void

    .line 196
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->networkListener:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {p2, v0}, Lcom/vungle/warren/utility/NetworkProvider;->addListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit p0

    throw p1
.end method

.method public getAllRequests()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setProgressStep(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 799
    iput p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    :cond_0
    return-void
.end method

.method declared-synchronized shutdown()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 861
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    .line 862
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->listeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 863
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->connections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 864
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 865
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 868
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 870
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 860
    monitor-exit p0

    throw v0
.end method
