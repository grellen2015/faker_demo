.class Lcom/ironsource/adapters/vungle/VungleAdapter$2;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
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

    .line 260
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Interstitial loaded for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$300(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 265
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Interstitial failed to load for placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,error: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$400(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 273
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading Ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method
