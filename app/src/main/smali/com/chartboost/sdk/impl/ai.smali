.class public Lcom/chartboost/sdk/impl/ai;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ai$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private final d:Lcom/chartboost/sdk/impl/ai$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    .line 30
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/impl/ai$a;

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "phone"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "CBReachability"

    const-string v0, "Chartboost SDK requires \'android.permission.ACCESS_NETWORK_STATE\' permission set in your AndroidManifest.xml"

    .line 227
    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 96
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->a(Z)V

    .line 101
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 102
    iput v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    const-string p1, "CBReachability"

    const-string v0, "NETWORK TYPE: TYPE_WIFI"

    .line 103
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 106
    iput p1, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    const-string p1, "CBReachability"

    const-string v0, "NETWORK TYPE: TYPE_MOBILE"

    .line 107
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Z)V

    .line 112
    iput p1, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    const-string p1, "CBReachability"

    const-string v0, "NETWORK TYPE: NO Network"

    .line 113
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 116
    iput p1, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    const-string p1, "CBReachability"

    const-string v0, "Chartboost SDK requires \'android.permission.ACCESS_NETWORK_STATE\' permission set in your AndroidManifest.xml"

    .line 117
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_0

    .line 163
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->b(Z)V

    const-string v0, "CBReachability"

    const-string v1, "Network broadcast successfully registered"

    .line 165
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/impl/ai$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 177
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/impl/ai$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ai;->b(Z)V

    const-string p1, "CBReachability"

    const-string v0, "Network broadcast successfully unregistered"

    .line 180
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyObservers()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->setChanged()V

    .line 131
    invoke-super {p0, p0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
