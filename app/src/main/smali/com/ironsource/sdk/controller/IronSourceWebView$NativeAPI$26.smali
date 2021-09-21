.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$26;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->onGenericFunctionFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V
    .locals 0

    .line 2069
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$26;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$26;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2071
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$26;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$26;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;->onGFFail(Ljava/lang/String;)V

    return-void
.end method
