.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    iput-object p3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->val$zoneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    .line 493
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial adReceived zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v3, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$800(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 494
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    .line 495
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1000(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1100(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->val$zoneId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v1, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$700(Lcom/ironsource/adapters/applovin/AppLovinAdapter;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 503
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1100(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;->val$zoneId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
