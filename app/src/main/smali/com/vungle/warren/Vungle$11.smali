.class final Lcom/vungle/warren/Vungle$11;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/persistence/CacheManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheChanged()V
    .locals 4

    .line 1389
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$2100()V

    .line 1391
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1392
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/downloader/AssetDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->getAllRequests()Ljava/util/List;

    move-result-object v0

    .line 1393
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1394
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 1396
    iget-object v3, v2, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1397
    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/downloader/AssetDownloader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method
