.class final Lcom/moat/analytics/mobile/cha/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static ˎ:Lcom/moat/analytics/mobile/cha/n;


# instance fields
.field private ʻ:Landroid/location/Location;

.field private ˊ:Ljava/util/concurrent/ScheduledExecutorService;

.field private ˊॱ:Z

.field private ˋ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private ˏ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private ॱ:Landroid/location/LocationManager;

.field private ᐝ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/f;->ˋ:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˊॱ:Z

    .line 72
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˊॱ:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string v0, "LocationManager"

    const-string v2, "Moat location services disabled"

    .line 73
    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 75
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˊ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v0

    const-string v2, "location"

    .line 77
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    .line 78
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LocationManager"

    const-string v2, "Device has no location providers"

    .line 79
    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ˎ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method private ʻ()V
    .locals 11

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/n;->ᐝ:Z

    if-nez v0, :cond_2

    const-string v0, "LocationManager"

    const-string v1, "Attempting to start update"

    const/4 v2, 0x3

    .line 202
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ͺ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "LocationManager"

    const-string v3, "start updating gps location"

    .line 204
    invoke-static {v2, v0, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 207
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v9, p0

    .line 206
    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 208
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/n;->ᐝ:Z

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ॱˊ()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LocationManager"

    const-string v3, "start updating network location"

    .line 211
    invoke-static {v2, v0, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v5, "network"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 214
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v9, p0

    .line 213
    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 215
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/n;->ᐝ:Z

    .line 217
    :cond_1
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/n;->ᐝ:Z

    if-eqz v0, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ˊॱ()V

    .line 221
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˊ:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/moat/analytics/mobile/cha/n$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/cha/n$1;-><init>(Lcom/moat/analytics/mobile/cha/n;)V

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˏ:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 234
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method private ʼ()V
    .locals 4

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "LocationManager"

    const-string v2, "Stopping to update location"

    .line 241
    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3302
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3303
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4302
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 4303
    invoke-static {v3, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 242
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 244
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/cha/n;->ᐝ:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 248
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method private ʽ()Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ͺ()Z

    move-result v1

    .line 179
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ॱˊ()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 182
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v3, "network"

    .line 183
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 181
    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 189
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 193
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/cha/n;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ˎ()V

    return-void
.end method

.method private ˊॱ()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˏ:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private ˎ()V
    .locals 4

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˊॱ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/n;->ᐝ:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const-string v0, "LocationManager"

    const-string v2, "already updating location"

    .line 139
    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v0, "LocationManager"

    const-string v2, "starting location fetch"

    .line 142
    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ʽ()Landroid/location/Location;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    .line 145
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    if-eqz v0, :cond_2

    const-string v0, "LocationManager"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Have a valid location, won\'t fetch = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ˏॱ()V

    return-void

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ʻ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 154
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method static ˎ(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 357
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static ˏ()Lcom/moat/analytics/mobile/cha/n;
    .locals 1

    .line 62
    sget-object v0, Lcom/moat/analytics/mobile/cha/n;->ˎ:Lcom/moat/analytics/mobile/cha/n;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/moat/analytics/mobile/cha/n;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/n;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/cha/n;->ˎ:Lcom/moat/analytics/mobile/cha/n;

    .line 65
    :cond_0
    sget-object v0, Lcom/moat/analytics/mobile/cha/n;->ˎ:Lcom/moat/analytics/mobile/cha/n;

    return-object v0
.end method

.method private ˏॱ()V
    .locals 6

    const-string v0, "LocationManager"

    const-string v1, "Resetting fetch timer"

    const/4 v2, 0x3

    .line 267
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ᐝ()V

    .line 270
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    const/high16 v1, 0x44160000    # 600.0f

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    .line 4350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-float v0, v2

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    .line 272
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    float-to-long v0, v1

    .line 276
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/n;->ˊ:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/moat/analytics/mobile/cha/n$2;

    invoke-direct {v3, p0}, Lcom/moat/analytics/mobile/cha/n$2;-><init>(Lcom/moat/analytics/mobile/cha/n;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private ͺ()Z
    .locals 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 5302
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5303
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v3, "gps"

    .line 291
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v3, "gps"

    .line 292
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private static ॱ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 2

    .line 312
    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Landroid/location/Location;)Z

    move-result v0

    .line 313
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Landroid/location/Location;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    if-nez v1, :cond_2

    return-object p0

    .line 326
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    return-object p0

    :cond_3
    return-object p1
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/cha/n;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Z)V

    return-void
.end method

.method private ॱ(Z)V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "LocationManager"

    const-string v2, "stopping location fetch"

    .line 160
    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ʼ()V

    .line 162
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ˊॱ()V

    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ˏॱ()V

    return-void

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ᐝ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 170
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method private static ॱ(Landroid/location/Location;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0

    .line 7350
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-float p0, v1

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private ॱˊ()Z
    .locals 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 6302
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 6303
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 7302
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 7303
    invoke-static {v3, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v3, "network"

    .line 297
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    const-string v3, "network"

    .line 298
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private ᐝ()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˋ:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 6

    :try_start_0
    const-string v0, "LocationManager"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an updated location = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    long-to-float v0, v0

    .line 112
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    const/high16 v1, 0x44160000    # 600.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    const-string p1, "LocationManager"

    const-string v0, "fetchCompleted"

    .line 115
    invoke-static {v2, p1, p0, v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 116
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method final ˊ()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 90
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/n;->ˊॱ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ॱ:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n;->ʻ:Landroid/location/Location;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final ˋ()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/n;->ˎ()V

    return-void
.end method

.method final ॱ()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Z)V

    return-void
.end method
