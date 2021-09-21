.class Lcom/ironsource/sdk/controller/MOATJSAdapter$1;
.super Ljava/lang/Object;
.source "MOATJSAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/MOATJSAdapter;->createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/MOATJSAdapter;

.field final synthetic val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

.field final synthetic val$fail:Ljava/lang/String;

.field final synthetic val$success:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/MOATJSAdapter;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->this$0:Lcom/ironsource/sdk/controller/MOATJSAdapter;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$success:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$fail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrackingFailedToStart(Ljava/lang/String;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$fail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTrackingStarted(Ljava/lang/String;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$success:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTrackingStopped(Ljava/lang/String;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$callback:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;->val$success:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
