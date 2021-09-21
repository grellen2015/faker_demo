.class Lcom/ironsource/adapters/admob/AdMobAdapter$3;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$config:Lorg/json/JSONObject;

    const-string v1, "adUnitId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 201
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v6}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " RV show  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 203
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$config:Lorg/json/JSONObject;

    const-string v5, "adUnitId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$700(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    .line 206
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    sget v4, Lcom/ironsource/adapters/admob/AdMobAdapter;->RV_NOT_READY_ERROR_CODE:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v6}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "showRewardedVideo rv not ready "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 211
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :goto_0
    return-void
.end method
