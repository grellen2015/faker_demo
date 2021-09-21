.class public Lcom/ironsource/sdk/controller/BannerJSAdapter;
.super Ljava/lang/Object;
.source "BannerJSAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;


# static fields
.field public static final ERR_MSG:Ljava/lang/String; = "errMsg"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FUNCTION_NAME:Ljava/lang/String; = "functionName"

.field public static final FUNCTION_PARAMS:Ljava/lang/String; = "functionParams"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "BannerJSAdapter"


# instance fields
.field private mControllerMessageMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

.field private mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    new-instance v0, Lcom/ironsource/sdk/controller/BannerJSAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/sdk/controller/BannerJSAdapter$1;-><init>(Lcom/ironsource/sdk/controller/BannerJSAdapter;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/BannerJSAdapter;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->mControllerMessageMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->mControllerMessageMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/sdk/controller/WebViewMessagingMediator;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method sendMessageToISNAdView(Ljava/lang/String;)V
    .locals 5

    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "functionName"

    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "functionParams"

    .line 63
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "success"

    .line 64
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fail"

    .line 65
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    sget-object v0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BannerJSAdapter | sendMessageToISNAdView | Invalid message format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    if-nez p1, :cond_1

    const-string p1, "Send message to ISNAdView failed"

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/controller/BannerJSAdapter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->receiveMessageFromController(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCommunicationWithAdView(Lcom/ironsource/sdk/ISNAdView/ISNAdView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    .line 35
    iget-object p1, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->mIsnAdView:Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    invoke-virtual {p1, p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdView;->setControllerDelegate(Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;)V

    return-void
.end method

.method public setCommunicationWithController(Lcom/ironsource/sdk/controller/WebViewMessagingMediator;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter;->mControllerMessageMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    return-void
.end method
