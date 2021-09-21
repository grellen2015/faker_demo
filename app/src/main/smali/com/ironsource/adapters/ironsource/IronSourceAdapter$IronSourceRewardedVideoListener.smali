.class Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;
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
    name = "IronSourceRewardedVideoListener"
.end annotation


# instance fields
.field private mDemandSourceName:Ljava/lang/String;

.field mIsRvDemandOnly:Z

.field mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

.field final synthetic this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    .line 502
    iput-object p2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mIsRvDemandOnly:Z

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;Z)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p3, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    .line 508
    iput-object p2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .line 509
    iput-boolean p4, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mIsRvDemandOnly:Z

    return-void
.end method


# virtual methods
.method public onInterstitialAdRewarded(Ljava/lang/String;I)V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialAdRewarded demandSourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " amount="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    return-void
.end method

.method public onInterstitialClick()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    return-void
.end method

.method public onInterstitialClose()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    return-void
.end method

.method public onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 583
    iget-object p2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rewardedVideoListener onInterstitialEventNotificationReceived eventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 584
    iget-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdVisible()V

    return-void
.end method

.method public onInterstitialInitFailed(Ljava/lang/String;)V
    .locals 2

    .line 521
    iget-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rewardedVideoListener onInterstitialInitFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialInitSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;)V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialLoadFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 538
    iget-boolean v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mIsRvDemandOnly:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :goto_0
    return-void
.end method

.method public onInterstitialLoadSuccess()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialLoadSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 527
    iget-boolean v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mIsRvDemandOnly:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoLoadSuccess()V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :goto_0
    return-void
.end method

.method public onInterstitialOpen()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialOpen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewardedVideoListener onInterstitialShowSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string v1, "Rewarded Video"

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->this$0:Lcom/ironsource/adapters/ironsource/IronSourceAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/ironsource/IronSourceAdapter$IronSourceRewardedVideoListener;->mDemandSourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rewardedVideoListener onInterstitialShowSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ironsource/IronSourceAdapter;->access$000(Lcom/ironsource/adapters/ironsource/IronSourceAdapter;Ljava/lang/String;)V

    return-void
.end method
