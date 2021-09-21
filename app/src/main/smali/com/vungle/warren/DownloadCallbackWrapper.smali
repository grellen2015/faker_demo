.class Lcom/vungle/warren/DownloadCallbackWrapper;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/AdLoader$DownloadCallback;


# instance fields
.field private final downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    .line 16
    iput-object p1, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/DownloadCallbackWrapper;)Lcom/vungle/warren/AdLoader$DownloadCallback;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    return-object p0
.end method


# virtual methods
.method public onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/DownloadCallbackWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/DownloadCallbackWrapper$1;-><init>(Lcom/vungle/warren/DownloadCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/DownloadCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/DownloadCallbackWrapper$2;-><init>(Lcom/vungle/warren/DownloadCallbackWrapper;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/DownloadCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/DownloadCallbackWrapper$3;-><init>(Lcom/vungle/warren/DownloadCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
