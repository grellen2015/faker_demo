.class Lcom/ironsource/unity/androidbridge/AndroidBridge$2;
.super Ljava/lang/Object;
.source "AndroidBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/AndroidBridge;->loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$placementName:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$description:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$width:I

    iput p4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$height:I

    iput p5, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$position:I

    iput-object p6, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$placementName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 345
    invoke-static {}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$000()Lcom/ironsource/unity/androidbridge/AndroidBridge;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    new-instance v3, Landroid/widget/FrameLayout;

    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$102(Lcom/ironsource/unity/androidbridge/AndroidBridge;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 349
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 350
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-static {v4}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    iget-object v3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-virtual {v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    iget-object v5, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$description:Ljava/lang/String;

    iget v6, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$width:I

    iget v7, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$height:I

    invoke-static {v4, v5, v6, v7}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$300(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$202(Lcom/ironsource/unity/androidbridge/AndroidBridge;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 354
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 355
    iget v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$position:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x30

    goto :goto_0

    :cond_1
    const/16 v2, 0x50

    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 356
    iget-object v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-static {v2}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$100(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-static {v3}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    new-instance v2, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;

    invoke-direct {v2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge$2;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 412
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$placementName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->val$placementName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 419
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    const-string v3, "onBannerAdLoadFailed"

    iget-object v4, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    const/16 v5, 0x1fd

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->parseErrorToEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$800(Lcom/ironsource/unity/androidbridge/AndroidBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
