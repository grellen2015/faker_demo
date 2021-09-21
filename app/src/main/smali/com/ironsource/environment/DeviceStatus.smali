.class public Lcom/ironsource/environment/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static final CACHED_UUID_KEY:Ljava/lang/String; = "cachedUUID"

.field private static final DEVICE_OS:Ljava/lang/String; = "android"

.field private static final GOOGLE_PLAY_SERVICES_CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"

.field private static final GOOGLE_PLAY_SERVICES_GET_AID_INFO_METHOD_NAME:Ljava/lang/String; = "getAdvertisingIdInfo"

.field private static final GOOGLE_PLAY_SERVICES_GET_AID_METHOD_NAME:Ljava/lang/String; = "getId"

.field private static final GOOGLE_PLAY_SERVICES_IS_LIMITED_AD_TRACKING_METHOD_NAME:Ljava/lang/String; = "isLimitAdTrackingEnabled"

.field private static final MEDIATION_SHARED_PREFS:Ljava/lang/String; = "Mediation_Shared_Preferences"

.field public static final UUID_ENABLED:Ljava/lang/String; = "uuidEnabled"

.field private static uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findBinary(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sbin/"

    const-string v2, "/system/bin/"

    const-string v3, "/system/xbin/"

    const-string v4, "/data/local/xbin/"

    const-string v5, "/data/local/bin/"

    const-string v6, "/system/sd/xbin/"

    const-string v7, "/system/bin/failsafe/"

    const-string v8, "/data/local/"

    .line 191
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 193
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 194
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return v0
.end method

.method public static getActivityRequestedOrientation(Landroid/content/Context;)I
    .locals 1

    .line 301
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 88
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    .line 90
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getId"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isLimitAdTrackingEnabled"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v1, 0x2

    .line 99
    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    return-object v1
.end method

.method public static getAndroidAPIVersion()I
    .locals 1

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getAndroidOsVersion()Ljava/lang/String;
    .locals 1

    .line 150
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationRotation(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public static getAppsInstallTime(Landroid/content/Context;Z)Lorg/json/JSONObject;
    .locals 9

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 492
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 495
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 498
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x0

    .line 500
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 501
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    if-nez p1, :cond_0

    .line 503
    :try_start_0
    invoke-static {v5}, Lcom/ironsource/environment/DeviceStatus;->isSystemPackage(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    .line 507
    :cond_0
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1000

    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 509
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 510
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 512
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 514
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getAvailableExternalMemorySizeInMegaBytes()J
    .locals 2

    .line 417
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isExternalMemoryAvailableWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 419
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getAvailableInternalMemorySizeInMegaBytes()J
    .locals 2

    .line 400
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 401
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J
    .locals 2

    .line 409
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getFreeStorageInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 443
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "level"

    .line 444
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "scale"

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eq v2, v1, :cond_2

    if-eq v0, v1, :cond_2

    int-to-float p0, v2

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    move v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 452
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v1
.end method

.method public static getDeviceDefaultOrientation(Landroid/content/Context;)I
    .locals 4

    .line 313
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 314
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    if-eq p0, v1, :cond_4

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_2
    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public static getDeviceDensity()F
    .locals 1

    .line 341
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 342
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDeviceHeight()I
    .locals 1

    .line 289
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayHeight()I

    move-result v0

    return v0
.end method

.method public static getDeviceLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceLocalTime()J
    .locals 2

    .line 62
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceOEM()Ljava/lang/String;
    .locals 1

    .line 171
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceOrientation(Landroid/content/Context;)I
    .locals 0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public static getDeviceOs()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public static getDeviceTimeZoneOffsetInMinutes()I
    .locals 3

    .line 72
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceLocalTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method public static getDeviceWidth()I
    .locals 1

    .line 280
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayWidth()I

    move-result v0

    return v0
.end method

.method public static getDisplayHeight()I
    .locals 1

    .line 270
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 271
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getDisplayWidth()I
    .locals 1

    .line 260
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 261
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getFreeStorageInBytes(Ljava/io/File;)J
    .locals 5

    .line 120
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 121
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge p0, v1, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    mul-long v1, v1, v3

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long v1, v1, v3

    :goto_0
    const-wide/32 v3, 0x100000

    .line 127
    div-long/2addr v1, v3

    return-wide v1
.end method

.method public static getInstalledApplications(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 390
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 143
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/ironsource/environment/DeviceStatus;

    monitor-enter v0

    .line 463
    :try_start_0
    sget-object v1, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    sget-object p0, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "Mediation_Shared_Preferences"

    const/4 v2, 0x0

    .line 467
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "uuidEnabled"

    const/4 v2, 0x1

    .line 468
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cachedUUID"

    const-string v2, ""

    .line 470
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    .line 473
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "cachedUUID"

    .line 474
    sget-object v2, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 475
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 477
    :cond_1
    sput-object v1, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 480
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    :cond_2
    :goto_0
    sget-object p0, Lcom/ironsource/environment/DeviceStatus;->uniqueId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 462
    monitor-exit v0

    throw p0
.end method

.method public static getSystemVolumePercent(Landroid/content/Context;)F
    .locals 2

    const-string v0, "audio"

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 251
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method public static isDeviceOrientationLocked(Landroid/content/Context;)Z
    .locals 2

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExternalMemoryAvailableWritable()Z
    .locals 2

    const-string v0, "mounted"

    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isImmersiveSupported(Landroid/app/Activity;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 429
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 v0, p0, 0x1000

    if-eq v0, p0, :cond_1

    or-int/lit16 v0, p0, 0x800

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRootedDevice()Z
    .locals 1

    const-string v0, "su"

    .line 185
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSystemPackage(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    .line 487
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
