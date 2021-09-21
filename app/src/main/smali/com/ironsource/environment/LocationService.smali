.class public Lcom/ironsource/environment/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/environment/LocationService$ISLocationListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "LocationService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 7

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 32
    invoke-static {p0, v0}, Lcom/ironsource/environment/ApplicationContext;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 33
    invoke-static {p0, v0}, Lcom/ironsource/environment/ApplicationContext;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object p0, Lcom/ironsource/environment/LocationService;->TAG:Ljava/lang/String;

    const-string v0, "Location Permission Not Granted (ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION)"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "location"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    move-object v1, v2

    goto :goto_1

    :catch_1
    :cond_3
    return-object v1
.end method

.method public static getPreciseLocation(Landroid/content/Context;Lcom/ironsource/environment/LocationService$ISLocationListener;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 66
    invoke-static {p0, v0}, Lcom/ironsource/environment/ApplicationContext;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/ironsource/environment/LocationService;->TAG:Ljava/lang/String;

    const-string v2, "Location Permission Not Granted (ACCESS_FINE_LOCATION)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1, v1}, Lcom/ironsource/environment/LocationService$ISLocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "location"

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-eqz p1, :cond_1

    const-string v0, "gps"

    .line 77
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    sget-object p0, Lcom/ironsource/environment/LocationService;->TAG:Ljava/lang/String;

    const-string v0, "GPS Provider is turned off"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-interface {p1, v1}, Lcom/ironsource/environment/LocationService$ISLocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void

    .line 83
    :cond_1
    new-instance v0, Lcom/ironsource/environment/LocationService$1;

    invoke-direct {v0, p1}, Lcom/ironsource/environment/LocationService$1;-><init>(Lcom/ironsource/environment/LocationService$ISLocationListener;)V

    .line 108
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    .line 109
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-eqz p1, :cond_2

    .line 114
    invoke-interface {p1, v1}, Lcom/ironsource/environment/LocationService$ISLocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_2
    return-void
.end method

.method public static locationServicesEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 121
    invoke-static {p0, v1}, Lcom/ironsource/environment/ApplicationContext;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 122
    invoke-static {p0, v1}, Lcom/ironsource/environment/ApplicationContext;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    sget-object p0, Lcom/ironsource/environment/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "Location Permission Not Granted (ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION)"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "location"

    .line 128
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "gps"

    .line 132
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    :try_start_2
    const-string v2, "network"

    .line 138
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const/4 p0, 0x0

    :goto_1
    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_2
    return v0
.end method
