.class Lcom/ironsource/adapters/admob/AdMobAdapter$9;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 406
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$config:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$2400(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$config:Lorg/json/JSONObject;

    const-string v2, "adUnitId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v5}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " interstitial show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 415
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 416
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$config:Lorg/json/JSONObject;

    const-string v2, "adUnitId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 409
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    sget v3, Lcom/ironsource/adapters/admob/AdMobAdapter;->IS_NOT_READY_ERROR_CODE:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$9;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v5}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "showInterstitial is not ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2
    return-void
.end method
