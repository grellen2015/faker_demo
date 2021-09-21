.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->handleAdCreditedOnInterstitial(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$credits:I

.field final synthetic val$demandSourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;I)V
    .locals 0

    .line 1455
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;->val$demandSourceId:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;->val$credits:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;->val$demandSourceId:Ljava/lang/String;

    iget v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;->val$credits:I

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialAdRewarded(Ljava/lang/String;I)V

    return-void
.end method
