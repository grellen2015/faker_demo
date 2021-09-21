.class public Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
.super Ljava/lang/Object;
.source "ServerResponseWrapper.java"


# static fields
.field public static final APP_KEY_FIELD:Ljava/lang/String; = "appKey"

.field public static final RESPONSE_FIELD:Ljava/lang/String; = "response"

.field public static final USER_ID_FIELD:Ljava/lang/String; = "userId"


# instance fields
.field private final AB_TESTING:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

.field private final AD_SOURCE_NAME_FIELD:Ljava/lang/String;

.field private final AD_UNITS_FIELD:Ljava/lang/String;

.field private final ALLOW_LOCATION:Ljava/lang/String;

.field private final APPLICATION_FIELD:Ljava/lang/String;

.field private final AUCTION_DATA_FIELD:Ljava/lang/String;

.field private final AUCTION_FIELD:Ljava/lang/String;

.field private final AUCTION_PROGRAMMATIC_FIELD:Ljava/lang/String;

.field private final AUCTION_RETRY_INTERVAL_FIELD:Ljava/lang/String;

.field private final AUCTION_TIMEOUT_FIELD:Ljava/lang/String;

.field private final AUCTION_TRIALS_FIELD:Ljava/lang/String;

.field private final AUCTION_URL_FIELD:Ljava/lang/String;

.field private final BACKFILL_FIELD:Ljava/lang/String;

.field private final BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

.field private final BN_FIELD:Ljava/lang/String;

.field private final CONFIGURATIONS_FIELD:Ljava/lang/String;

.field private final CONSOLE_FIELD:Ljava/lang/String;

.field private final DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

.field private final DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

.field private final DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_BN_DELAY_LOAD_FAILURE_TIMEOUT:I

.field private final DEFAULT_IS_DELAY_LOAD_FAILURE_TIMEOUT:I

.field private final DEFAULT_LOG_LEVEL:I

.field private final DEFAULT_MANUAL_LOAD_INTERVAL_FIELD:I

.field private final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field private final DEFAULT_TIMEOUT:J

.field private final DEFAULT_TRIALS:I

.field private final DELAY_LOAD_FAILURE:Ljava/lang/String;

.field private final ERROR_KEY:Ljava/lang/String;

.field private final EVENTS_FIELD:Ljava/lang/String;

.field private final GENERIC_PARAMS_FIELD:Ljava/lang/String;

.field private final INTEGRATION_FIELD:Ljava/lang/String;

.field private final IS_AUCTION_ON_SHOW_START_FIELD:Ljava/lang/String;

.field private final IS_FIELD:Ljava/lang/String;

.field private final IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

.field private final LOGGERS_FIELD:Ljava/lang/String;

.field private final MANUAL_LOAD_INTERVAL_FIELD:Ljava/lang/String;

.field private final MAX_EVENTS_PER_BATCH:Ljava/lang/String;

.field private final MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

.field private final MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

.field private final MIN_TIME_BEFORE_FIRST_AUCTION_FIELD:Ljava/lang/String;

.field private final OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

.field private final OW_FIELD:Ljava/lang/String;

.field private final PLACEMENTS_FIELD:Ljava/lang/String;

.field private final PLACEMENT_ID_FIELD:Ljava/lang/String;

.field private final PLACEMENT_NAME_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_IS_DEFAULT_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

.field private final PREMIUM_FIELD:Ljava/lang/String;

.field private final PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

.field private final PROVIDER_ORDER_FIELD:Ljava/lang/String;

.field private final PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

.field private final PUBLISHER_FIELD:Ljava/lang/String;

.field private final RV_FIELD:Ljava/lang/String;

.field private final SEGMENT_FIELD:Ljava/lang/String;

.field private final SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

.field private final SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

.field private final SERVER_EVENTS_TYPE:Ljava/lang/String;

.field private final SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

.field private final SERVER_FIELD:Ljava/lang/String;

.field private final SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

.field private final TIME_TO_WAIT_BEFORE_AUCTION_FIELD:Ljava/lang/String;

.field private final UUID_ENABLED_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

.field private mContext:Landroid/content/Context;

.field private mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

.field private mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

.field private mResponse:Lorg/json/JSONObject;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error"

    .line 53
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    const/4 v1, 0x2

    .line 56
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    const/16 v2, 0x3c

    .line 57
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x2710

    .line 58
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x1388

    .line 59
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    const/16 v2, 0x12c

    .line 60
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MANUAL_LOAD_INTERVAL_FIELD:I

    .line 61
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_IS_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 62
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BN_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 63
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TRIALS:I

    const-wide/16 v0, 0x2710

    .line 64
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TIMEOUT:J

    const-string v0, "providerOrder"

    .line 67
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    const-string v0, "providerSettings"

    .line 68
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    const-string v0, "configurations"

    .line 69
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    const-string v0, "genericParams"

    .line 70
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->GENERIC_PARAMS_FIELD:Ljava/lang/String;

    const-string v0, "adUnits"

    .line 72
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    const-string v0, "providerLoadName"

    .line 73
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    const-string v0, "application"

    .line 74
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    const-string v0, "rewardedVideo"

    .line 75
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    const-string v0, "interstitial"

    .line 76
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    const-string v0, "offerwall"

    .line 77
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    const-string v0, "banner"

    .line 78
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    const-string v0, "integration"

    .line 79
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->INTEGRATION_FIELD:Ljava/lang/String;

    const-string v0, "loggers"

    .line 80
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    const-string v0, "segment"

    .line 81
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    const-string v0, "events"

    .line 82
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "maxNumOfAdaptersToLoadOnStart"

    .line 84
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    const-string v0, "adapterTimeOutInSeconds"

    .line 85
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    const-string v0, "atim"

    .line 86
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    const-string v0, "bannerInterval"

    .line 87
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

    const-string v0, "loadRVInterval"

    .line 88
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MANUAL_LOAD_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "server"

    .line 90
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    const-string v0, "publisher"

    .line 91
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    const-string v0, "console"

    .line 92
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    const-string v0, "sendUltraEvents"

    .line 93
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "sendEventsToggle"

    .line 94
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsURL"

    .line 95
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsType"

    .line 96
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    const-string v0, "backupThreshold"

    .line 97
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    const-string v0, "maxNumberOfEvents"

    .line 98
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "maxEventsPerBatch"

    .line 99
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    const-string v0, "optOut"

    .line 100
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "allowLocation"

    .line 101
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    const-string v0, "placements"

    .line 103
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    const-string v0, "placementId"

    .line 104
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    const-string v0, "placementName"

    .line 105
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    const-string v0, "delivery"

    .line 106
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    const-string v0, "isDefault"

    .line 107
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_IS_DEFAULT_FIELD:Ljava/lang/String;

    const-string v0, "capping"

    .line 108
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    const-string v0, "pacing"

    .line 109
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    const-string v0, "enabled"

    .line 110
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "maxImpressions"

    .line 111
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "numOfSeconds"

    .line 112
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "unit"

    .line 113
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemName"

    .line 114
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemCount"

    .line 115
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    const-string v0, "backFill"

    .line 116
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    const-string v0, "premium"

    .line 117
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    const-string v0, "uuidEnabled"

    .line 118
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "abt"

    .line 119
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    const-string v0, "delayLoadFailure"

    .line 120
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DELAY_LOAD_FAILURE:Ljava/lang/String;

    const-string v0, "adSourceName"

    .line 122
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_SOURCE_NAME_FIELD:Ljava/lang/String;

    const-string v0, "spId"

    .line 123
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    const-string v0, "mpis"

    .line 124
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    const-string v0, "auction"

    .line 126
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "auctionData"

    .line 127
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_DATA_FIELD:Ljava/lang/String;

    const-string v0, "auctioneerURL"

    .line 128
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_URL_FIELD:Ljava/lang/String;

    const-string v0, "programmatic"

    .line 129
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_PROGRAMMATIC_FIELD:Ljava/lang/String;

    const-string v0, "minTimeBeforeFirstAuction"

    .line 130
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MIN_TIME_BEFORE_FIRST_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "timeToWaitBeforeAuction"

    .line 131
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TIME_TO_WAIT_BEFORE_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "auctionRetryInterval"

    .line 132
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_RETRY_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "isAuctionOnShowStart"

    .line 133
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_AUCTION_ON_SHOW_START_FIELD:Ljava/lang/String;

    const-string v0, "auctionTrials"

    .line 134
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TRIALS_FIELD:Ljava/lang/String;

    const-string v0, "auctionTimeout"

    .line 135
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TIMEOUT_FIELD:Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 151
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    goto :goto_0

    .line 154
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 156
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderSettings()V

    .line 157
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseConfigurations()V

    .line 158
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderOrder()V

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p3, ""

    :cond_2
    iput-object p3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 164
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error"

    .line 53
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    const/4 v1, 0x2

    .line 56
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    const/16 v2, 0x3c

    .line 57
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x2710

    .line 58
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x1388

    .line 59
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    const/16 v2, 0x12c

    .line 60
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MANUAL_LOAD_INTERVAL_FIELD:I

    .line 61
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_IS_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 62
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BN_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 63
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TRIALS:I

    const-wide/16 v0, 0x2710

    .line 64
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TIMEOUT:J

    const-string v0, "providerOrder"

    .line 67
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    const-string v0, "providerSettings"

    .line 68
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    const-string v0, "configurations"

    .line 69
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    const-string v0, "genericParams"

    .line 70
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->GENERIC_PARAMS_FIELD:Ljava/lang/String;

    const-string v0, "adUnits"

    .line 72
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    const-string v0, "providerLoadName"

    .line 73
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    const-string v0, "application"

    .line 74
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    const-string v0, "rewardedVideo"

    .line 75
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    const-string v0, "interstitial"

    .line 76
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    const-string v0, "offerwall"

    .line 77
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    const-string v0, "banner"

    .line 78
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    const-string v0, "integration"

    .line 79
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->INTEGRATION_FIELD:Ljava/lang/String;

    const-string v0, "loggers"

    .line 80
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    const-string v0, "segment"

    .line 81
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    const-string v0, "events"

    .line 82
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "maxNumOfAdaptersToLoadOnStart"

    .line 84
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    const-string v0, "adapterTimeOutInSeconds"

    .line 85
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    const-string v0, "atim"

    .line 86
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    const-string v0, "bannerInterval"

    .line 87
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

    const-string v0, "loadRVInterval"

    .line 88
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MANUAL_LOAD_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "server"

    .line 90
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    const-string v0, "publisher"

    .line 91
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    const-string v0, "console"

    .line 92
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    const-string v0, "sendUltraEvents"

    .line 93
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "sendEventsToggle"

    .line 94
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsURL"

    .line 95
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsType"

    .line 96
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    const-string v0, "backupThreshold"

    .line 97
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    const-string v0, "maxNumberOfEvents"

    .line 98
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "maxEventsPerBatch"

    .line 99
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    const-string v0, "optOut"

    .line 100
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "allowLocation"

    .line 101
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    const-string v0, "placements"

    .line 103
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    const-string v0, "placementId"

    .line 104
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    const-string v0, "placementName"

    .line 105
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    const-string v0, "delivery"

    .line 106
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    const-string v0, "isDefault"

    .line 107
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_IS_DEFAULT_FIELD:Ljava/lang/String;

    const-string v0, "capping"

    .line 108
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    const-string v0, "pacing"

    .line 109
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    const-string v0, "enabled"

    .line 110
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "maxImpressions"

    .line 111
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "numOfSeconds"

    .line 112
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "unit"

    .line 113
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemName"

    .line 114
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemCount"

    .line 115
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    const-string v0, "backFill"

    .line 116
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    const-string v0, "premium"

    .line 117
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    const-string v0, "uuidEnabled"

    .line 118
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "abt"

    .line 119
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    const-string v0, "delayLoadFailure"

    .line 120
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DELAY_LOAD_FAILURE:Ljava/lang/String;

    const-string v0, "adSourceName"

    .line 122
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_SOURCE_NAME_FIELD:Ljava/lang/String;

    const-string v0, "spId"

    .line 123
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    const-string v0, "mpis"

    .line 124
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    const-string v0, "auction"

    .line 126
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "auctionData"

    .line 127
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_DATA_FIELD:Ljava/lang/String;

    const-string v0, "auctioneerURL"

    .line 128
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_URL_FIELD:Ljava/lang/String;

    const-string v0, "programmatic"

    .line 129
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_PROGRAMMATIC_FIELD:Ljava/lang/String;

    const-string v0, "minTimeBeforeFirstAuction"

    .line 130
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MIN_TIME_BEFORE_FIRST_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "timeToWaitBeforeAuction"

    .line 131
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TIME_TO_WAIT_BEFORE_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "auctionRetryInterval"

    .line 132
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_RETRY_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "isAuctionOnShowStart"

    .line 133
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_AUCTION_ON_SHOW_START_FIELD:Ljava/lang/String;

    const-string v0, "auctionTrials"

    .line 134
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TRIALS_FIELD:Ljava/lang/String;

    const-string v0, "auctionTimeout"

    .line 135
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TIMEOUT_FIELD:Ljava/lang/String;

    .line 175
    :try_start_0
    invoke-direct {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 176
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 177
    iget-object v0, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 180
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 181
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    :goto_0
    return-void
.end method

.method private defaultInit()V
    .locals 1

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v0, ""

    .line 189
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    const-string v0, ""

    .line 190
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 192
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 193
    new-instance v0, Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 2

    .line 747
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 750
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    move p1, p4

    :cond_2
    return p1
.end method

.method private getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 3

    .line 761
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p1, p3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    .line 763
    :cond_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 764
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    move-wide p1, v1

    :goto_0
    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    move-wide p1, p4

    :cond_2
    return-wide p1
.end method

.method private getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 862
    :cond_0
    new-instance v1, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;-><init>()V

    const-string v2, "delivery"

    const/4 v3, 0x1

    .line 865
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 866
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->delivery(Z)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    const-string v2, "capping"

    .line 869
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const-string v5, "unit"

    .line 872
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 873
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 874
    sget-object v6, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 875
    sget-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    goto :goto_0

    .line 876
    :cond_1
    sget-object v6, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 877
    sget-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    :cond_2
    :goto_0
    const-string v5, "maxImpressions"

    .line 880
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "enabled"

    .line 881
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 882
    :goto_1
    invoke-virtual {v1, v2, v0, v5}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->capping(ZLcom/ironsource/mediationsdk/model/PlacementCappingType;I)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    :cond_4
    const-string v0, "pacing"

    .line 886
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "numOfSeconds"

    .line 888
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "enabled"

    .line 889
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 890
    :goto_2
    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacing(ZI)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 893
    :cond_6
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->build()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    return-object p1
.end method

.method private getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p1, :cond_0

    .line 907
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private parseConfigurations()V
    .locals 51

    move-object/from16 v7, p0

    .line 431
    :try_start_0
    iget-object v0, v7, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v1, "configurations"

    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adUnits"

    .line 432
    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "application"

    .line 433
    invoke-direct {v7, v0, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "rewardedVideo"

    .line 434
    invoke-direct {v7, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "interstitial"

    .line 435
    invoke-direct {v7, v1, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "offerwall"

    .line 436
    invoke-direct {v7, v1, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v4, "banner"

    .line 437
    invoke-direct {v7, v1, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v1, "events"

    .line 439
    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v1, "loggers"

    .line 440
    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v1, "segment"

    .line 441
    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v1, "auction"

    .line 442
    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const-string v5, "uuidEnabled"

    .line 451
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 452
    iget-object v6, v7, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    const-string v13, "uuidEnabled"

    invoke-static {v6, v13, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v10, :cond_1

    const-string v5, "abt"

    .line 456
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 457
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 458
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setABT(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setABT(Ljava/lang/String;)V

    :cond_1
    const/16 v15, 0x3c

    const/4 v6, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    if-eqz v2, :cond_9

    const-string v14, "placements"

    .line 465
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const-string v4, "events"

    .line 466
    invoke-direct {v7, v2, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "maxNumOfAdaptersToLoadOnStart"

    .line 468
    invoke-direct {v7, v2, v0, v5, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v18

    const-string v5, "adapterTimeOutInSeconds"

    .line 469
    invoke-direct {v7, v2, v0, v5, v15}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v19

    const-string v5, "loadRVInterval"

    const/16 v15, 0x12c

    .line 470
    invoke-direct {v7, v2, v0, v5, v15}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v20

    .line 472
    invoke-static {v4, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "sendUltraEvents"

    .line 474
    invoke-virtual {v4, v5, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    const-string v5, "sendEventsToggle"

    .line 475
    invoke-virtual {v4, v5, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v5, "serverEventsURL"

    const-string v15, ""

    .line 476
    invoke-virtual {v4, v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v5, "serverEventsType"

    const-string v15, ""

    .line 477
    invoke-virtual {v4, v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v5, "backupThreshold"

    const/4 v15, -0x1

    .line 478
    invoke-virtual {v4, v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v29

    const-string v5, "maxNumberOfEvents"

    .line 479
    invoke-virtual {v4, v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    const-string v5, "maxEventsPerBatch"

    const/16 v15, 0x1388

    .line 480
    invoke-virtual {v4, v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    const-string v5, "optOut"

    .line 483
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 485
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    const/4 v15, 0x0

    .line 486
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v15, v13, :cond_2

    .line 487
    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v5, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v32, v5

    goto :goto_1

    :cond_3
    move-object/from16 v32, v16

    .line 491
    :goto_1
    new-instance v4, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-object/from16 v24, v4

    invoke-direct/range {v24 .. v32}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    :try_start_1
    const-string v5, "rewardedVideo"

    .line 498
    invoke-direct {v7, v1, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v13, "auctionData"

    const-string v15, ""

    .line 499
    invoke-virtual {v1, v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v13, "auctioneerURL"

    const-string v15, ""

    .line 500
    invoke-virtual {v1, v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v13, "auctionTrials"

    .line 501
    invoke-virtual {v1, v13, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v36

    const-string v13, "auctionTimeout"

    const-wide/16 v6, 0x2710

    .line 502
    invoke-virtual {v1, v13, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v37

    const-string v6, "programmatic"

    const/4 v7, 0x0

    .line 503
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string v6, "minTimeBeforeFirstAuction"

    const/16 v7, 0x7d0

    .line 504
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "auctionRetryInterval"

    const/16 v13, 0x7530

    .line 505
    invoke-virtual {v5, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v13, "timeToWaitBeforeAuction"

    const/16 v15, 0x1388

    .line 506
    invoke-virtual {v5, v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v15, "isAuctionOnShowStart"

    move-object/from16 v47, v12

    const/4 v12, 0x1

    .line 507
    invoke-virtual {v5, v15, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 509
    new-instance v5, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-object/from16 v48, v11

    int-to-long v11, v6

    int-to-long v6, v7

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    int-to-long v8, v13

    move-object/from16 v33, v5

    move-wide/from16 v40, v11

    move-wide/from16 v42, v6

    move-wide/from16 v44, v8

    invoke-direct/range {v33 .. v46}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;IJZJJJZ)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_13

    :cond_4
    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v48, v11

    move-object/from16 v47, v12

    .line 511
    new-instance v5, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-direct {v5}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>()V

    :goto_2
    move-object/from16 v22, v5

    .line 513
    new-instance v5, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-object/from16 v17, v5

    move-object/from16 v21, v4

    invoke-direct/range {v17 .. v22}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;-><init>(IIILcom/ironsource/mediationsdk/model/ApplicationEvents;Lcom/ironsource/mediationsdk/utils/AuctionSettings;)V

    if-eqz v14, :cond_6

    const/4 v4, 0x0

    .line 516
    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 517
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v7, p0

    .line 518
    :try_start_2
    invoke-direct {v7, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 521
    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->addRewardedVideoPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v7, p0

    const-string v4, "backFill"

    .line 525
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 527
    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    :cond_7
    const-string v4, "premium"

    .line 530
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 532
    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v18, v5

    goto :goto_4

    :cond_9
    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v48, v11

    move-object/from16 v47, v12

    move-object/from16 v18, v16

    :goto_4
    const/4 v8, 0x3

    if-eqz v3, :cond_11

    const-string v2, "placements"

    .line 538
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "events"

    .line 539
    invoke-direct {v7, v3, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "maxNumOfAdaptersToLoadOnStart"

    const/4 v6, 0x2

    .line 541
    invoke-direct {v7, v3, v0, v5, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v25

    const-string v5, "adapterTimeOutInSeconds"

    const/16 v6, 0x3c

    .line 542
    invoke-direct {v7, v3, v0, v5, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v26

    const-string v5, "delayLoadFailure"

    .line 543
    invoke-direct {v7, v3, v0, v5, v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v29

    .line 545
    invoke-static {v4, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "sendEventsToggle"

    const/4 v6, 0x0

    .line 547
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v35

    const-string v5, "serverEventsURL"

    const-string v6, ""

    .line 548
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v5, "serverEventsType"

    const-string v6, ""

    .line 549
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v5, "backupThreshold"

    const/4 v6, -0x1

    .line 550
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    const-string v5, "maxNumberOfEvents"

    .line 551
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v39

    const-string v5, "maxEventsPerBatch"

    const/16 v9, 0x1388

    .line 552
    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v40

    const-string v5, "optOut"

    .line 555
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 557
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    const/4 v11, 0x0

    .line 558
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 559
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v41, v5

    goto :goto_6

    :cond_b
    move-object/from16 v41, v16

    .line 563
    :goto_6
    new-instance v4, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v34, 0x0

    move-object/from16 v33, v4

    invoke-direct/range {v33 .. v41}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    if-eqz v1, :cond_c

    const-string v5, "interstitial"

    .line 570
    invoke-direct {v7, v1, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v11, "auctionData"

    const-string v12, ""

    .line 571
    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v11, "auctioneerURL"

    const-string v12, ""

    .line 572
    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v11, "auctionTrials"

    const/4 v12, 0x2

    .line 573
    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v36

    const-string v11, "auctionTimeout"

    const-wide/16 v12, 0x2710

    .line 574
    invoke-virtual {v1, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v37

    const-string v1, "programmatic"

    const/4 v11, 0x0

    .line 575
    invoke-virtual {v5, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string v1, "minTimeBeforeFirstAuction"

    const/16 v11, 0x7d0

    .line 576
    invoke-virtual {v5, v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 577
    new-instance v5, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    int-to-long v11, v1

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x1

    move-object/from16 v33, v5

    move-wide/from16 v40, v11

    invoke-direct/range {v33 .. v46}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;IJZJJJZ)V

    move-object/from16 v28, v5

    goto :goto_7

    .line 579
    :cond_c
    new-instance v1, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>()V

    move-object/from16 v28, v1

    .line 582
    :goto_7
    new-instance v1, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-object/from16 v24, v1

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v29}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;-><init>(IILcom/ironsource/mediationsdk/model/ApplicationEvents;Lcom/ironsource/mediationsdk/utils/AuctionSettings;I)V

    if-eqz v2, :cond_e

    const/4 v4, 0x0

    .line 585
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 586
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 587
    invoke-direct {v7, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 590
    invoke-virtual {v1, v5}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->addInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    const-string v2, "backFill"

    .line 594
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 596
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    :cond_f
    const-string v2, "premium"

    .line 599
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 601
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v19, v1

    goto :goto_9

    :cond_11
    const/4 v6, -0x1

    const/16 v9, 0x1388

    move-object/from16 v19, v16

    :goto_9
    if-eqz v50, :cond_16

    const-string v1, "placements"

    move-object/from16 v11, v50

    .line 608
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const-string v1, "events"

    .line 610
    invoke-direct {v7, v11, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    const/4 v2, 0x1

    .line 611
    invoke-direct {v7, v11, v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v25

    const-string v4, "atim"

    const-wide/16 v14, 0x2710

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v0

    const/4 v9, -0x1

    move-wide v5, v14

    .line 612
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v26

    const-string v1, "delayLoadFailure"

    .line 613
    invoke-direct {v7, v11, v0, v1, v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v30

    const-string v1, "bannerInterval"

    const/16 v2, 0x3c

    .line 614
    invoke-direct {v7, v11, v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v29

    .line 616
    invoke-static {v13, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sendEventsToggle"

    const/4 v3, 0x0

    .line 618
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v35

    const-string v2, "serverEventsURL"

    const-string v3, ""

    .line 619
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v2, "serverEventsType"

    const-string v3, ""

    .line 620
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v2, "backupThreshold"

    .line 621
    invoke-virtual {v1, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    const-string v2, "maxNumberOfEvents"

    .line 622
    invoke-virtual {v1, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v39

    const-string v2, "maxEventsPerBatch"

    const/16 v3, 0x1388

    .line 623
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v40

    const-string v2, "optOut"

    .line 626
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 628
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 629
    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 630
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    move-object/from16 v41, v2

    goto :goto_b

    :cond_13
    move-object/from16 v41, v16

    .line 633
    :goto_b
    new-instance v1, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v34, 0x0

    move-object/from16 v33, v1

    invoke-direct/range {v33 .. v41}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 636
    new-instance v2, Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-object/from16 v24, v2

    move-object/from16 v28, v1

    invoke-direct/range {v24 .. v30}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;-><init>(IJLcom/ironsource/mediationsdk/model/ApplicationEvents;II)V

    if-eqz v12, :cond_15

    const/4 v1, 0x0

    .line 639
    :goto_c
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_15

    .line 640
    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 641
    invoke-direct {v7, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 644
    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->addBannerPlacement(Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    move-object/from16 v21, v2

    goto :goto_d

    :cond_16
    const/4 v9, -0x1

    move-object/from16 v21, v16

    :goto_d
    if-eqz v49, :cond_1b

    const-string v1, "events"

    move-object/from16 v2, v49

    .line 651
    invoke-direct {v7, v2, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 653
    invoke-static {v1, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "sendEventsToggle"

    const/4 v4, 0x0

    .line 655
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    const-string v3, "serverEventsURL"

    const-string v4, ""

    .line 656
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v3, "serverEventsType"

    const-string v4, ""

    .line 657
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v3, "backupThreshold"

    .line 658
    invoke-virtual {v1, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v27

    const-string v3, "maxNumberOfEvents"

    .line 659
    invoke-virtual {v1, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v28

    const-string v3, "maxEventsPerBatch"

    const/16 v4, 0x1388

    .line 660
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v29

    const-string v3, "optOut"

    .line 663
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 665
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 666
    :goto_e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 667
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v30, v3

    goto :goto_f

    :cond_18
    move-object/from16 v30, v16

    .line 671
    :goto_f
    new-instance v1, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v23, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v30}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 674
    new-instance v3, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    invoke-direct {v3, v1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;-><init>(Lcom/ironsource/mediationsdk/model/ApplicationEvents;)V

    const-string v1, "placements"

    .line 676
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v2, 0x0

    .line 678
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1a

    .line 679
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 680
    invoke-direct {v7, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 683
    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->addOfferwallPlacement(Lcom/ironsource/mediationsdk/model/OfferwallPlacement;)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1a
    move-object/from16 v20, v3

    goto :goto_11

    :cond_1b
    move-object/from16 v20, v16

    :goto_11
    const-string v1, "server"

    move-object/from16 v2, v48

    .line 691
    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "publisher"

    .line 692
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "console"

    .line 693
    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 695
    new-instance v4, Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    invoke-direct {v4, v1, v3, v2}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;-><init>(III)V

    if-eqz v47, :cond_1c

    const-string v1, "name"

    const-string v2, ""

    move-object/from16 v3, v47

    .line 701
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    const-string v5, "-1"

    .line 702
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "custom"

    .line 703
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 704
    new-instance v5, Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-direct {v5, v1, v2, v3}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_12

    :cond_1c
    move-object/from16 v5, v16

    :goto_12
    const-string v1, "integration"

    const/4 v2, 0x0

    .line 708
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 711
    new-instance v3, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    invoke-direct {v3, v4, v5, v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;-><init>(Lcom/ironsource/mediationsdk/model/ApplicationLogger;Lcom/ironsource/mediationsdk/model/ServerSegmetData;Z)V

    const-string v1, "allowLocation"

    .line 715
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 716
    iget-object v1, v7, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    const-string v2, "GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY"

    invoke-static {v1, v2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 718
    new-instance v0, Lcom/ironsource/mediationsdk/model/Configurations;

    move-object/from16 v17, v0

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;Lcom/ironsource/mediationsdk/model/BannerConfigurations;Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    const-string v0, "genericParams"

    .line 721
    invoke-direct {v7, v10, v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "events"

    .line 724
    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v2, "events"

    .line 726
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 727
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->parseJsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 728
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventGenericParams(Ljava/util/Map;)V

    .line 729
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventGenericParams(Ljava/util/Map;)V

    :cond_1d
    if-eqz v0, :cond_1e

    .line 734
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->parseJsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 735
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBatchParams(Ljava/util/Map;)V

    .line 736
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBatchParams(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_14

    :catch_1
    move-exception v0

    .line 740
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_14
    return-void
.end method

.method private parseProviderOrder()V
    .locals 9

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v1, "providerOrder"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rewardedVideo"

    .line 260
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "interstitial"

    .line 261
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "banner"

    .line 262
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 264
    new-instance v3, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 269
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 270
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 274
    iget-object v7, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v7, v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVBackFillProvider(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 278
    iget-object v8, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v8, v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVPremiumProvider(Ljava/lang/String;)V

    .line 281
    :cond_1
    iget-object v8, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v8, v7}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addRewardedVideoProvider(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 285
    invoke-virtual {v7, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoPriority(I)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 290
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 291
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 293
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 294
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 298
    iget-object v6, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v6, v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISBackFillProvider(Ljava/lang/String;)V

    goto :goto_3

    .line 300
    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 301
    iget-object v7, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v7, v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISPremiumProvider(Ljava/lang/String;)V

    .line 305
    :cond_5
    iget-object v7, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v7, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addInterstitialProvider(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 309
    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialPriority(I)V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_9

    .line 315
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_9

    .line 316
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addBannerProvider(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 322
    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method

.method private parseProviderSettings()V
    .locals 15

    .line 336
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 338
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v1, "providerSettings"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 342
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "mpis"

    const/4 v5, 0x0

    .line 347
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v3, "spId"

    const-string v5, "0"

    .line 348
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "adSourceName"

    const/4 v5, 0x0

    .line 349
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "providerLoadName"

    .line 351
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "adUnits"

    .line 352
    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "application"

    .line 353
    invoke-direct {p0, v2, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v2, "rewardedVideo"

    .line 354
    invoke-direct {p0, v3, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "interstitial"

    .line 355
    invoke-direct {p0, v3, v7}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "banner"

    .line 356
    invoke-direct {p0, v3, v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 358
    invoke-static {v2, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 359
    invoke-static {v7, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 360
    invoke-static {v3, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 363
    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    .line 365
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v4

    .line 366
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v5

    .line 367
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v6

    .line 370
    invoke-static {v4, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 372
    invoke-static {v5, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    .line 373
    invoke-static {v6, v9}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    .line 374
    invoke-virtual {v3, v10}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 375
    invoke-virtual {v3, v11}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3, v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setAdSourceNameForEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :cond_1
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->shouldMergeWithDebugSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    const-string v7, "Mediation"

    invoke-virtual {v3, v7}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v7

    .line 382
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v13

    .line 383
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    .line 385
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {v14, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 390
    invoke-static {v7, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 391
    invoke-static {v13, v9}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 393
    new-instance v13, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-object v3, v13

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 395
    invoke-virtual {v13, v10}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 396
    invoke-virtual {v13, v11}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v13, v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setAdSourceNameForEvents(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v2, v13}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    goto/16 :goto_0

    .line 401
    :cond_2
    new-instance v13, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-object v3, v13

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 403
    invoke-virtual {v13, v10}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 404
    invoke-virtual {v13, v11}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v13, v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setAdSourceNameForEvents(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v2, v13}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    goto/16 :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->fillSubProvidersDetails()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 841
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "placementName"

    const-string v2, ""

    .line 842
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isDefault"

    const/4 v3, 0x0

    .line 843
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 844
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    if-ltz v0, :cond_0

    .line 846
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 847
    new-instance v3, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;-><init>(ILjava/lang/String;ZLcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    if-eqz p1, :cond_1

    .line 849
    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3
.end method

.method private parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 805
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "placementName"

    const-string v2, ""

    .line 806
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isDefault"

    const/4 v3, 0x0

    .line 807
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 808
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    if-ltz v0, :cond_0

    .line 810
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 811
    new-instance v3, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;-><init>(ILjava/lang/String;ZLcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    if-eqz p1, :cond_1

    .line 813
    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3
.end method

.method private parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 825
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "placementName"

    const-string v2, ""

    .line 826
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isDefault"

    const/4 v3, 0x0

    .line 827
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ltz v0, :cond_0

    .line 829
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 830
    new-instance v2, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    invoke-direct {v2, v0, v1, p1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;-><init>(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 9

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 782
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "placementName"

    const-string v2, ""

    .line 783
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "isDefault"

    const/4 v2, 0x0

    .line 784
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "virtualItemName"

    const-string v2, ""

    .line 785
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "virtualItemCount"

    .line 786
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 787
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    if-ltz v3, :cond_0

    .line 789
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v7, :cond_0

    .line 791
    new-instance v0, Lcom/ironsource/mediationsdk/model/Placement;

    move-object v2, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/ironsource/mediationsdk/model/Placement;-><init>(ILjava/lang/String;ZLjava/lang/String;ILcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    if-eqz p1, :cond_1

    .line 793
    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private shouldMergeWithDebugSettings(Ljava/lang/String;)Z
    .locals 2

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 420
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    const-string v1, "Mediation"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SupersonicAds"

    .line 421
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IronSource"

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RIS"

    .line 423
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    return-object v0
.end method

.method public getInitiatedAdUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 238
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 242
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 243
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 246
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 249
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    return-object v0
.end method

.method public getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    return-object v0
.end method

.method public getRVBackFillProvider()Ljava/lang/String;
    .locals 4

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVBackFillProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 916
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVBackFillProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRVPremiumProvider()Ljava/lang/String;
    .locals 4

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVPremiumProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 925
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVPremiumProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isValidResponse()Z
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v3, "error"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 198
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appKey"

    .line 201
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    .line 202
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "response"

    .line 203
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 205
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 208
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
