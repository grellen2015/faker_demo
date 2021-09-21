.class Lcom/ironsource/adapters/vungle/VungleAdapter$1;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": RewardedVideo ad ended for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$100(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 181
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    .line 185
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    if-eqz p2, :cond_1

    .line 191
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_2
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": RewardedVideo ad started for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 171
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 173
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": RewardedVideo ad failed to show for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "error: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$200(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 201
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string p2, "Rewarded Video"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 203
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method
