.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->onShowInterstitialSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$demandSourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V
    .locals 0

    .line 1757
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;->val$demandSourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1759
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;->val$demandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onAdProductOpen(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 1760
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;->val$demandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialShowSuccess(Ljava/lang/String;)V

    return-void
.end method
