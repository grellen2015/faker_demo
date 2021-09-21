.class Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameBustWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 726
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object p1

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    sget-object p2, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 731
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
