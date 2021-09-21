.class Lcom/ironsource/mediationsdk/logger/LogsSender;
.super Ljava/lang/Object;
.source "LogsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final AUTHO_PASSWORD:Ljava/lang/String;

.field private final AUTHO_USERNAME:Ljava/lang/String;

.field private final LOG_URL:Ljava/lang/String;

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/logger/ServerLogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/logger/ServerLogEntry;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://mobilelogs.supersonic.com"

    .line 18
    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->LOG_URL:Ljava/lang/String;

    const-string v0, "mobilelogs"

    .line 19
    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->AUTHO_USERNAME:Ljava/lang/String;

    const-string v0, "k@r@puz"

    .line 20
    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->AUTHO_PASSWORD:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    return-void
.end method

.method private getJSONToSend()Lorg/json/JSONObject;
    .locals 4

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "general_properties"

    .line 39
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 43
    iget-object v2, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;

    .line 44
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "log_data"

    .line 46
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private sendLogs(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "https://mobilelogs.supersonic.com"

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mobilelogs"

    const-string v2, "k@r@puz"

    invoke-static {v0, p1, v1, v2}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromPostWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
