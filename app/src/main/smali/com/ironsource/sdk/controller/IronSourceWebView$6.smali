.class Lcom/ironsource/sdk/controller/IronSourceWebView$6;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->handleLoadDuringControllerFailed(Lcom/ironsource/sdk/data/DemandSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$demandSource:Lcom/ironsource/sdk/data/DemandSource;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 0

    .line 2931
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2933
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Load during controllerState failed"

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialLoadFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
