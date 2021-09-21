.class public Lcom/unity3d/services/ads/webplayer/WebPlayer;
.super Landroid/webkit/WebView;
.source "WebPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;,
        Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;,
        Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerClient;,
        Lcom/unity3d/services/ads/webplayer/WebPlayer$JavaScriptInvocation;
    }
.end annotation


# instance fields
.field private _erroredSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _evaluateJavascript:Ljava/lang/reflect/Method;

.field private _eventSettings:Lorg/json/JSONObject;

.field private viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    .line 56
    iput-object p2, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->viewId:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 61
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 64
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v1, v3, :cond_1

    .line 66
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v3, "evaluateJavascript"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Landroid/webkit/ValueCallback;

    aput-object v7, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Method evaluateJavascript not found"

    .line 68
    invoke-static {v3, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 74
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 79
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 82
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 83
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setHorizontalScrollBarEnabled(Z)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setVerticalScrollBarEnabled(Z)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setInitialScale(I)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setBackgroundColor(I)V

    .line 91
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v0}, Lcom/unity3d/services/core/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setBackgroundResource(I)V

    .line 94
    invoke-virtual {p0, p3, p4}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 96
    new-instance p3, Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerClient;

    invoke-direct {p3, p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerClient;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayer;Lcom/unity3d/services/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 97
    new-instance p3, Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;

    invoke-direct {p3, p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerChromeClient;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayer;Lcom/unity3d/services/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 98
    new-instance p3, Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;

    invoke-direct {p3, p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayer;Lcom/unity3d/services/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 100
    new-instance p1, Lcom/unity3d/services/ads/webplayer/WebPlayerBridgeInterface;

    invoke-direct {p1, p2}, Lcom/unity3d/services/ads/webplayer/WebPlayerBridgeInterface;-><init>(Ljava/lang/String;)V

    const-string p2, "webplayerbridge"

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unity3d/services/ads/webplayer/WebPlayer;)Ljava/lang/reflect/Method;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$400(Lcom/unity3d/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->shouldCallSuper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/unity3d/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->shouldSendEvent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/unity3d/services/ads/webplayer/WebPlayer;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->viewId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/unity3d/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->hasReturnValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/unity3d/services/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "returnValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "returnValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Error getting default return value"

    .line 316
    invoke-static {p2, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-object p3
.end method

.method private getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 190
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 191
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "className"

    .line 193
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 197
    aput-object v2, v0, v1

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 202
    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 244
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 245
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 246
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 247
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "value"

    .line 248
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "type"

    .line 249
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "className"

    .line 252
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "className"

    .line 253
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_3

    const-string v8, "Enum"

    .line 256
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 257
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 259
    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_2

    .line 264
    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 269
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-object v1
.end method

.method private hasReturnValue(Ljava/lang/String;)Z
    .locals 1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "returnValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Error getting default return value"

    .line 329
    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 128
    invoke-direct {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;

    move-result-object v3

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 130
    invoke-direct {p0, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 132
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Setting errored"

    .line 133
    invoke-static {v1, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private shouldCallSuper(Ljava/lang/String;)Z
    .locals 2

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "callSuper"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "callSuper"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Error getting super call status"

    .line 290
    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private shouldSendEvent(Ljava/lang/String;)Z
    .locals 2

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sendEvent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "sendEvent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Error getting send event status"

    .line 303
    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getErroredSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Byte"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_0
    const-string v1, "java.lang.Short"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_1
    const-string v1, "java.lang.Integer"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_2
    const-string v1, "java.lang.Long"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_3
    const-string v1, "java.lang.Character"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_4
    const-string v1, "java.lang.Float"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_5
    const-string v1, "java.lang.Double"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_6
    const-string v1, "java.lang.Boolean"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 228
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_7
    const-string v1, "java.lang.Void"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p1

    :cond_8
    return-object p1
.end method

.method public invokeJavascript(Ljava/lang/String;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayer$JavaScriptInvocation;

    invoke-direct {v0, p0, p1, p0}, Lcom/unity3d/services/ads/webplayer/WebPlayer$JavaScriptInvocation;-><init>(Lcom/unity3d/services/ads/webplayer/WebPlayer;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEvent(Lorg/json/JSONArray;)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.nativebridge.receiveEvent("

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->invokeJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public setEventSettings(Lorg/json/JSONObject;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 114
    invoke-direct {p0, p0, p2}, Lcom/unity3d/services/ads/webplayer/WebPlayer;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    return-void
.end method
