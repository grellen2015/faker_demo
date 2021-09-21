.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    .line 301
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "videoPlaybackBegan"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 302
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$800(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2

    .line 310
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoPlaybackEnded ; isFullyWatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 312
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p2, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$800(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    .line 313
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 314
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    if-eqz p4, :cond_0

    .line 316
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    :cond_0
    return-void
.end method
