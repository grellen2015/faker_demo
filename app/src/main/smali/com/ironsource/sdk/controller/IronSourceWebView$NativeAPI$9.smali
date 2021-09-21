.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->onShowRewardedVideoFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$demandSourceId:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1569
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->val$demandSourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1571
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->val$message:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1575
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRVShowFail(message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;->val$demandSourceId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVShowFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
