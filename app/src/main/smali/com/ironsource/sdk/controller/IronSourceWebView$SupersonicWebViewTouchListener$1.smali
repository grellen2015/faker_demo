.class Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;
.super Landroid/os/CountDownTimer;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;JJ)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close Event Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "forceClose"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->engageEnd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Event Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
