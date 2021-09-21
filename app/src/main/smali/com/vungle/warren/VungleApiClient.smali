.class public Lcom/vungle/warren/VungleApiClient;
.super Ljava/lang/Object;
.source "VungleApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;,
        Lcom/vungle/warren/VungleApiClient$WrapperFramework;,
        Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;
    }
.end annotation


# static fields
.field private static BASE_URL:Ljava/lang/String; = null

.field static HEADER_UA:Ljava/lang/String; = null

.field static final MANUFACTURER_AMAZON:Ljava/lang/String; = "Amazon"

.field private static logInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static networkInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private api:Lcom/vungle/warren/network/VungleApi;

.field private appBody:Lcom/google/gson/JsonObject;

.field private cacheManager:Lcom/vungle/warren/persistence/CacheManager;

.field private client:Lokhttp3/OkHttpClient;

.field private context:Landroid/content/Context;

.field private defaultIdFallbackDisabled:Z

.field private deviceBody:Lcom/google/gson/JsonObject;

.field private enableMoat:Z

.field private gzipApi:Lcom/vungle/warren/network/VungleApi;

.field private newEndpoint:Ljava/lang/String;

.field private reportAdEndpoint:Ljava/lang/String;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private requestAdEndpoint:Ljava/lang/String;

.field private retryAfterDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private riEndpoint:Ljava/lang/String;

.field private shouldTransmitIMEI:Z

.field private timeoutApi:Lcom/vungle/warren/network/VungleApi;

.field private uaString:Ljava/lang/String;

.field private userBody:Lcom/google/gson/JsonObject;

.field private userImei:Ljava/lang/String;

.field private willPlayAdEnabled:Z

.field private willPlayAdEndpoint:Ljava/lang/String;

.field private willPlayAdTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Amazon"

    .line 171
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VungleAmazon/6.4.11"

    goto :goto_0

    :cond_0
    const-string v0, "VungleDroid/6.4.11"

    :goto_0
    sput-object v0, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    const-string v0, "https://ads.api.vungle.com/"

    .line 174
    sput-object v0, Lcom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    .line 1216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->networkInterceptors:Ljava/util/Set;

    .line 1218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->logInterceptors:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;)V
    .locals 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VungleApiClient"

    .line 95
    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->retryAfterDataMap:Ljava/util/Map;

    const-string v0, "http.agent"

    .line 203
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    .line 212
    new-instance v0, Lcom/vungle/warren/VungleApiClient$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/VungleApiClient$1;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    .line 261
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 262
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/warren/VungleApiClient;->client:Lokhttp3/OkHttpClient;

    .line 276
    new-instance v1, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    invoke-direct {v1}, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 278
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v2, Lcom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 280
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->client:Lokhttp3/OkHttpClient;

    .line 281
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 283
    const-class v2, Lcom/vungle/warren/network/VungleApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/network/VungleApi;

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    .line 284
    invoke-virtual {v1}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/vungle/warren/network/VungleApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/network/VungleApi;

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->gzipApi:Lcom/vungle/warren/network/VungleApi;

    .line 286
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/VungleApiClient;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/VungleApiClient;)Ljava/util/Map;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->retryAfterDataMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/VungleApiClient;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vungle/warren/VungleApiClient;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/VungleApiClient;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lcom/vungle/warren/VungleApiClient;->addUserAgentInCookie(Ljava/lang/String;)V

    return-void
.end method

.method private addUserAgentInCookie(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1177
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "userAgent"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    const-string v1, "userAgent"

    .line 1178
    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method

.method private getConnectionTypeDetail(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "IWLAN"

    return-object p1

    :pswitch_1
    const-string p1, "TD_SCDMA"

    return-object p1

    :pswitch_2
    const-string p1, "GSM"

    return-object p1

    :pswitch_3
    const-string p1, "HSPAP"

    return-object p1

    :pswitch_4
    const-string p1, "EHPRD"

    return-object p1

    :pswitch_5
    const-string p1, "LTE"

    return-object p1

    :pswitch_6
    const-string p1, "EVDO_B"

    return-object p1

    :pswitch_7
    const-string p1, "IDEN"

    return-object p1

    :pswitch_8
    const-string p1, "HSPA"

    return-object p1

    :pswitch_9
    const-string p1, "HSUPA"

    return-object p1

    :pswitch_a
    const-string p1, "HSDPA"

    return-object p1

    :pswitch_b
    const-string p1, "1xRTT"

    return-object p1

    :pswitch_c
    const-string p1, "EVDO_A"

    return-object p1

    :pswitch_d
    const-string p1, "EVDO_0"

    return-object p1

    :pswitch_e
    const-string p1, "CDMA"

    return-object p1

    :pswitch_f
    const-string p1, "UMTS"

    return-object p1

    :pswitch_10
    const-string p1, "EDGE"

    return-object p1

    :pswitch_11
    const-string p1, "GPRS"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDeviceBody()Lcom/google/gson/JsonObject;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 776
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "Amazon"

    .line 784
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v4, :cond_1

    .line 786
    :try_start_1
    iget-object v4, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "limit_ad_tracking"

    .line 788
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    if-ne v5, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    :try_start_2
    const-string v6, "advertising_id"

    .line 790
    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    const/4 v5, 0x1

    :goto_1
    :try_start_3
    const-string v6, "VungleApiClient"

    const-string v7, "Error getting Amazon advertising info"

    .line 793
    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v1

    goto/16 :goto_7

    :catch_2
    move-object v4, v1

    goto/16 :goto_6

    .line 797
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 799
    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 800
    :try_start_5
    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 801
    :try_start_6
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    const-string v7, "ifa"

    invoke-virtual {v6, v7, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_4

    :catch_4
    move-object v4, v5

    goto :goto_5

    :catch_5
    move-exception v6

    goto :goto_3

    :cond_2
    move-object v5, v1

    const/4 v4, 0x1

    :goto_2
    move-object v10, v5

    move v5, v4

    move-object v4, v10

    goto :goto_7

    :catch_6
    move-exception v6

    move-object v5, v1

    :goto_3
    const/4 v4, 0x1

    :goto_4
    :try_start_7
    const-string v7, "VungleApiClient"

    .line 807
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Play services Not available: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/NoClassDefFoundError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "advertising_id"

    .line 809
    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move v5, v4

    move-object v4, v6

    goto :goto_7

    :catch_7
    move-object v10, v5

    move v5, v4

    move-object v4, v10

    goto :goto_6

    :catch_8
    move-object v4, v1

    :goto_5
    const/4 v5, 0x1

    :goto_6
    const-string v6, "VungleApiClient"

    const-string v7, "Cannot load Advertising ID"

    .line 814
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-eqz v4, :cond_4

    const-string v6, "Amazon"

    .line 818
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "amazon_advertising_id"

    goto :goto_8

    :cond_3
    const-string v6, "gaid"

    :goto_8
    invoke-virtual {v0, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    const-string v7, "ifa"

    invoke-virtual {v6, v7, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 822
    :cond_4
    iget-object v4, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "android_id"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 823
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    const-string v7, "ifa"

    iget-boolean v8, p0, Lcom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    if-eqz v8, :cond_5

    const-string v8, ""

    goto :goto_9

    .line 824
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    move-object v8, v4

    goto :goto_9

    :cond_6
    const-string v8, ""

    .line 823
    :goto_9
    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    if-nez v6, :cond_7

    const-string v6, "android_id"

    .line 826
    invoke-virtual {v0, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_7
    :goto_a
    iget-object v4, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    const-string v6, "lmt"

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_b

    :cond_8
    const/4 v5, 0x0

    :goto_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 836
    iget-object v4, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    .line 837
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 838
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_9
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 839
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.google.android.gms"

    .line 840
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v5, 0x1

    goto :goto_c

    :cond_a
    const-string v4, "is_google_play_services_available"

    .line 847
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 850
    iget-object v4, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "level"

    const/4 v5, -0x1

    .line 851
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "scale"

    .line 852
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-lez v4, :cond_b

    if-lez v6, :cond_b

    const-string v7, "battery_level"

    int-to-float v4, v4

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 854
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_b
    const-string v4, "status"

    .line 856
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v5, :cond_c

    const-string v1, "UNKNOWN"

    goto :goto_e

    :cond_c
    const/4 v7, 0x2

    if-eq v4, v7, :cond_e

    const/4 v7, 0x5

    if-ne v4, v7, :cond_d

    goto :goto_d

    :cond_d
    const-string v1, "NOT_CHARGING"

    goto :goto_e

    :cond_e
    :goto_d
    const-string v4, "plugged"

    .line 861
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_f

    packed-switch v1, :pswitch_data_0

    const-string v1, "BATTERY_PLUGGED_OTHERS"

    goto :goto_e

    :pswitch_0
    const-string v1, "BATTERY_PLUGGED_USB"

    goto :goto_e

    :pswitch_1
    const-string v1, "BATTERY_PLUGGED_AC"

    goto :goto_e

    :cond_f
    const-string v1, "BATTERY_PLUGGED_WIRELESS"

    :goto_e
    const-string v4, "battery_state"

    .line 877
    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_11

    .line 881
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v4, "battery_saver_enabled"

    if-eqz v1, :cond_10

    .line 882
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_f

    :cond_10
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 886
    :cond_11
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v4}, Landroid/support/v4/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "NONE"

    const-string v4, "NONE"

    .line 890
    iget-object v5, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_12

    .line 892
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 894
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v1, "UNKNOWN"

    const-string v4, "UNKNOWN"

    goto :goto_10

    :sswitch_0
    const-string v1, "ETHERNET"

    const-string v4, "ETHERNET"

    goto :goto_10

    :sswitch_1
    const-string v1, "BLUETOOTH"

    const-string v4, "BLUETOOTH"

    goto :goto_10

    :sswitch_2
    const-string v1, "WIFI"

    const-string v4, "WIFI"

    goto :goto_10

    :sswitch_3
    const-string v1, "MOBILE"

    .line 905
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/vungle/warren/VungleApiClient;->getConnectionTypeDetail(I)Ljava/lang/String;

    move-result-object v4

    :cond_12
    :goto_10
    const-string v7, "connection_type"

    .line 919
    invoke-virtual {v0, v7, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connection_type_detail"

    .line 920
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_14

    .line 923
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 925
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const-string v1, "UNKNOWN"

    goto :goto_11

    :pswitch_2
    const-string v1, "ENABLED"

    goto :goto_11

    :pswitch_3
    const-string v1, "WHITELISTED"

    goto :goto_11

    :pswitch_4
    const-string v1, "DISABLED"

    :goto_11
    const-string v4, "data_saver_status"

    .line 945
    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_metered"

    .line 946
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_12

    :cond_13
    const-string v1, "data_saver_status"

    const-string v4, "NOT_APPLICABLE"

    .line 948
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_metered"

    .line 949
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_14
    :goto_12
    const-string v1, "locale"

    .line 955
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    .line 956
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time_zone"

    .line 957
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    if-eqz v1, :cond_1e

    .line 962
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_16

    const/4 v4, 0x3

    .line 965
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    .line 966
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v5

    div-float/2addr v4, v5

    const-string v5, "volume_level"

    .line 968
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v4, "sound_enabled"

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_13

    :cond_15
    const/4 v1, 0x0

    .line 969
    :goto_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 973
    :cond_16
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    .line 974
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 976
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "storage_bytes_available"

    .line 977
    iget-object v4, p0, Lcom/vungle/warren/VungleApiClient;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_17
    const-string v1, "Amazon"

    .line 982
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 984
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "amazon.hardware.fire_tv"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_15

    .line 986
    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1b

    .line 989
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v4, "uimode"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 990
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    if-ne v1, v6, :cond_1a

    :cond_19
    :goto_14
    const/4 v1, 0x1

    goto :goto_15

    :cond_1a
    const/4 v1, 0x0

    goto :goto_15

    .line 995
    :cond_1b
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.google.android.tv"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    .line 996
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_14

    :goto_15
    const-string v4, "is_tv"

    .line 999
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "os_api_level"

    .line 1000
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1005
    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_1c

    .line 1006
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 1007
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 1008
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    move v2, v1

    goto :goto_16

    .line 1011
    :cond_1c
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "install_non_market_apps"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_9

    if-ne v1, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_16

    :catch_9
    move-exception v1

    const-string v3, "VungleApiClient"

    const-string v4, "isInstallNonMarketAppsEnabled Settings not found"

    .line 1014
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_16
    const-string v1, "is_sideload_enabled"

    .line 1016
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_17

    :cond_1e
    const-string v1, "volume_level"

    .line 1019
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "sound_enabled"

    .line 1020
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1023
    :goto_17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "sd_card_available"

    .line 1024
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "os_name"

    .line 1025
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vduid"

    const-string v2, ""

    .line 1028
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    const-string v2, "ext"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "vungle"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "Amazon"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "amazon"

    goto :goto_18

    :cond_1f
    const-string v2, "android"

    :goto_18
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1032
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getUserAgentFromCookie()Ljava/lang/String;
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v1, "userAgent"

    const-class v2, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-nez v0, :cond_0

    const-string v0, "http.agent"

    .line 1164
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "userAgent"

    .line 1166
    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "http.agent"

    .line 1168
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getUserBody()Lcom/google/gson/JsonObject;
    .locals 7

    .line 1090
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->userBody:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->userBody:Lcom/google/gson/JsonObject;

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v1, "consentIsImportantToVungle"

    const-class v2, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-eqz v0, :cond_1

    const-string v1, "consent_status"

    .line 1102
    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "consent_source"

    .line 1103
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    .line 1104
    invoke-virtual {v0, v3}, Lcom/vungle/warren/model/Cookie;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "consent_message_version"

    .line 1105
    invoke-virtual {v0, v5}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "unknown"

    const-string v2, "no_interaction"

    const-wide/16 v3, 0x0

    const-string v0, ""

    .line 1117
    :goto_0
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v6, "consent_status"

    .line 1125
    invoke-virtual {v5, v6, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consent_source"

    .line 1133
    invoke-virtual {v5, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consent_timestamp"

    .line 1138
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "consent_message_version"

    .line 1140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->userBody:Lcom/google/gson/JsonObject;

    const-string v1, "gdpr"

    invoke-virtual {v0, v1, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1145
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->userBody:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method private declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;)V
    .locals 2

    monitor-enter p0

    .line 362
    :try_start_0
    iput-object p4, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    const/4 p4, 0x0

    .line 363
    iput-boolean p4, p0, Lcom/vungle/warren/VungleApiClient;->shouldTransmitIMEI:Z

    .line 364
    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    .line 368
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "id"

    .line 369
    invoke-virtual {p3, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "bundle"

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 373
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p4

    :catch_0
    :try_start_2
    const-string p4, "ver"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "1.0"

    .line 377
    :goto_0
    invoke-virtual {p3, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p4, "make"

    .line 381
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, p4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "model"

    .line 382
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "osv"

    .line 383
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "carrier"

    const-string v0, "phone"

    .line 384
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "os"

    const-string v0, "Amazon"

    .line 385
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "amazon"

    goto :goto_1

    :cond_1
    const-string v0, "android"

    :goto_1
    invoke-virtual {p2, p4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance p4, Landroid/util/DisplayMetrics;

    invoke-direct {p4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    .line 387
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 388
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "w"

    .line 389
    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "h"

    .line 390
    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 393
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 394
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "vungle"

    .line 395
    invoke-virtual {p4, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v0, "ext"

    .line 396
    invoke-virtual {p2, v0, p4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    :try_start_3
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p4, v0, :cond_2

    .line 405
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserAgentFromCookie()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->initUserAgentLazy()V

    goto :goto_2

    .line 410
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_3

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/utility/ViewUtility;->getWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    goto :goto_2

    .line 416
    :cond_3
    new-instance p4, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 417
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 418
    new-instance v1, Lcom/vungle/warren/VungleApiClient$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/vungle/warren/VungleApiClient$2;-><init>(Lcom/vungle/warren/VungleApiClient;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x2

    .line 434
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "VungleApiClient"

    const-string p4, "Unable to get User Agent String in specified time"

    .line 435
    invoke-static {p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    const-string p4, "VungleApiClient"

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const-string p1, "ua"

    .line 442
    iget-object p4, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    invoke-virtual {p2, p1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    .line 446
    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Lcom/google/gson/JsonObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 361
    monitor-exit p0

    throw p1
.end method

.method private initUserAgentLazy()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 452
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vungle/warren/VungleApiClient$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/VungleApiClient$3;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 464
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public config()Lretrofit2/Response;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/error/VungleException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "device"

    .line 474
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "app"

    .line 475
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "user"

    .line 476
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 479
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "is_auto_cached_enforced"

    const/4 v3, 0x0

    .line 480
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "request"

    .line 481
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 483
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    sget-object v2, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->config(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 491
    :cond_0
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    const-string v2, "VungleApiClient"

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sleep"

    .line 494
    invoke-static {v1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    const-string v0, "info"

    .line 495
    invoke-static {v1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "info"

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 496
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Initializing Vungle. Please try again. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleApiClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    :cond_2
    const-string v2, "endpoints"

    .line 501
    invoke-static {v1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "endpoints"

    .line 507
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v4, "new"

    .line 509
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    const-string v5, "ads"

    .line 510
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v5

    const-string v6, "will_play_ad"

    .line 511
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v6

    const-string v7, "report_ad"

    .line 512
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v7

    const-string v8, "ri"

    .line 513
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    .line 520
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    .line 521
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    .line 522
    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    .line 523
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    .line 524
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    const-string v2, "will_play_ad"

    .line 527
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "request_timeout"

    .line 528
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    iput v3, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdTimeout:I

    const-string v3, "enabled"

    .line 529
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    const-string v2, "viewability"

    .line 532
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "moat"

    .line 533
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vungle/warren/VungleApiClient;->enableMoat:Z

    .line 536
    iget-boolean v1, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "VungleApiClient"

    const-string v2, "willPlayAd is enabled, generating a timeout client."

    .line 541
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v2, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdTimeout:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 543
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 545
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 546
    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 547
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    const-string v2, "https://api.vungle.com/"

    .line 548
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 550
    const-class v2, Lcom/vungle/warren/network/VungleApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/network/VungleApi;

    iput-object v1, p0, Lcom/vungle/warren/VungleApiClient;->timeoutApi:Lcom/vungle/warren/network/VungleApi;

    .line 554
    :cond_3
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->getMoatEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    new-instance v1, Lcom/moat/analytics/mobile/vng/MoatOptions;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/vng/MoatOptions;-><init>()V

    const/4 v2, 0x1

    .line 556
    iput-boolean v2, v1, Lcom/moat/analytics/mobile/vng/MoatOptions;->disableAdIdCollection:Z

    .line 557
    iput-boolean v2, v1, Lcom/moat/analytics/mobile/vng/MoatOptions;->disableLocationServices:Z

    .line 558
    iput-boolean v2, v1, Lcom/moat/analytics/mobile/vng/MoatOptions;->loggingEnabled:Z

    .line 560
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-virtual {v2, v1, v3}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->start(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V

    :cond_4
    return-object v0

    :cond_5
    const-string v0, "VungleApiClient"

    const-string v1, "Error Initializing Vungle. Please try again. "

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    :cond_6
    const-string v0, "VungleApiClient"

    const-string v1, "Error Initializing Vungle. Please try again. "

    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0
.end method

.method public getMoatEnabled()Z
    .locals 2

    .line 1156
    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->enableMoat:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRetryAfterHeaderValue(Lretrofit2/Response;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;)J"
        }
    .end annotation

    .line 1184
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1186
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method overrideApi(Lcom/vungle/warren/network/VungleApi;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1229
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    return-void
.end method

.method public pingTPAT(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 712
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    .line 718
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 719
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 720
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 725
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 726
    :cond_2
    new-instance p1, Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;

    const-string v0, "Clear Text Traffic is blocked"

    invoke-direct {p1, v0}, Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 735
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->userImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->shouldTransmitIMEI:Z

    if-eqz v0, :cond_4

    const-string v0, "%imei%"

    .line 736
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->userImei:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 742
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/network/VungleApi;->pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 714
    :catch_1
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_5
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportAd(Lcom/google/gson/JsonObject;)Lretrofit2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "device"

    .line 658
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "app"

    .line 659
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "request"

    .line 660
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p1, "user"

    .line 661
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 663
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->gzipApi:Lcom/vungle/warren/network/VungleApi;

    sget-object v1, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->reportAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    return-object p1

    .line 655
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportNew()Lretrofit2/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 575
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 576
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Lcom/google/gson/JsonObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 577
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;

    const-string v3, "ifa"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, "app_id"

    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ifa"

    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    sget-object v2, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/vungle/warren/network/VungleApi;->reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    return-object v0

    .line 573
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAd(Ljava/lang/String;Z)Lretrofit2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "device"

    .line 596
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "app"

    .line 597
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "user"

    .line 598
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 601
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 602
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 603
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    const-string p1, "placements"

    .line 604
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p1, "header_bidding"

    .line 605
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "request"

    .line 606
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 609
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    sget-object p2, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0}, Lcom/vungle/warren/network/VungleApi;->ads(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    return-object p1

    .line 592
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ri(Lcom/google/gson/JsonObject;)Lretrofit2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 683
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "device"

    .line 684
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "app"

    .line 685
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "request"

    .line 686
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 688
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    sget-object v1, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->ri(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    return-object p1

    .line 681
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultIdFallbackDisabled(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    return-void
.end method

.method public updateIMEI(Ljava/lang/String;Z)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->userImei:Ljava/lang/String;

    .line 344
    iput-boolean p2, p0, Lcom/vungle/warren/VungleApiClient;->shouldTransmitIMEI:Z

    return-void
.end method

.method public willPlayAd(Ljava/lang/String;ZLjava/lang/String;)Lretrofit2/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/vungle/warren/error/VungleError;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 624
    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "device"

    .line 629
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "app"

    .line 630
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "user"

    .line 631
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 634
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 635
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "reference_id"

    .line 636
    invoke-virtual {v2, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_auto_cached"

    .line 637
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "placement"

    .line 639
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p1, "ad_token"

    .line 640
    invoke-virtual {v1, p1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "request"

    .line 642
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 644
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->timeoutApi:Lcom/vungle/warren/network/VungleApi;

    sget-object p2, Lcom/vungle/warren/VungleApiClient;->HEADER_UA:Ljava/lang/String;

    iget-object p3, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lcom/vungle/warren/network/VungleApi;->willPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    return-object p1

    .line 625
    :cond_0
    new-instance p1, Lcom/vungle/warren/error/VungleError;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleError;-><init>(I)V

    throw p1

    .line 622
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
