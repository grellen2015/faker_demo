.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$initParams:Ljava/util/Map;

.field final synthetic val$listener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->val$initParams:Ljava/util/Map;

    iput-object p3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->val$listener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .line 316
    invoke-static {v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$600(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .line 317
    invoke-static {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$700(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->val$initParams:Ljava/util/Map;

    iget-object v4, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$5;->val$listener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 315
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    return-void
.end method
