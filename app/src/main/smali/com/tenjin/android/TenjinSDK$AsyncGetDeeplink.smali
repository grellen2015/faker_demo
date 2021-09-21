.class Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;
.super Landroid/os/AsyncTask;
.source "TenjinSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenjin/android/TenjinSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncGetDeeplink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/tenjin/android/Callback;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/tenjin/android/Callback;

.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;


# direct methods
.method public constructor <init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1224
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->callback:Lcom/tenjin/android/Callback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1219
    check-cast p1, [Lcom/tenjin/android/Callback;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->doInBackground([Lcom/tenjin/android/Callback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/tenjin/android/Callback;)Ljava/lang/String;
    .locals 4

    .line 1229
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$1000(Lcom/tenjin/android/TenjinSDK;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "tenjinInstallPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "tenjinFirstLaunchKey"

    const/4 v2, 0x1

    .line 1230
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1231
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK;->access$600(Lcom/tenjin/android/TenjinSDK;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    .line 1233
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "tenjinFirstLaunchKey"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1235
    :cond_0
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$3900(Lcom/tenjin/android/TenjinSDK;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "api_key"

    .line 1236
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK;->access$500(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    new-instance v1, Lcom/tenjin/android/HttpConnection;

    invoke-direct {v1}, Lcom/tenjin/android/HttpConnection;-><init>()V

    const-string v2, "https://track.tenjin.com/v0/user"

    invoke-virtual {v1, v2, p1}, Lcom/tenjin/android/HttpConnection;->getUser(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1239
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->callback:Lcom/tenjin/android/Callback;

    invoke-static {v1, v2, p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$4800(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;Ljava/lang/String;Z)V

    :cond_1
    return-object p1

    .line 1243
    :cond_2
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v3, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->callback:Lcom/tenjin/android/Callback;

    invoke-static {v2, v3}, Lcom/tenjin/android/TenjinSDK;->access$4902(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;)Lcom/tenjin/android/Callback;

    const-wide/16 v2, 0x1388

    .line 1246
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    if-eqz v0, :cond_3

    .line 1248
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "tenjinFirstLaunchKey"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1250
    :cond_3
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$3900(Lcom/tenjin/android/TenjinSDK;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "api_key"

    .line 1251
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK;->access$500(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    new-instance v1, Lcom/tenjin/android/HttpConnection;

    invoke-direct {v1}, Lcom/tenjin/android/HttpConnection;-><init>()V

    const-string v2, "https://track.tenjin.com/v0/user"

    invoke-virtual {v1, v2, p1}, Lcom/tenjin/android/HttpConnection;->getUser(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1254
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->callback:Lcom/tenjin/android/Callback;

    invoke-static {v1, v2, p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$4800(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    .line 1258
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1219
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1269
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1278
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    const-string v0, "eventGetDeeplink"

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$4000(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Z

    goto :goto_1

    .line 1280
    :cond_1
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->this$0:Lcom/tenjin/android/TenjinSDK;

    const-string v0, "eventGetDeeplink"

    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->callback:Lcom/tenjin/android/Callback;

    invoke-static {p1, v0, v1}, Lcom/tenjin/android/TenjinSDK;->access$5000(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Lcom/tenjin/android/Callback;)Z

    :goto_1
    return-void
.end method
