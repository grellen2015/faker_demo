.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

.field final synthetic val$showParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    iput-object p3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;->val$showParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$19;->val$showParams:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->showInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V

    return-void
.end method
