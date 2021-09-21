.class public Lcom/ironsource/sdk/controller/MOATJSAdapter;
.super Ljava/lang/Object;
.source "MOATJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
    }
.end annotation


# static fields
.field private static final createAdTracker:Ljava/lang/String; = "createAdTracker"

.field private static final fail:Ljava/lang/String; = "fail"

.field private static final initWithOptions:Ljava/lang/String; = "initWithOptions"

.field private static final moatFunction:Ljava/lang/String; = "moatFunction"

.field private static final moatParams:Ljava/lang/String; = "moatParams"

.field private static final startTracking:Ljava/lang/String; = "startTracking"

.field private static final stopTracking:Ljava/lang/String; = "stopTracking"

.field private static final success:Ljava/lang/String; = "success"


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter;->mApplication:Landroid/app/Application;

    return-void
.end method

.method private createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
    .locals 1

    .line 65
    new-instance v0, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/MOATJSAdapter$1;-><init>(Lcom/ironsource/sdk/controller/MOATJSAdapter;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;-><init>(Lcom/ironsource/sdk/controller/MOATJSAdapter$1;)V

    const-string v1, "moatFunction"

    .line 94
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    const-string v1, "moatParams"

    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    const-string v1, "success"

    .line 96
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    const-string v1, "fail"

    .line 97
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;Landroid/webkit/WebView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/MOATJSAdapter;->fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;

    move-result-object p1

    const-string v0, "initWithOptions"

    .line 48
    iget-object v1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/MOATJSAdapter;->mApplication:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->initWithOptions(Lorg/json/JSONObject;Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    const-string v0, "createAdTracker"

    .line 51
    iget-object v1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 52
    invoke-static {p3}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->createAdTracker(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_1
    const-string p3, "startTracking"

    .line 54
    iget-object v0, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 55
    iget-object p3, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/MOATJSAdapter;->createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->setEventListener(Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;)V

    .line 56
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->startTracking()V

    goto :goto_0

    :cond_2
    const-string p3, "stopTracking"

    .line 58
    iget-object v0, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 59
    iget-object p3, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;->failCallback:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/MOATJSAdapter;->createEventListener(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->setEventListener(Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;)V

    .line 60
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->stopTracking()V

    :cond_3
    :goto_0
    return-void
.end method
