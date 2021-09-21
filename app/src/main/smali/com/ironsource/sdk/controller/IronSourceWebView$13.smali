.class Lcom/ironsource/sdk/controller/IronSourceWebView$13;
.super Landroid/content/BroadcastReceiver;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
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

    .line 4043
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$13;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 4048
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$13;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    move-result-object p2

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne p2, v0, :cond_2

    const-string p2, "none"

    .line 4050
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "wifi"

    goto :goto_0

    .line 4052
    :cond_0
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->isConnectedMobile(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "3g"

    .line 4056
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$13;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->deviceStatusChanged(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
