.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSCallbackTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V
    .locals 0

    .line 2552
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2566
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5600()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0, p2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object p2, p2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p3}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sendMessage(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2559
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    if-eqz p1, :cond_0

    .line 2560
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5600()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    .line 2561
    invoke-virtual {v0, p2, p3}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object p2, p2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sendMessage(ZLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2575
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5600()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2582
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object p2, p2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2577
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2578
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    return-void
.end method
