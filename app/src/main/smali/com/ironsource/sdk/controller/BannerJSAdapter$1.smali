.class Lcom/ironsource/sdk/controller/BannerJSAdapter$1;
.super Lorg/json/JSONObject;
.source "BannerJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/BannerJSAdapter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/BannerJSAdapter;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/BannerJSAdapter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/Error;
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter$1;->this$0:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p1, "errMsg"

    .line 50
    iget-object p2, p0, Lcom/ironsource/sdk/controller/BannerJSAdapter$1;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/controller/BannerJSAdapter$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
