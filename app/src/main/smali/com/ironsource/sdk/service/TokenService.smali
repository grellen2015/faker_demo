.class public Lcom/ironsource/sdk/service/TokenService;
.super Ljava/lang/Object;
.source "TokenService.java"


# static fields
.field private static mInstance:Lcom/ironsource/sdk/service/TokenService;


# instance fields
.field private tokeData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/service/TokenService;->tokeData:Lorg/json/JSONObject;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/sdk/service/TokenService;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/service/TokenService;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/service/TokenService;->mInstance:Lcom/ironsource/sdk/service/TokenService;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/ironsource/sdk/service/TokenService;

    invoke-direct {v1}, Lcom/ironsource/sdk/service/TokenService;-><init>()V

    sput-object v1, Lcom/ironsource/sdk/service/TokenService;->mInstance:Lcom/ironsource/sdk/service/TokenService;

    .line 30
    :cond_0
    sget-object v1, Lcom/ironsource/sdk/service/TokenService;->mInstance:Lcom/ironsource/sdk/service/TokenService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public collectAdvertisingID(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ironsource/sdk/service/TokenService$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/service/TokenService$1;-><init>(Lcom/ironsource/sdk/service/TokenService;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public collectApplicationKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "applicationKey"

    .line 60
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/service/TokenService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public collectApplicationUserId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "applicationUserId"

    .line 53
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/service/TokenService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public collectDataFromActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const-string v0, "immersiveMode"

    .line 71
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->isImmersiveSupported(Landroid/app/Activity;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/service/TokenService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "appOrientation"

    .line 78
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/service/TokenService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public collectDataFromControllerConfig(Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "chinaCDN"

    const-string v1, "chinaCDN"

    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/service/TokenService;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public collectDataFromDevice(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/ironsource/sdk/service/DeviceData;->fetchPermanentData(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/service/TokenService;->updateData(Lorg/json/JSONObject;)V

    .line 109
    invoke-static {p1}, Lcom/ironsource/sdk/service/DeviceData;->fetchMutableData(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/service/TokenService;->updateData(Lorg/json/JSONObject;)V

    return-void
.end method

.method public collectDataFromExternalParams(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "TokenService"

    const-string v0, "collectDataFromExternalParams params=null"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/sdk/service/TokenService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public collectQaParameters()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/ironsource/sdk/service/TokenService;->mInstance:Lcom/ironsource/sdk/service/TokenService;

    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->getInstance()Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/service/TokenService;->collectDataFromExternalParams(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public fetchDependentData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/service/TokenService;->collectAdvertisingID(Landroid/app/Activity;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/service/TokenService;->collectDataFromActivity(Landroid/app/Activity;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/service/TokenService;->collectDataFromDevice(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0, p3}, Lcom/ironsource/sdk/service/TokenService;->collectApplicationUserId(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/service/TokenService;->collectApplicationKey(Ljava/lang/String;)V

    return-void
.end method

.method public fetchIndependentData()V
    .locals 1

    .line 160
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/service/TokenService;->collectDataFromControllerConfig(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/service/TokenService;->collectDataFromExternalParams(Ljava/util/Map;)V

    .line 162
    invoke-virtual {p0}, Lcom/ironsource/sdk/service/TokenService;->collectQaParameters()V

    return-void
.end method

.method public getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/ironsource/sdk/service/TokenService;->fetchIndependentData()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/service/TokenService;->collectDataFromDevice(Landroid/content/Context;)V

    .line 148
    iget-object p1, p0, Lcom/ironsource/sdk/service/TokenService;->tokeData:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/service/Gibberish;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/service/TokenService;->tokeData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    monitor-exit p0

    return-void

    .line 44
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public updateData(Lorg/json/JSONObject;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/sdk/service/TokenService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
