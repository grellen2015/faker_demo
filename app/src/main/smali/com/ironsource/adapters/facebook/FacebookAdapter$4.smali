.class Lcom/ironsource/adapters/facebook/FacebookAdapter$4;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$adSize:Lcom/facebook/ads/AdSize;

.field final synthetic val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$placementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$adSize:Lcom/facebook/ads/AdSize;

    iput-object p5, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 388
    :try_start_0
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$adSize:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 389
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$800(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v2, v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$900(Lcom/ironsource/adapters/facebook/FacebookAdapter;Landroid/widget/FrameLayout$LayoutParams;)Lcom/facebook/ads/AdListener;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 392
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$placementId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FacebookAdapter loadBanner exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method
