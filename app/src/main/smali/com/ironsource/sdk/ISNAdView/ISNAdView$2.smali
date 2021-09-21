.class Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;
.super Ljava/lang/Object;
.source "ISNAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/ISNAdView/ISNAdView;->loadUrlIntoWebView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

.field final synthetic val$failureMethod:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/ISNAdView/ISNAdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    iput-object p2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->val$failureMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->val$failureMethod:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$600(Lcom/ironsource/sdk/ISNAdView/ISNAdView;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-static {v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->addView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->this$0:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdView$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
