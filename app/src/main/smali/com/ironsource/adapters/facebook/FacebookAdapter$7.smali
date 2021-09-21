.class Lcom/ironsource/adapters/facebook/FacebookAdapter$7;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadRewardedVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$placement:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    .line 458
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_0
    new-instance v0, Lcom/facebook/ads/RewardedVideoAd;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1300(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/RewardedVideoAdListener;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 465
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->loadAd()V

    .line 466
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1400(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method
