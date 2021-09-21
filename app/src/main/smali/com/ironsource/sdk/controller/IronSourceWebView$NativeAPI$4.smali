.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$4;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->setAllowFileAccessFromFileURLs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$allow:Z


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Z)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$4;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-boolean p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$4;->val$allow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 893
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$4;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$4;->val$allow:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 897
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
