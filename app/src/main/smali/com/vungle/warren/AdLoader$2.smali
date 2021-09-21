.class Lcom/vungle/warren/AdLoader$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->fetchAdMetadata(Ljava/lang/String;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

.field final synthetic val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;Lcom/vungle/warren/PublisherDirectDownload;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p4, p0, Lcom/vungle/warren/AdLoader$2;->val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

    iput-object p5, p0, Lcom/vungle/warren/AdLoader$2;->val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 586
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0, p2}, Lcom/vungle/warren/AdLoader;->access$1300(Lcom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 472
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$1200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/SDKExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/AdLoader$2$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/warren/AdLoader$2$1;-><init>(Lcom/vungle/warren/AdLoader$2;Lretrofit2/Response;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
