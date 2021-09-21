.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInterstitial(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$demandSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$10;->val$demandSourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadInterstitial(Ljava/lang/String;)V

    return-void
.end method
