.class Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;
.super Ljava/lang/Object;
.source "IronSourceAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/ironsource/IronSourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IronSourceInterstitialListener"
.end annotation


# instance fields
.field private mDemandSourceName:Ljava/lang/String;

.field private mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

.field final synthetic this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    .line 425
    iput-object p2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    return-void
.end method


# virtual methods
.method public onInterstitialAdRewarded(Ljava/lang/String;I)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialAdRewarded demandSourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " amount="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialClick()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    return-void
.end method

.method public onInterstitialClose()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    return-void
.end method

.method public onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 489
    iget-object p2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interstitialListener onInterstitialEventNotificationReceived eventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdVisible()V

    return-void
.end method

.method public onInterstitialInitFailed(Ljava/lang/String;)V
    .locals 2

    .line 437
    iget-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interstitialListener onInterstitialInitFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialInitSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;)V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialLoadFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialLoadSuccess()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialLoadSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    return-void
.end method

.method public onInterstitialOpen()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialOpen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialShowFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v1, "Interstitial"

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interstitialListener onInterstitialShowSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceInterstitialListener;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    return-void
.end method
