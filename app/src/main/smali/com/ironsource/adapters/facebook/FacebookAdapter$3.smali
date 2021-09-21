.class Lcom/ironsource/adapters/facebook/FacebookAdapter$3;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x3

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->isAdInvalidated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto/16 :goto_1

    :cond_0
    const-string v2, "Interstitial"

    if-eqz v1, :cond_1

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interstitialAd.isAdInvalidated() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->isAdInvalidated()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "no ads to show"

    :goto_0
    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-virtual {v5}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showInterstitial <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placementId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "> - error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$700(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 306
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v2, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 309
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Facebook Interstitial show failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 310
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v2, "Interstitial"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_1
    return-void
.end method
