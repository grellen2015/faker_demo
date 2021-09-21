.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->val$zoneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 343
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

    iget-object p1, p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->val$zoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

    iget-object p1, p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->val$zoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    .line 350
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

    iget-object p1, p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->val$zoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

    iget-object p1, p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5$1;->val$zoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method
