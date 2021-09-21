.class final Lcom/facebook/appevents/ml/ModelManager$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager;->initializeModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 80
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$000()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$100()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "models"

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$100()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "models"

    const-string v3, ""

    .line 86
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    :goto_0
    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager;->access$200(Lorg/json/JSONObject;)V

    .line 89
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$300()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
