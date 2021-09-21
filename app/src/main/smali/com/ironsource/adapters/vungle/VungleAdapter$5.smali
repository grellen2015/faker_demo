.class Lcom/ironsource/adapters/vungle/VungleAdapter$5;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->loadRewardedVideoAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": RewardedVideo Ad loaded for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1700(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 440
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": RewardedVideo Ad failed to load for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1800(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 447
    iget-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 448
    iget-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method
