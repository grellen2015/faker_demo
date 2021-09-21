.class Lcom/ironsource/sdk/controller/IronSourceWebView$11;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$scriptBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 3314
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3316
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3319
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3320
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3323
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3326
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 3329
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 3330
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6202(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 3336
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip Exception: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 3339
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6202(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3332
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip NoSuchMethodError: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 3334
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6202(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 3342
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 3343
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6202(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3347
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectJavascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=injectJavaScript"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
