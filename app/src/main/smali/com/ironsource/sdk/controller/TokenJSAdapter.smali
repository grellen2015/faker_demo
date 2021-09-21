.class public Lcom/ironsource/sdk/controller/TokenJSAdapter;
.super Ljava/lang/Object;
.source "TokenJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenJSAdapter"

.field private static final UPDATE_TOKEN:Ljava/lang/String; = "updateToken"

.field private static final fail:Ljava/lang/String; = "fail"

.field private static final functionName:Ljava/lang/String; = "functionName"

.field private static final functionParams:Ljava/lang/String; = "functionParams"

.field private static final success:Ljava/lang/String; = "success"


# instance fields
.field private mTokenService:Lcom/ironsource/sdk/service/TokenService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/sdk/service/TokenService;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ironsource/sdk/controller/TokenJSAdapter;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    return-void
.end method

.method private fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;-><init>(Lcom/ironsource/sdk/controller/TokenJSAdapter$1;)V

    const-string v1, "functionName"

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->name:Ljava/lang/String;

    const-string v1, "functionParams"

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    const-string v1, "success"

    .line 37
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    const-string v1, "fail"

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->failureCallback:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/TokenJSAdapter;->fetchFunctionCall(Ljava/lang/String;)Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;

    move-result-object v0

    const-string v1, "updateToken"

    .line 45
    iget-object v2, v0, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object p1, v0, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->params:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/sdk/controller/TokenJSAdapter;->updateToken(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;)V

    goto :goto_0

    .line 48
    :cond_0
    sget-object p2, Lcom/ironsource/sdk/controller/TokenJSAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled API request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateToken(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;)V
    .locals 4

    .line 53
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/TokenJSAdapter;->mTokenService:Lcom/ironsource/sdk/service/TokenService;

    invoke-virtual {v1, p1}, Lcom/ironsource/sdk/service/TokenService;->updateData(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 56
    iget-object v1, p2, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->successCallback:Ljava/lang/String;

    invoke-virtual {p3, p1, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    sget-object v1, Lcom/ironsource/sdk/controller/TokenJSAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateToken exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 60
    iget-object p2, p2, Lcom/ironsource/sdk/controller/TokenJSAdapter$FunctionCall;->failureCallback:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;->sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V

    :goto_0
    return-void
.end method
