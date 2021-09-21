.class Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;
.super Ljava/lang/Object;
.source "ISNAdViewLogic.java"


# static fields
.field private static mUIThreadHandler:Landroid/os/Handler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private commandsToHandleInAdView:[Ljava/lang/String;

.field private mAdViewConfiguration:Lorg/json/JSONObject;

.field private mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

.field private mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

.field private mWebView:Landroid/webkit/WebView;

.field private final supportedCommandsFromController:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    .line 23
    const-class v0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    const-string v0, "handleGetViewVisibility"

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->commandsToHandleInAdView:[Ljava/lang/String;

    const-string v0, "loadWithUrl"

    const-string v1, "updateAd"

    const-string v2, "isExternalAdViewInitiated"

    const-string v3, "handleGetViewVisibility"

    const-string v4, "sendMessage"

    .line 26
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->supportedCommandsFromController:[Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-direct {v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->canHandleCommandFromController(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendIsExternalAdViewInitiated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendHandleGetViewVisibilityParams(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToAdunit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lorg/json/JSONObject;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->extendConfigurationWithVisibilityParams(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->injectJavaScriptIntoWebView(Ljava/lang/String;)V

    return-void
.end method

.method private buildCommandForWebView(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "window.ssa.onMessageReceived(%1$s)"

    const/4 v1, 0x1

    .line 237
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildParamsObjectForAdViewVisibility()Lorg/json/JSONObject;
    .locals 1

    .line 173
    new-instance v0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$2;-><init>(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;)V

    return-object v0
.end method

.method private buildVisibilityMessageForAdunit(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 289
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    const-string v2, "id"

    .line 291
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 292
    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-virtual {v2}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->collectVisibilityParameters()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 294
    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while trying execute method buildVisibilityMessageForAdunit | params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private canHandleCommandFromController(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->supportedCommandsFromController:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->supportedCommandsFromController:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private extendConfigurationWithVisibilityParams(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 186
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "visibilityParams"

    .line 187
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 190
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    return-object p1
.end method

.method private getUIThreadHandler()Landroid/os/Handler;
    .locals 3

    .line 44
    :try_start_0
    sget-object v0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mUIThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mUIThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    const-string v2, "Error while trying execute method getUIThreadHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :cond_0
    :goto_0
    sget-object v0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mUIThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private injectJavaScriptIntoWebView(Ljava/lang/String;)V
    .locals 4

    .line 242
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:try{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}catch(e){console.log(\"JS exception: \" + JSON.stringify(e));}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 247
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectJavaScriptIntoWebView | Error while trying inject JS into external adunit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Android API level: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private isInReload()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reportAdContainerIsVisible()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->buildParamsObjectForAdViewVisibility()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "containerIsVisible"

    .line 161
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private sendHandleGetViewVisibilityParams(Ljava/lang/String;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->collectVisibilityParameters()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private sendHandleGetViewVisibilityParamsForWebView(Lorg/json/JSONObject;)V
    .locals 1

    .line 284
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->buildVisibilityMessageForAdunit(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, p1, v0, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToAdunit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendIsExternalAdViewInitiated(Ljava/lang/String;)V
    .locals 3

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 198
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "isExternalAdViewInitiated"

    .line 199
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 200
    invoke-direct {p0, p1, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 202
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    const-string v1, "Error while trying execute method sendIsExternalAdViewInitiated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private sendMessageToAdunit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 214
    iget-object p2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mWebView:Landroid/webkit/WebView;

    if-nez p2, :cond_0

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No external adunit attached to ISNAdView while trying to send message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object p2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    invoke-interface {p2, p3, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    :goto_0
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->buildCommandForWebView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-direct {p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->getUIThreadHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$3;

    invoke-direct {p3, p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$3;-><init>(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private shouldHandleMessageInContainer(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 275
    :goto_0
    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->commandsToHandleInAdView:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->commandsToHandleInAdView:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private shouldReportVisibilityToController(Ljava/lang/String;)Z
    .locals 2

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string v0, "isWindowVisible"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "isVisible"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method buildDataForLoadingAd(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->isInReload()Z

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    const-string v1, "externalAdViewId"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    iget-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    const-string p2, "isInReload"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    iget-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 75
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ISNAdViewLogic | buildDataForLoadingAd | Could not build load parameters"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewConfiguration:Lorg/json/JSONObject;

    .line 60
    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    .line 61
    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    .line 62
    sput-object v0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mUIThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method handleMessageFromController(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 98
    invoke-direct {p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->getUIThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic$1;-><init>(Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method handleMessageFromWebView(Ljava/lang/String;)V
    .locals 4

    .line 259
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    .line 260
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->shouldHandleMessageInContainer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "handleGetViewVisibility"

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendHandleGetViewVisibilityParamsForWebView(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v1, "containerSendMessage"

    .line 266
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISNAdViewLogic | receiveMessageFromExternal | Error while trying handle message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method reportAdContainerWasRemoved()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->buildParamsObjectForAdViewVisibility()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "containerWasRemoved"

    .line 169
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setAdViewWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method setControllerDelegate(Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mDelegate:Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;

    return-void
.end method

.method updateViewVisibilityParameters(Ljava/lang/String;IZ)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->mAdViewVisibilityParameters:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->updateViewVisibilityParameters(Ljava/lang/String;IZ)V

    .line 141
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->shouldReportVisibilityToController(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->reportAdContainerIsVisible()V

    :cond_0
    return-void
.end method
