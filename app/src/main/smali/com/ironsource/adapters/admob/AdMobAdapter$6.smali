.class Lcom/ironsource/adapters/admob/AdMobAdapter$6;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->createRewardedAdLoadCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdFailedToLoad(I)V
    .locals 6

    .line 308
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1100(Lcom/ironsource/adapters/admob/AdMobAdapter;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v5}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onRewardedAdFailedToLoad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 311
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 312
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 316
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRewardedAdLoaded()V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onRewardedAdLoaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 300
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$6;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method
