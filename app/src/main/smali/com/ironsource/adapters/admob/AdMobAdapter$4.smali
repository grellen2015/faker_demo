.class Lcom/ironsource/adapters/admob/AdMobAdapter$4;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$adUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$100(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 246
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$900(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 249
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    return-void
.end method
