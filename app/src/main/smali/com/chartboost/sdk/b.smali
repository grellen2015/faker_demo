.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Model/e;)Ljava/lang/String;
    .locals 0

    .line 191
    iget-boolean p0, p0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-nez p0, :cond_0

    const-string p0, "native"

    return-object p0

    :cond_0
    const-string p0, "web"

    return-object p0
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    const-string p0, "CBConfig"

    const-string v0, "Set a valid CBFramework first"

    .line 34
    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CBConfig"

    const-string v0, "Invalid Version String"

    .line 38
    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_1
    sput-object p0, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid activity context: Host Activity object is null, Please send a valid activity object"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 137
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 138
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.permission.INTERNET"

    .line 140
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 141
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    .line 142
    invoke-virtual {p0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 144
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 145
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.permission.INTERNET"

    .line 146
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 147
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    .line 148
    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    :goto_0
    const/4 v5, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 151
    :goto_1
    sput-boolean v1, Lcom/chartboost/sdk/i;->n:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 152
    :goto_2
    sput-boolean v1, Lcom/chartboost/sdk/i;->o:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 153
    :goto_3
    sput-boolean v1, Lcom/chartboost/sdk/i;->p:Z

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 154
    :goto_4
    sput-boolean v1, Lcom/chartboost/sdk/i;->q:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    .line 155
    :goto_5
    sput-boolean p0, Lcom/chartboost/sdk/i;->r:Z

    .line 157
    sget-boolean p0, Lcom/chartboost/sdk/i;->o:Z

    if-nez p0, :cond_7

    .line 159
    sget-boolean p0, Lcom/chartboost/sdk/i;->p:Z

    if-nez p0, :cond_6

    return v5

    .line 160
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Please add the permission : android.permission.ACCESS_NETWORK_STATE in your android manifest.xml"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Please add the permission : android.permission.INTERNET in your android manifest.xml"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid activity context passed during intitalization"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Lorg/json/JSONObject;",
            "Landroid/content/SharedPreferences;",
            ")Z"
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance p2, Lcom/chartboost/sdk/Model/e;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/Model/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 62
    const-class p1, Lcom/chartboost/sdk/b;

    const-string p2, "updateConfig"

    invoke-static {p1, p2, p0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method static b()Z
    .locals 2

    .line 113
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 117
    sget-object v0, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppSignature is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppId is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. Activity context seems to be not initialized properly, host activity or application context is being sent as null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. SDK seems to be not initialized properly, check for any integration issues"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x0

    .line 178
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    .line 181
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private static c()Z
    .locals 3

    .line 78
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 84
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Chartboost Weak Activity reference is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
