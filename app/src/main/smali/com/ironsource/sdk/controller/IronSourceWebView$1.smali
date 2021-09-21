.class Lcom/ironsource/sdk/controller/IronSourceWebView$1;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Lcom/ironsource/sdk/controller/WebViewMessagingMediator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->getControllerDelegate()Lcom/ironsource/sdk/controller/WebViewMessagingMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    return-void
.end method
