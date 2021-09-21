.class Lcom/vungle/warren/AdvertisementPresentationFactory$1;
.super Landroid/os/AsyncTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;->getFullScreenPresentation(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;)V
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

.field final synthetic val$fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

.field final synthetic val$optionsState:Lcom/vungle/warren/ui/state/OptionsState;

.field final synthetic val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/utility/SDKExecutors;Landroid/content/Context;Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    iput-object p4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    iput-object p5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .locals 17

    move-object/from16 v1, p0

    .line 140
    :try_start_0
    iget-object v0, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000(Lcom/vungle/warren/AdvertisementPresentationFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v3}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$200(Lcom/vungle/warren/AdvertisementPresentationFactory;Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/vungle/warren/model/Advertisement;

    invoke-static {v2, v3}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$302(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/model/Advertisement;)Lcom/vungle/warren/model/Advertisement;

    .line 146
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/vungle/warren/model/Placement;

    .line 148
    iget-object v0, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Advertisement is null or assets are missing"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Advertisement is null or assets are missing"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 153
    :cond_0
    new-instance v7, Lcom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object v0, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$500(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/tasks/JobRunner;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lcom/vungle/warren/tasks/JobRunner;)V

    const/4 v0, 0x0

    .line 156
    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$600(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    const-string v3, "appId"

    const-class v5, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v5}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Cookie;

    if-eqz v2, :cond_1

    const-string v3, "appId"

    .line 157
    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "appId"

    .line 158
    invoke-virtual {v2, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1
    new-instance v14, Lcom/vungle/warren/ui/view/VungleWebClient;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v2

    invoke-direct {v14, v2, v4}, Lcom/vungle/warren/ui/view/VungleWebClient;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V

    .line 162
    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$600(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v3}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/io/File;

    .line 164
    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No presenter available for ad type!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 188
    :pswitch_0
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 190
    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v3

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 192
    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$600(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v5

    new-instance v6, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v6}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 199
    invoke-virtual {v2}, Lcom/vungle/warren/utility/SDKExecutors;->getIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 200
    invoke-virtual {v2}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    move-object v2, v0

    move-object v8, v14

    invoke-direct/range {v2 .. v13}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 203
    new-instance v9, Lcom/vungle/warren/ui/view/MRAIDAdView;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$context:Landroid/content/Context;

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v4, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v4}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$800(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/ui/OrientationDelegate;

    move-result-object v4

    iget-object v5, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v5}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$900(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/ui/CloseDelegate;

    move-result-object v5

    invoke-direct {v9, v2, v3, v4, v5}, Lcom/vungle/warren/ui/view/MRAIDAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 205
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    move-object v10, v0

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/vungle/warren/analytics/MoatTracker;Ljava/lang/String;)V

    return-object v2

    .line 167
    :pswitch_1
    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v2, v2, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v3}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$700(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/VungleApiClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/VungleApiClient;->getMoatEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/vungle/warren/analytics/MoatTracker;->connect(Landroid/widget/VideoView;Z)Lcom/vungle/warren/analytics/MoatTracker;

    move-result-object v15

    .line 169
    new-instance v16, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 171
    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v3

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 173
    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$600(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v5

    new-instance v6, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v6}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v10, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 180
    invoke-virtual {v2}, Lcom/vungle/warren/utility/SDKExecutors;->getIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 181
    invoke-virtual {v2}, Lcom/vungle/warren/utility/SDKExecutors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    move-object/from16 v2, v16

    move-object v8, v15

    move-object v9, v14

    invoke-direct/range {v2 .. v13}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/analytics/AnalyticsVideoTracker;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 184
    new-instance v9, Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$context:Landroid/content/Context;

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v4, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v4}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$800(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/ui/OrientationDelegate;

    move-result-object v4

    iget-object v5, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v5}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$900(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/ui/CloseDelegate;

    move-result-object v5

    invoke-direct {v9, v2, v3, v4, v5}, Lcom/vungle/warren/ui/view/LocalAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 186
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-object v8, v2

    move-object/from16 v10, v16

    move-object v11, v14

    move-object v12, v15

    move-object v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/vungle/warren/analytics/MoatTracker;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 142
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Ljava/lang/Exception;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .locals 4

    .line 214
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1000(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Excpetion on creating presenter"

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1000(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1000(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/ui/JavascriptBridge;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1200(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/warren/ui/JavascriptBridge;)V

    .line 228
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1300(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/analytics/MoatTracker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1300(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/analytics/MoatTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000(Lcom/vungle/warren/AdvertisementPresentationFactory;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v2

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1400(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/warren/analytics/MoatTracker;->configure(Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;)V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->val$fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1500(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdView;

    move-result-object v2

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1200(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$1000(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$1;->onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method
