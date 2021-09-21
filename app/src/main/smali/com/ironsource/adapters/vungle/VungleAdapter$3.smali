.class Lcom/ironsource/adapters/vungle/VungleAdapter$3;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 3

    .line 298
    iget-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Interstitial ad ended for placementReferenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p2, v0, p1, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$600(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 299
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 301
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    :cond_1
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Interstitial ad started for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$500(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 290
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 292
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Interstitial ad failed to show for placementReferenceId: "

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

    invoke-static {v0, v1, p1, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$700(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 311
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string p2, "Interstitial"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method
