.class Lcom/ironsource/adapters/facebook/FacebookAdapter$5;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->destroyBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lorg/json/JSONObject;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->val$config:Lorg/json/JSONObject;

    const-string v1, "placementId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->destroy()V

    .line 413
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1000(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 416
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$5;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-virtual {v4}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":destroyBanner() failed with an exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$1100(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void
.end method
