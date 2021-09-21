.class Lcom/ironsource/adapters/vungle/VungleAdapter$4;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/warren/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->initVungleSdk(Landroid/app/Activity;Ljava/lang/String;)V
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

    .line 353
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Cache ad is available for placementId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1600(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 411
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Rewarded Video"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v1, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Interstitial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1400(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 424
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Failed to initialize SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1500(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 384
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$900(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    .line 386
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Rewarded Video"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 390
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Interstitial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1400(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 396
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vungle failed to init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Succeeded to initialize SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$800(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 358
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$900(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    .line 359
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1000(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1000(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setConsent(Z)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Rewarded Video"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 367
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1300(Lcom/ironsource/adapters/vungle/VungleAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Interstitial"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$1400(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 374
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_1

    :cond_3
    return-void
.end method
