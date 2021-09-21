.class Lcom/ironsource/adapters/facebook/FacebookAdapter$9;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->createBannerAdListener(Landroid/widget/FrameLayout$LayoutParams;)Lcom/facebook/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 610
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner Ad, onAdClicked"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 611
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 602
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner Ad, onAdLoaded <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 603
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {v0, p1, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 586
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner Ad, onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 587
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$9;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 589
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/16 v0, 0x25e

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    .line 590
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 592
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    .line 594
    :cond_1
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v1, "Empty error string"

    invoke-direct {p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 3

    .line 618
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "Banner Ad, onLoggingImpression"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method
