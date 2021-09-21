.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->adUnitsReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

.field final synthetic val$demandSourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;)V
    .locals 0

    .line 1101
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->val$demandSourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1103
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRVInitSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->val$demandSourceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onAdProductInitSuccess(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/AdUnitsReady;)V

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;->val$demandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
