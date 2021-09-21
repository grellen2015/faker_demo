.class public final Lcom/facebook/appevents/ml/ModelManager;
.super Ljava/lang/Object;
.source "ModelManager.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final CACHE_KEY_MODELS:Ljava/lang/String; = "models"

.field private static final MODEL_ASSERT_STORE:Ljava/lang/String; = "com.facebook.internal.MODEL_STORE"

.field public static final MODEL_SUGGESTED_EVENTS:Ljava/lang/String; = "SUGGEST_EVENT"

.field private static final SDK_MODEL_ASSET:Ljava/lang/String; = "%s/model_asset"

.field private static final models:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static shardPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "version_id"

    const-string v1, "asset_uri"

    const-string v2, "use_case"

    const-string v3, "thresholds"

    const-string v4, "rules_uri"

    .line 57
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/json/JSONObject;
    .locals 1

    .line 49
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->fetchFromServer()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .line 49
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->shardPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lorg/json/JSONObject;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/facebook/appevents/ml/ModelManager;->addModelsFromModelJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 49
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->enableSuggestedEvents()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 49
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private static addModelsFromModelJson(Lorg/json/JSONObject;)V
    .locals 4

    .line 98
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/ml/ModelManager;->jsonObjectToModel(Lorg/json/JSONObject;)Lcom/facebook/appevents/ml/Model;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    sget-object v3, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static enable()V
    .locals 0

    .line 66
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->initialize()V

    return-void
.end method

.method private static enableSuggestedEvents()V
    .locals 2

    .line 167
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "SUGGEST_EVENT"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/facebook/internal/Utility;->getResourceLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 175
    :cond_1
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/ml/ModelManager$2;

    invoke-direct {v1}, Lcom/facebook/appevents/ml/ModelManager$2;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    return-void
.end method

.method private static fetchFromServer()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/facebook/appevents/ml/ModelManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fields"

    const-string v3, ","

    .line 141
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%s/model_asset"

    const/4 v2, 0x1

    .line 142
    new-array v3, v2, [Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 142
    invoke-static {v3, v0, v3}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    .line 150
    :cond_0
    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager;->parseRawJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getRuleFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 217
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_0
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/ml/Model;

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/Model;->getRuleFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static initialize()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.MODEL_STORE"

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->shardPreferences:Landroid/content/SharedPreferences;

    .line 72
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->initializeModels()V

    return-void
.end method

.method private static initializeModels()V
    .locals 1

    .line 76
    new-instance v0, Lcom/facebook/appevents/ml/ModelManager$1;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/ModelManager$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/internal/Utility;->runOnNonUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static jsonObjectToModel(Lorg/json/JSONObject;)Lcom/facebook/appevents/ml/Model;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "use_case"

    .line 155
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "asset_uri"

    .line 156
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "thresholds"

    .line 157
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "version_id"

    .line 158
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "rules_uri"

    .line 159
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    new-instance p0, Lcom/facebook/appevents/ml/Model;

    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager;->parseJsonArray(Lorg/json/JSONArray;)[F

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/appevents/ml/Model;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseJsonArray(Lorg/json/JSONArray;)[F
    .locals 3

    .line 194
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 195
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseRawJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "data"

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 119
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "version_id"

    const-string v5, "version_id"

    .line 120
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "use_case"

    const-string v5, "use_case"

    .line 121
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "thresholds"

    const-string v5, "thresholds"

    .line 122
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "asset_uri"

    const-string v5, "asset_uri"

    .line 123
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "rules_uri"

    .line 125
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "rules_uri"

    const-string v5, "rules_uri"

    .line 126
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v4, "use_case"

    .line 128
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 132
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static predict(Ljava/lang/String;[FLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 208
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_0
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->models:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/ml/Model;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/appevents/ml/Model;->predict([FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
