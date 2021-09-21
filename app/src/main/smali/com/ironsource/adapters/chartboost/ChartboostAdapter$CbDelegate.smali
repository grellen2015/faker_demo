.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CbDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;


# direct methods
.method private constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 4

    .line 340
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didCacheInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 341
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    :cond_0
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 4

    .line 284
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didCacheRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 285
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 4

    .line 370
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didClickInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 371
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 4

    .line 318
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didClickRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 319
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    :cond_0
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 4

    .line 364
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didCloseInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 4

    .line 312
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didCloseRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 3

    .line 326
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " didCompleteRewardedVideo placementId: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 327
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 328
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    :cond_0
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 4

    .line 356
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didDismissInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 357
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    :cond_0
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 4

    .line 303
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didDismissRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 304
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 4

    .line 378
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didDisplayInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 379
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 381
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    :cond_0
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 4

    .line 275
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didDisplayRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 276
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4

    .line 348
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didFailToLoadInterstitial placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">  error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 349
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4

    .line 293
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didFailToLoadRewardedVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 294
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 295
    iget-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public didInitialize()V
    .locals 4

    .line 388
    monitor-enter p0

    .line 389
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didInitialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 390
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0, v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$802(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Z)Z

    .line 392
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$600(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 393
    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_1

    .line 399
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .locals 4

    .line 334
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " willDisplayVideo placementId: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method
