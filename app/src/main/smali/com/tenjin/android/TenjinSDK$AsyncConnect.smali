.class Lcom/tenjin/android/TenjinSDK$AsyncConnect;
.super Landroid/os/AsyncTask;
.source "TenjinSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenjin/android/TenjinSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncConnect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;


# direct methods
.method private constructor <init>(Lcom/tenjin/android/TenjinSDK;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncConnect;-><init>(Lcom/tenjin/android/TenjinSDK;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "Authorization"

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK;->access$500(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 330
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK;->access$600(Lcom/tenjin/android/TenjinSDK;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK;->access$900(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 339
    :try_start_1
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v1}, Lcom/tenjin/android/TenjinSDK;->access$900(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 340
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    const-string v3, "connect"

    invoke-static {v1, v3}, Lcom/tenjin/android/TenjinSDK;->access$800(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 341
    new-instance v3, Lcom/tenjin/android/HttpConnection;

    invoke-direct {v3}, Lcom/tenjin/android/HttpConnection;-><init>()V

    const-string v4, "https://track.tenjin.com/v0/event"

    invoke-virtual {v3, v4, v1, v2}, Lcom/tenjin/android/HttpConnection;->connect(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    .line 344
    :goto_0
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 345
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    move v5, v1

    move-object v1, p1

    move p1, v5

    .line 347
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 333
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    const-string v1, "connect"

    invoke-static {v0, v1}, Lcom/tenjin/android/TenjinSDK;->access$800(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 334
    new-instance v1, Lcom/tenjin/android/HttpConnection;

    invoke-direct {v1}, Lcom/tenjin/android/HttpConnection;-><init>()V

    const-string v3, "https://track.tenjin.com/v0/event"

    invoke-virtual {v1, v3, v0, v2}, Lcom/tenjin/android/HttpConnection;->connect(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 335
    :try_start_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    move v5, v0

    move-object v0, p1

    move p1, v5

    goto :goto_3

    :catch_3
    move-exception v0

    .line 350
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 322
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK;->access$1000(Lcom/tenjin/android/TenjinSDK;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tenjinInstallPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tenjinInstallReferrerSent"

    .line 358
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "tenjinInstallReferrerSent"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, "tenjinGoogleInstallReferrerSent"

    .line 362
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tenjinGoogleInstallReferrerSent"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    :cond_1
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tenjin/android/TenjinSDK;->access$1202(Lcom/tenjin/android/TenjinSDK;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 371
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$1300(Lcom/tenjin/android/TenjinSDK;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 369
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 322
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
