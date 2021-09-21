.class Lcom/vungle/warren/AdLoader$4;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/downloader/AssetDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->getAssetDownloadListener(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$advertisement:Lcom/vungle/warren/model/Advertisement;

.field final synthetic val$callback:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic val$downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$4;->val$downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$4;->val$placementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/AdLoader$4;->val$callback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p5, p0, Lcom/vungle/warren/AdLoader$4;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/AdLoader$4;->errors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 2
    .param p1    # Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 726
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/SDKExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$4$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/vungle/warren/AdLoader$4$1;-><init>(Lcom/vungle/warren/AdLoader$4;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/downloader/DownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 772
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/SDKExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$4$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vungle/warren/AdLoader$4$2;-><init>(Lcom/vungle/warren/AdLoader$4;Lcom/vungle/warren/downloader/DownloadRequest;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
