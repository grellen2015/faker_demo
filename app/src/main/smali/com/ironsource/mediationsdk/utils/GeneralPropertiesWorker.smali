.class public Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;
.super Ljava/lang/Object;
.source "GeneralPropertiesWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_MINUTES_OFFSET:I = 0x348

.field private static final MINUTES_OFFSET_STEP:I = 0xf

.field private static final MIN_MINUTES_OFFSET:I = -0x2d0

.field public static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"


# instance fields
.field private final ADVERTISING_ID:Ljava/lang/String;

.field private final ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

.field private final ADVERTISING_ID_TYPE:Ljava/lang/String;

.field private final ANDROID_OS_VERSION:Ljava/lang/String;

.field private final APPLICATION_KEY:Ljava/lang/String;

.field private final BATTERY_LEVEL:Ljava/lang/String;

.field private final BUNDLE_ID:Ljava/lang/String;

.field private final CONNECTION_TYPE:Ljava/lang/String;

.field private final DEVICE_MODEL:Ljava/lang/String;

.field private final DEVICE_OEM:Ljava/lang/String;

.field private final DEVICE_OS:Ljava/lang/String;

.field private final EXTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final GMT_MINUTES_OFFSET:Ljava/lang/String;

.field private final INTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final KEY_IS_ROOT:Ljava/lang/String;

.field private final KEY_PLUGIN_FW_VERSION:Ljava/lang/String;

.field private final KEY_PLUGIN_TYPE:Ljava/lang/String;

.field private final KEY_PLUGIN_VERSION:Ljava/lang/String;

.field private final KEY_SESSION_ID:Ljava/lang/String;

.field private final LANGUAGE:Ljava/lang/String;

.field private final LOCATION_LAT:Ljava/lang/String;

.field private final LOCATION_LON:Ljava/lang/String;

.field private final MEDIATION_TYPE:Ljava/lang/String;

.field private final MOBILE_CARRIER:Ljava/lang/String;

.field private final PUBLISHER_APP_VERSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    const-string v0, "bundleId"

    .line 49
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    const-string v0, "advertisingId"

    .line 50
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    const-string v0, "isLimitAdTrackingEnabled"

    .line 51
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    const-string v0, "appKey"

    .line 52
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    const-string v0, "deviceOS"

    .line 53
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    const-string v0, "osVersion"

    .line 54
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    const-string v0, "connectionType"

    .line 55
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    const-string v0, "language"

    .line 57
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    const-string v0, "deviceOEM"

    .line 58
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    const-string v0, "deviceModel"

    .line 59
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    const-string v0, "mobileCarrier"

    .line 60
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    const-string v0, "externalFreeMemory"

    .line 61
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    const-string v0, "internalFreeMemory"

    .line 62
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    const-string v0, "battery"

    .line 63
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    const-string v0, "lat"

    .line 64
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    const-string v0, "lon"

    .line 65
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    const-string v0, "gmtMinutesOffset"

    .line 66
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->GMT_MINUTES_OFFSET:Ljava/lang/String;

    const-string v0, "appVersion"

    .line 67
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    const-string v0, "sessionId"

    .line 68
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    const-string v0, "pluginType"

    .line 69
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    const-string v0, "pluginVersion"

    .line 70
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    const-string v0, "plugin_fw_v"

    .line 71
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_FW_VERSION:Ljava/lang/String;

    const-string v0, "jb"

    .line 72
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_IS_ROOT:Ljava/lang/String;

    const-string v0, "advertisingIdType"

    .line 73
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_TYPE:Ljava/lang/String;

    const-string v0, "mt"

    .line 74
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MEDIATION_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    const-string v0, "bundleId"

    .line 49
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    const-string v0, "advertisingId"

    .line 50
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    const-string v0, "isLimitAdTrackingEnabled"

    .line 51
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    const-string v0, "appKey"

    .line 52
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    const-string v0, "deviceOS"

    .line 53
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    const-string v0, "osVersion"

    .line 54
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    const-string v0, "connectionType"

    .line 55
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    const-string v0, "language"

    .line 57
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    const-string v0, "deviceOEM"

    .line 58
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    const-string v0, "deviceModel"

    .line 59
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    const-string v0, "mobileCarrier"

    .line 60
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    const-string v0, "externalFreeMemory"

    .line 61
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    const-string v0, "internalFreeMemory"

    .line 62
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    const-string v0, "battery"

    .line 63
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    const-string v0, "lat"

    .line 64
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    const-string v0, "lon"

    .line 65
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    const-string v0, "gmtMinutesOffset"

    .line 66
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->GMT_MINUTES_OFFSET:Ljava/lang/String;

    const-string v0, "appVersion"

    .line 67
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    const-string v0, "sessionId"

    .line 68
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    const-string v0, "pluginType"

    .line 69
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    const-string v0, "pluginVersion"

    .line 70
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    const-string v0, "plugin_fw_v"

    .line 71
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_FW_VERSION:Ljava/lang/String;

    const-string v0, "jb"

    .line 72
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_IS_ROOT:Ljava/lang/String;

    const-string v0, "advertisingIdType"

    .line 73
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_TYPE:Ljava/lang/String;

    const-string v0, "mt"

    .line 74
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MEDIATION_TYPE:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private collectInformation()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionId"

    .line 114
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getBundleId()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bundleId"

    .line 118
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "appVersion"

    .line 123
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "appKey"

    .line 126
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 136
    :try_start_0
    iget-object v6, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 137
    array-length v7, v6

    if-ne v7, v4, :cond_2

    .line 138
    aget-object v7, v6, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 139
    aget-object v7, v6, v5

    move-object v1, v7

    .line 141
    :cond_1
    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v6, 0x0

    .line 147
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v2, "GAID"

    goto :goto_1

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v2, "UUID"

    .line 158
    :cond_4
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "advertisingId"

    .line 159
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "advertisingIdType"

    .line 160
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isLimitAdTrackingEnabled"

    .line 161
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "deviceOS"

    .line 164
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOS()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "osVersion"

    .line 168
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "connectionType"

    .line 172
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "sdkVersion"

    .line 174
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "language"

    .line 178
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_8
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOEM()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "deviceOEM"

    .line 182
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_9
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "deviceModel"

    .line 186
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_a
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getMobileCarrier()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "mobileCarrier"

    .line 190
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_b
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getInternalStorageFreeSize()J

    move-result-wide v1

    const-string v6, "internalFreeMemory"

    .line 193
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getExternalStorageFreeSize()J

    move-result-wide v1

    const-string v6, "externalFreeMemory"

    .line 196
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getBatteryLevel()I

    move-result v1

    const-string v2, "battery"

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v2, "GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY"

    invoke-static {v1, v2, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 205
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getLastKnownLocation()[D

    move-result-object v1

    if-eqz v1, :cond_c

    .line 206
    array-length v2, v1

    if-ne v2, v4, :cond_c

    const-string v2, "lat"

    .line 207
    aget-wide v4, v1, v5

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lon"

    .line 208
    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getGmtMinutesOffset()I

    move-result v1

    .line 213
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->validateGmtMinutesOffset(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "gmtMinutesOffset"

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_d
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getPluginType()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "pluginType"

    .line 219
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_e
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getPluginVersion()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "pluginVersion"

    .line 223
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "plugin_fw_v"

    .line 227
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_10
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "jb"

    .line 231
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_11
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getMediationType()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "mt"

    .line 235
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v0
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .locals 4

    .line 316
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 317
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private getApplicationKey()Ljava/lang/String;
    .locals 1

    .line 289
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryLevel()I
    .locals 6

    const/4 v0, -0x1

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "level"

    .line 456
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "scale"

    .line 457
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eq v3, v0, :cond_2

    if-eq v2, v0, :cond_2

    int-to-float v0, v3

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 465
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":getBatteryLevel()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private getBundleId()Ljava/lang/String;
    .locals 1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 363
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private getDeviceOEM()Ljava/lang/String;
    .locals 1

    .line 350
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private getDeviceOS()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method private getExternalStorageFreeSize()J
    .locals 4

    .line 432
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->isExternalStorageAbvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 434
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 439
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    const-wide/32 v2, 0x100000

    .line 440
    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getGmtMinutesOffset()I
    .locals 7

    const/4 v0, 0x0

    .line 547
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 548
    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 551
    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    :try_start_1
    div-int/lit8 v0, v1, 0xf

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    mul-int/lit8 v0, v0, 0xf

    goto :goto_1

    :catch_0
    move-exception v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v1

    .line 556
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":getGmtMinutesOffset()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method private getInternalStorageFreeSize()J
    .locals 4

    .line 412
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 413
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 418
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    const-wide/32 v2, 0x100000

    .line 420
    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 1

    .line 338
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private getLastKnownLocation()[D
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    .line 478
    new-array v1, v0, [D

    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->locationPermissionGranted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const/4 v3, 0x0

    .line 491
    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 492
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/high16 v5, -0x8000000000000000L

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 493
    invoke-virtual {v2, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 497
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-lez v8, :cond_0

    .line 500
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    move-object v3, v7

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 507
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 508
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 510
    new-array v5, v5, [D

    aput-wide v1, v5, v0

    const/4 v1, 0x1

    aput-wide v3, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception v1

    .line 515
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":getLastLocation()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    new-array v1, v0, [D

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getMediationType()Ljava/lang/String;
    .locals 1

    .line 569
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMobileCarrier()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 385
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":getMobileCarrier()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getPluginFrameworkVersion()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 265
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 268
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "getPluginFrameworkVersion()"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private getPluginType()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 243
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 246
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "getPluginType()"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private getPluginVersion()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 254
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "getPluginVersion()"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 329
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isExternalStorageAbvailable()Z
    .locals 2

    .line 398
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private locationPermissionGranted()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 530
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method private validateGmtMinutesOffset(I)Z
    .locals 1

    const/16 v0, 0x348

    if-gt p1, v0, :cond_0

    const/16 v0, -0x2d0

    if-lt p1, v0, :cond_0

    .line 563
    rem-int/lit8 p1, p1, 0xf

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->collectInformation()Ljava/util/Map;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKeys(Ljava/util/Map;)V

    .line 96
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveGeneralProperties(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
