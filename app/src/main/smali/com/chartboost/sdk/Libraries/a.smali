.class public Lcom/chartboost/sdk/Libraries/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/impl/s;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    const-string p1, "ContentValues"

    const-string v1, "There was a recoverable error connecting to Google Play Services."

    .line 30
    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "ContentValues"

    const-string v1, "The connection to Google Play Services failed."

    .line 28
    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p1, "ContentValues"

    const-string v1, "This should have been called off the main thread."

    .line 26
    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :catch_3
    :goto_0
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 36
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 39
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    :goto_2
    return-void
.end method
