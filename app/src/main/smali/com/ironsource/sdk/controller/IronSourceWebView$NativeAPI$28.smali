.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->onAdWindowsClosed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$demandSourceId:Ljava/lang/String;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 0

    .line 2449
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$demandSourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2451
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2456
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_2

    .line 2457
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto :goto_1

    .line 2452
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2454
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;->val$demandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
