.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadUninitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$adInstance:Lcom/ironsource/sdk/IronSourceAdInstance;

.field final synthetic val$loadParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->val$adInstance:Lcom/ironsource/sdk/IronSourceAdInstance;

    iput-object p3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->val$loadParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 882
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$200(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->val$adInstance:Lcom/ironsource/sdk/IronSourceAdInstance;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/IronSourceAdInstance;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 883
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$600(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$700(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    .line 885
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->val$adInstance:Lcom/ironsource/sdk/IronSourceAdInstance;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/IronSourceAdInstance;->setInitialized(Z)V

    .line 886
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$18;->val$loadParams:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V

    return-void
.end method
