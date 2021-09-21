.class Lcom/vungle/warren/AdLoader$4$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$4;->onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$4;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$downloadedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$4;Lcom/vungle/warren/downloader/DownloadRequest;Ljava/io/File;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadedFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 775
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {v1, v0, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/AdAsset;

    .line 778
    :goto_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 779
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Downloaded file not found!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$4;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v2, Ljava/io/IOException;

    const-string v4, "Downloaded file not found!"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$4;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    .line 798
    :cond_2
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadedFile:Ljava/io/File;

    invoke-static {v1, v4}, Lcom/vungle/warren/AdLoader;->access$1600(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    :goto_1
    iput v1, v0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 799
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 800
    iput v2, v0, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_4

    .line 814
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$callback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$4;->errors:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    :cond_4
    return-void

    .line 804
    :catch_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$2;->this$1:Lcom/vungle/warren/AdLoader$4;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$4;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method
