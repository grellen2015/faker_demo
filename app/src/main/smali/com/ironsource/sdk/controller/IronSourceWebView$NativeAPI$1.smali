.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$1;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->removeMessagingInterface(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "GenerateTokenForMessaging"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method
