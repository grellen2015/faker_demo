.class public Lcom/vungle/warren/model/AdvertisementDBAdapter;
.super Ljava/lang/Object;
.source "AdvertisementDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/AdvertisementDBAdapter$AdvertisementColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/DBAdapter<",
        "Lcom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_ADVERTISEMENT_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS advertisement(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE, ad_config TEXT,ad_type INT, expire_time NUMERIC, delay NUMERIC, show_close_delay INT, show_close_incentivized INT, countdown INT, video_height INT, video_width INT, cta_overlay_enabled SHORT, cta_click_area NUMERIC, retry_count INT, enable_moat SHORT, requires_non_market_install SHORT, app_id TEXT, campaign TEXT, video_url TEXT, md5 TEXT, postroll_bundle_url TEXT, cta_destination_url TEXT, cta_url TEXT, ad_token TEXT, video_identifier TEXT, mute_urls TEXT, unmute_urls TEXT, close_urls TEXT, postroll_click_urls TEXT, postroll_view_urls TEXT, click_urls TEXT, video_click_urls TEXT, template_url TEXT, TEMPLATE_ID TEXT, TEMPLATE_TYPE TEXT, moat_extra_vast TEXT, ad_market_id TEXT,bid_token TEXT,  checkpoints TEXT, template_settings TEXT, mraid_files TEXT, cacheable_assets TEXT, state INT, placement_id TEXT)"


# instance fields
.field private cacheableMapType:Ljava/lang/reflect/Type;

.field private checkpointListType:Ljava/lang/reflect/Type;

.field private gson:Lcom/google/gson/Gson;

.field private stringArrayType:Ljava/lang/reflect/Type;

.field private stringMapType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    .line 26
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$1;-><init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 27
    invoke-virtual {v0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    .line 28
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$2;-><init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 29
    invoke-virtual {v0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    .line 30
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$3;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$3;-><init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 31
    invoke-virtual {v0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->checkpointListType:Ljava/lang/reflect/Type;

    .line 32
    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter$4;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$4;-><init>(Lcom/vungle/warren/model/AdvertisementDBAdapter;)V

    .line 33
    invoke-virtual {v0}, Lcom/vungle/warren/model/AdvertisementDBAdapter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->cacheableMapType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    new-instance v0, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v0}, Lcom/vungle/warren/model/Advertisement;-><init>()V

    const-string v1, "item_id"

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    const-string v1, "ad_type"

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->adType:I

    const-string v1, "expire_time"

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    const-string v1, "delay"

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->delay:I

    const-string v1, "show_close_delay"

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    const-string v1, "show_close_incentivized"

    .line 96
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    const-string v1, "countdown"

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    const-string v1, "video_width"

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    const-string v1, "video_height"

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    const-string v1, "retry_count"

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    const-string v1, "requires_non_market_install"

    .line 101
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    const-string v1, "app_id"

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    const-string v1, "campaign"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    const-string v1, "video_url"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    const-string v1, "md5"

    .line 105
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    const-string v1, "postroll_bundle_url"

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    const-string v1, "cta_destination_url"

    .line 107
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    const-string v1, "cta_url"

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    const-string v1, "ad_token"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    const-string v1, "video_identifier"

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    const-string v1, "template_url"

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    const-string v1, "TEMPLATE_ID"

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    const-string v1, "TEMPLATE_TYPE"

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    const-string v1, "moat_extra_vast"

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    const-string v1, "ad_market_id"

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    const-string v1, "bid_token"

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    const-string v1, "state"

    .line 117
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->state:I

    const-string v1, "placement_id"

    .line 118
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    const-string v1, "enable_moat"

    .line 119
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    const-string v1, "cta_overlay_enabled"

    .line 120
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    const-string v1, "cta_click_area"

    .line 121
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    .line 122
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "ad_config"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/AdConfig;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdConfig;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    .line 123
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "mute_urls"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "unmute_urls"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "close_urls"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "postroll_click_urls"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "postroll_view_urls"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "click_urls"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "video_click_urls"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "checkpoints"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->checkpointListType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    .line 131
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "template_settings"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    .line 132
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "mraid_files"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 133
    iget-object v1, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    const-string v2, "cacheable_assets"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->cacheableMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, v0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    const-string v0, "advertisement"

    return-object v0
.end method

.method public toContentValues(Lcom/vungle/warren/model/Advertisement;)Landroid/content/ContentValues;
    .locals 5

    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "item_id"

    .line 39
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_type"

    .line 40
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "expire_time"

    .line 41
    iget-wide v2, p1, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "delay"

    .line 42
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->delay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "show_close_delay"

    .line 43
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "show_close_incentivized"

    .line 44
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "countdown"

    .line 45
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->countdown:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "video_width"

    .line 46
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "video_height"

    .line 47
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cta_overlay_enabled"

    .line 48
    iget-boolean v2, p1, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "cta_click_area"

    .line 49
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "retry_count"

    .line 50
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "enable_moat"

    .line 51
    iget-boolean v2, p1, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "requires_non_market_install"

    .line 52
    iget-boolean v2, p1, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "app_id"

    .line 53
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "campaign"

    .line 54
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video_url"

    .line 55
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md5"

    .line 56
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "postroll_bundle_url"

    .line 57
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cta_destination_url"

    .line 58
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cta_url"

    .line 59
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_token"

    .line 60
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video_identifier"

    .line 61
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "template_url"

    .line 62
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TEMPLATE_ID"

    .line 63
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TEMPLATE_TYPE"

    .line 64
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "moat_extra_vast"

    .line 65
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_market_id"

    .line 66
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bid_token"

    .line 67
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    .line 68
    iget v2, p1, Lcom/vungle/warren/model/Advertisement;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "placement_id"

    .line 69
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_config"

    .line 70
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mute_urls"

    .line 71
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unmute_urls"

    .line 72
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "close_urls"

    .line 73
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "postroll_click_urls"

    .line 74
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "postroll_view_urls"

    .line 75
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click_urls"

    .line 76
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video_click_urls"

    .line 77
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringArrayType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "checkpoints"

    .line 78
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->checkpointListType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "template_settings"

    .line 79
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mraid_files"

    .line 80
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    iget-object v4, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->stringMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cacheable_assets"

    .line 81
    iget-object v2, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->gson:Lcom/google/gson/Gson;

    iget-object p1, p1, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/warren/model/AdvertisementDBAdapter;->cacheableMapType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 23
    check-cast p1, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->toContentValues(Lcom/vungle/warren/model/Advertisement;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
