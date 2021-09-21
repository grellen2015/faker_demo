.class Lcom/ironsource/adapters/facebook/FacebookAdapter$8;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->initSdk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " init SDK is completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1500(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 543
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1602(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 545
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 546
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_0

    .line 548
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 549
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_1

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1, v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1800(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/String;)V

    goto :goto_2

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1602(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init failed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1200(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 561
    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x1fc

    invoke-direct {v3, v4, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_3

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v3, "Interstitial"

    .line 564
    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_4

    .line 566
    :cond_4
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$8;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 567
    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_5

    :cond_5
    return-void
.end method
