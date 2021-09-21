.class Lcom/vungle/warren/AdvertisementPresentationFactory$2;
.super Landroid/os/AsyncTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;->getNativeViewPresentation(Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

.field final synthetic val$downloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

.field final synthetic val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

.field final synthetic val$viewCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/utility/SDKExecutors;Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$downloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    iput-object p4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$viewCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .locals 13

    .line 264
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000(Lcom/vungle/warren/AdvertisementPresentationFactory;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$200(Lcom/vungle/warren/AdvertisementPresentationFactory;Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/vungle/warren/model/Advertisement;

    invoke-static {v0, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$302(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/model/Advertisement;)Lcom/vungle/warren/model/Advertisement;

    .line 271
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 272
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No presenter available for ad type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Ljava/lang/Exception;)V

    return-object p1

    .line 275
    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/vungle/warren/model/Placement;

    .line 277
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 278
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Advertisement is null or assets are missing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Advertisement is null or assets are missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Ljava/lang/Exception;)V

    return-object p1

    .line 283
    :cond_1
    new-instance v5, Lcom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$500(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/tasks/JobRunner;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 285
    new-instance p1, Lcom/vungle/warren/ui/view/VungleWebClient;

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lcom/vungle/warren/ui/view/VungleWebClient;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V

    .line 286
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$600(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/io/File;

    .line 289
    new-instance v12, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 290
    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v1

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 292
    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$600(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    new-instance v4, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v4}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v7, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$downloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 299
    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 300
    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    move-object v0, v12

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 302
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v8, v12

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/vungle/warren/analytics/MoatTracker;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 266
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 255
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .locals 4

    .line 308
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p0}, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$viewCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->val$viewCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1200(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1000(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;->onResult(Landroid/util/Pair;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 255
    check-cast p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$2;->onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method
