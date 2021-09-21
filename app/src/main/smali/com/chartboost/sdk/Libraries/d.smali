.class public Lcom/chartboost/sdk/Libraries/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ar;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/d;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "limit_ad_tracking"

    .line 106
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "advertising_id"

    .line 109
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iput v3, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 112
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    goto :goto_1

    .line 114
    :cond_1
    iput v2, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 115
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    goto :goto_1

    .line 118
    :cond_2
    iput v3, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 119
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 124
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static b()Z
    .locals 2

    const-string v0, "Amazon"

    .line 83
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private c()V
    .locals 2

    .line 91
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/as;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/Libraries/a;

    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Libraries/a;-><init>(Landroid/content/Context;)V

    .line 93
    iget v1, v0, Lcom/chartboost/sdk/Libraries/a;->a:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 94
    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/chartboost/sdk/Libraries/d$a;
    .locals 5

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CBIdentity"

    const-string v1, "I must be called from a background thread"

    .line 61
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 62
    monitor-exit p0

    return-object v0

    .line 65
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->c()V

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Landroid/content/Context;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    const-string v2, "uuid"

    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/d;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "gaid"

    .line 74
    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_3
    new-instance v2, Lcom/chartboost/sdk/Libraries/d$a;

    iget v3, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    const-string v4, "000000000"

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/d;->c:Ljava/lang/String;

    :goto_1
    invoke-direct {v2, v3, v1, v4, v0}, Lcom/chartboost/sdk/Libraries/d$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    throw v0
.end method
