.class public Lcom/vungle/warren/model/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Advertisement$Checkpoint;,
        Lcom/vungle/warren/model/Advertisement$State;,
        Lcom/vungle/warren/model/Advertisement$CacheKey;,
        Lcom/vungle/warren/model/Advertisement$Orientation;,
        Lcom/vungle/warren/model/Advertisement$AdType;
    }
.end annotation


# static fields
.field public static final DONE:I = 0x3

.field public static final ERROR:I = 0x4

.field public static final FILE_SCHEME:Ljava/lang/String; = "file://"

.field public static final KEY_POSTROLL:Ljava/lang/String; = "postroll"

.field public static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final KEY_VIDEO:Ljava/lang/String; = "video"

.field public static final LANDSCAPE:I = 0x1

.field public static final NEW:I = 0x0

.field public static final PORTRAIT:I = 0x0

.field public static final READY:I = 0x1

.field public static final ROTATE:I = 0x2

.field public static final START_MUTED:Ljava/lang/String; = "START_MUTED"

.field private static final TAG:Ljava/lang/String; = "Advertisement"

.field public static final TYPE_VUNGLE_LOCAL:I = 0x0

.field public static final TYPE_VUNGLE_MRAID:I = 0x1

.field public static final VIEWING:I = 0x2


# instance fields
.field adConfig:Lcom/vungle/warren/AdConfig;

.field adMarketId:Ljava/lang/String;

.field adToken:Ljava/lang/String;

.field adType:I
    .annotation build Lcom/vungle/warren/model/Advertisement$AdType;
    .end annotation
.end field

.field appID:Ljava/lang/String;

.field bidToken:Ljava/lang/String;

.field cacheableAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field campaign:Ljava/lang/String;

.field checkpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field clickUrls:[Ljava/lang/String;

.field closeUrls:[Ljava/lang/String;

.field countdown:I

.field ctaClickArea:I

.field ctaDestinationUrl:Ljava/lang/String;

.field ctaOverlayEnabled:Z

.field ctaUrl:Ljava/lang/String;

.field delay:I

.field enableMoat:Z

.field expireTime:J

.field identifier:Ljava/lang/String;

.field md5:Ljava/lang/String;

.field moatExtraVast:Ljava/lang/String;

.field mraidFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field muteUrls:[Ljava/lang/String;

.field placementId:Ljava/lang/String;

.field postRollClickUrls:[Ljava/lang/String;

.field postRollViewUrls:[Ljava/lang/String;

.field postrollBundleUrl:Ljava/lang/String;

.field requiresNonMarketInstall:Z

.field retryCount:I

.field showCloseDelay:I

.field showCloseIncentivized:I

.field state:I

.field templateId:Ljava/lang/String;

.field templateSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field templateType:Ljava/lang/String;

.field templateUrl:Ljava/lang/String;

.field unmuteUrls:[Ljava/lang/String;

.field videoClickUrls:[Ljava/lang/String;

.field videoHeight:I

.field videoIdentifier:Ljava/lang/String;

.field videoUrl:Ljava/lang/String;

.field videoWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 13
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    const/4 v1, 0x0

    .line 263
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    const-string v2, "ad_markup"

    .line 313
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "ad_markup"

    .line 315
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v2, ""

    const-string v3, "adType"

    .line 320
    invoke-static {p1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "adType"

    .line 321
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x6e6a3e23

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const v5, -0x6e5ad017

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "vungle_mraid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "vungle_local"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 405
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Ad Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "! Please add this ad type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :pswitch_0
    iput v6, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    const-string v3, ""

    .line 342
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    const-string v3, "templateSettings"

    .line 345
    invoke-static {p1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 346
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    const-string v3, "templateSettings"

    .line 347
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "normal_replacements"

    .line 348
    invoke-static {v3, v4}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "normal_replacements"

    .line 349
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 354
    :cond_3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_5
    :goto_3
    move-object v8, v5

    .line 355
    :goto_4
    iget-object v9, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v4, "cacheable_replacements"

    .line 359
    invoke-static {v3, v4}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "cacheable_replacements"

    .line 360
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 362
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_5

    .line 365
    :cond_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_5

    .line 368
    :cond_9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    const-string v8, "url"

    invoke-static {v7, v8}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 369
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    const-string v8, "extension"

    invoke-static {v7, v8}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 370
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "extension"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 373
    iget-object v9, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "MAIN_VIDEO"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v2, v7

    goto/16 :goto_5

    :cond_a
    const-string v3, "templateId"

    .line 386
    invoke-static {p1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "templateId"

    .line 387
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    const-string v3, "template_type"

    .line 392
    invoke-static {p1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "template_type"

    .line 393
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    const-string v3, "templateURL"

    .line 398
    invoke-static {p1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "templateURL"

    .line 399
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    goto :goto_7

    .line 401
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Template URL missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Template Type missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing templateID!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing template adConfig!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :pswitch_1
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    const-string v3, "postBundle"

    .line 326
    invoke-static {p1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "postBundle"

    .line 327
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_f
    const-string v3, ""

    :goto_6
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    const-string v3, "url"

    .line 330
    invoke-static {p1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v2, "url"

    .line 331
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 335
    :cond_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    const-string v3, ""

    .line 336
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    const-string v3, ""

    .line 337
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    const-string v3, ""

    .line 338
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    .line 412
    :goto_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 413
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    goto :goto_8

    :cond_11
    const-string v2, ""

    .line 416
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    :goto_8
    const-string v2, "id"

    .line 420
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "id"

    .line 421
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    const-string v2, "campaign"

    .line 429
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "campaign"

    .line 430
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    const-string v2, "app_id"

    .line 437
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "app_id"

    .line 438
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    const-string v2, "expiry"

    .line 445
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_13

    const-string v2, "expiry"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "expiry"

    .line 446
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_12

    .line 448
    iput-wide v7, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    goto :goto_9

    .line 450
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v3

    iput-wide v7, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    goto :goto_9

    .line 456
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v3

    iput-wide v7, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    :goto_9
    const-string v2, "tpat"

    .line 460
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "tpat"

    .line 461
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    .line 465
    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    packed-switch v3, :pswitch_data_1

    .line 496
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Ad Type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_17

    mul-int/lit8 v7, v3, 0x19

    .line 486
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "checkpoint.%d"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 488
    invoke-static {v2, v8}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 489
    new-instance v9, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    int-to-byte v7, v7

    invoke-direct {v9, v8, v7}, Lcom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lcom/google/gson/JsonArray;B)V

    goto :goto_b

    :cond_14
    move-object v9, v5

    .line 492
    :goto_b
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :pswitch_3
    const-string v3, "play_percentage"

    .line 467
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "play_percentage"

    .line 468
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 472
    :goto_c
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_16

    .line 473
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-nez v7, :cond_15

    goto :goto_d

    .line 476
    :cond_15
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    new-instance v8, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 478
    :cond_16
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_17
    const-string v3, "clickUrl"

    .line 502
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "clickUrl"

    .line 503
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 505
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    .line 507
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 508
    iget-object v8, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    move v4, v9

    goto :goto_e

    .line 511
    :cond_18
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    :cond_19
    const-string v3, "moat"

    .line 515
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "moat"

    .line 516
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "is_enabled"

    .line 517
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    const-string v4, "extra_vast"

    .line 518
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    goto :goto_f

    .line 520
    :cond_1a
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    const-string v3, ""

    .line 521
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    :goto_f
    const-string v3, "video_click"

    .line 524
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "video_click"

    .line 525
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 526
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 527
    :goto_10
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_1e

    .line 528
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_1c

    const-string v7, "null"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_11

    .line 531
    :cond_1b
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_12

    .line 529
    :cond_1c
    :goto_11
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v4

    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 535
    :cond_1d
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    .line 540
    :cond_1e
    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    packed-switch v3, :pswitch_data_2

    .line 556
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown AdType!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    const-string v3, "video.mute"

    const-string v4, "video.unmute"

    const-string v7, "video.close"

    const-string v8, "postroll.click"

    const-string v9, "postroll.view"

    goto :goto_13

    :pswitch_5
    const-string v3, "mute"

    const-string v4, "unmute"

    const-string v7, "video_close"

    const-string v8, "postroll_click"

    const-string v9, "postroll_view"

    .line 559
    :goto_13
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 560
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 561
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    const/4 v10, 0x0

    .line 562
    :goto_14
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_22

    .line 563
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    if-eqz v11, :cond_20

    const-string v11, "null"

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f

    goto :goto_15

    .line 566
    :cond_1f
    iget-object v11, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    goto :goto_16

    .line 564
    :cond_20
    :goto_15
    iget-object v11, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v11, v10

    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 570
    :cond_21
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    .line 573
    :cond_22
    invoke-static {v2, v4}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 574
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 575
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 576
    :goto_17
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_26

    .line 577
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_24

    const-string v10, "null"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    goto :goto_18

    .line 580
    :cond_23
    iget-object v10, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    goto :goto_19

    .line 578
    :cond_24
    :goto_18
    iget-object v10, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    const-string v11, ""

    aput-object v11, v10, v4

    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 584
    :cond_25
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    .line 587
    :cond_26
    invoke-static {v2, v7}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 588
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 589
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 590
    :goto_1a
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_2a

    .line 591
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_28

    const-string v7, "null"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_1b

    .line 594
    :cond_27
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v4

    goto :goto_1c

    .line 592
    :cond_28
    :goto_1b
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v7, v4

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 598
    :cond_29
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    .line 601
    :cond_2a
    invoke-static {v2, v8}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 602
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 603
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 604
    :goto_1d
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_2e

    .line 605
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_2c

    const-string v7, "null"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_1e

    .line 608
    :cond_2b
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1f

    .line 606
    :cond_2c
    :goto_1e
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v4

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 612
    :cond_2d
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    .line 615
    :cond_2e
    invoke-static {v2, v9}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 616
    invoke-virtual {v2, v9}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 618
    :goto_20
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 619
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_30

    const-string v4, "null"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_21

    .line 622
    :cond_2f
    iget-object v4, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    goto :goto_22

    .line 620
    :cond_30
    :goto_21
    iget-object v4, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v4, v3

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 626
    :cond_31
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    goto :goto_23

    .line 630
    :cond_32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    .line 631
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    .line 632
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    .line 633
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    .line 634
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    .line 635
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    .line 636
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    .line 637
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    .line 638
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    const-string v2, ""

    .line 639
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    :cond_33
    :goto_23
    const-string v2, "delay"

    .line 643
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "delay"

    .line 644
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    goto :goto_24

    .line 646
    :cond_34
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    :goto_24
    const-string v2, "showClose"

    .line 650
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "showClose"

    .line 651
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    goto :goto_25

    .line 653
    :cond_35
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    :goto_25
    const-string v2, "showCloseIncentivized"

    .line 655
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "showCloseIncentivized"

    .line 656
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    goto :goto_26

    .line 658
    :cond_36
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    :goto_26
    const-string v2, "countdown"

    .line 662
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "countdown"

    .line 663
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    goto :goto_27

    .line 665
    :cond_37
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    :goto_27
    const-string v2, "videoWidth"

    .line 669
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "videoWidth"

    .line 670
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    const-string v2, "videoHeight"

    .line 674
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "videoHeight"

    .line 675
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    const-string v2, "md5"

    .line 681
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "md5"

    .line 682
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    goto :goto_28

    :cond_38
    const-string v2, ""

    .line 684
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    :goto_28
    const-string v2, "cta_overlay"

    .line 688
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "cta_overlay"

    .line 689
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "enabled"

    .line 690
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "enabled"

    .line 691
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    goto :goto_29

    .line 693
    :cond_39
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    :goto_29
    const-string v3, "click_area"

    .line 695
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "click_area"

    .line 696
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 697
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    goto :goto_2a

    :cond_3a
    const-string v0, "click_area"

    .line 699
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    goto :goto_2a

    .line 702
    :cond_3b
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    goto :goto_2a

    .line 707
    :cond_3c
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    .line 708
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    :goto_2a
    const-string v0, "callToActionDest"

    .line 712
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "callToActionDest"

    .line 713
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_3d
    move-object v0, v5

    :goto_2b
    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    const-string v0, "callToActionUrl"

    .line 716
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "callToActionUrl"

    .line 717
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    :cond_3e
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    const-string v0, "retryCount"

    .line 720
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "retryCount"

    .line 721
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    goto :goto_2c

    .line 723
    :cond_3f
    iput v6, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    :goto_2c
    const-string v0, "ad_token"

    .line 727
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "ad_token"

    .line 728
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    const-string v0, "video_object_id"

    .line 734
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "video_object_id"

    .line 735
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    goto :goto_2d

    :cond_40
    const-string v0, ""

    .line 737
    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    :goto_2d
    const-string v0, "requires_sideloading"

    .line 741
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "requires_sideloading"

    .line 742
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    goto :goto_2e

    .line 744
    :cond_41
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    :goto_2e
    const-string v0, "ad_market_id"

    .line 747
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "ad_market_id"

    .line 748
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    goto :goto_2f

    :cond_42
    const-string v0, ""

    .line 750
    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    :goto_2f
    const-string v0, "bid_token"

    .line 753
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "bid_token"

    .line 754
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    goto :goto_30

    :cond_43
    const-string p1, ""

    .line 756
    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    .line 762
    :goto_30
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    return-void

    .line 730
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AdToken missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 677
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video height!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 672
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video width!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing app Id, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing campaign information, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing identifier, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Advertisement did not contain an adType!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON does not contain ad markup!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public configure(Lcom/vungle/warren/AdConfig;)V
    .locals 0

    if-nez p1, :cond_0

    .line 781
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    goto :goto_0

    .line 783
    :cond_0
    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    :goto_0
    return-void
.end method

.method public createMRAIDArgs()Lcom/google/gson/JsonObject;
    .locals 4

    .line 994
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 998
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1000
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1001
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string v1, "true"

    const-string v2, "START_MUTED"

    .line 1008
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "START_MUTED"

    .line 1009
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const-string v2, "true"

    goto :goto_1

    :cond_2
    const-string v2, "false"

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_3
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1013
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1014
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-object v1

    .line 995
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Advertisement does not have MRAID Arguments!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 801
    instance-of v0, p1, Lcom/vungle/warren/model/Advertisement;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 802
    check-cast p1, Lcom/vungle/warren/model/Advertisement;

    .line 803
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 804
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 805
    :cond_1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 806
    :cond_2
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->adType:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    if-eq v0, v2, :cond_3

    return v1

    .line 807
    :cond_3
    iget-wide v2, p1, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    return v1

    .line 808
    :cond_4
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->delay:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    if-eq v0, v2, :cond_5

    return v1

    .line 809
    :cond_5
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    if-eq v0, v2, :cond_6

    return v1

    .line 810
    :cond_6
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    if-eq v0, v2, :cond_7

    return v1

    .line 811
    :cond_7
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->countdown:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    if-eq v0, v2, :cond_8

    return v1

    .line 812
    :cond_8
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    if-eq v0, v2, :cond_9

    return v1

    .line 813
    :cond_9
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    if-eq v0, v2, :cond_a

    return v1

    .line 814
    :cond_a
    iget-boolean v0, p1, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    if-eq v0, v2, :cond_b

    return v1

    .line 815
    :cond_b
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    if-eq v0, v2, :cond_c

    return v1

    .line 816
    :cond_c
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    if-eq v0, v2, :cond_d

    return v1

    .line 817
    :cond_d
    iget-boolean v0, p1, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    if-eq v0, v2, :cond_e

    return v1

    .line 818
    :cond_e
    iget-boolean v0, p1, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    if-eq v0, v2, :cond_f

    return v1

    .line 820
    :cond_f
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 821
    :cond_10
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 822
    :cond_11
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 823
    :cond_12
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 824
    :cond_13
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 825
    :cond_14
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 826
    :cond_15
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 827
    :cond_16
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 828
    :cond_17
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    .line 829
    :cond_18
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 830
    :cond_19
    iget v0, p1, Lcom/vungle/warren/model/Advertisement;->state:I

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    if-eq v0, v2, :cond_1a

    return v1

    .line 832
    :cond_1a
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_1b

    return v1

    :cond_1b
    const/4 v0, 0x0

    .line 833
    :goto_0
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 834
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    :cond_1d
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_1e

    return v1

    :cond_1e
    const/4 v0, 0x0

    .line 838
    :goto_1
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 839
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 842
    :cond_20
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_21

    return v1

    :cond_21
    const/4 v0, 0x0

    .line 843
    :goto_2
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_23

    .line 844
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 847
    :cond_23
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_24

    return v1

    :cond_24
    const/4 v0, 0x0

    .line 848
    :goto_3
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 849
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 852
    :cond_26
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_27

    return v1

    :cond_27
    const/4 v0, 0x0

    .line 853
    :goto_4
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_29

    .line 854
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    return v1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 857
    :cond_29
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_2a

    return v1

    :cond_2a
    const/4 v0, 0x0

    .line 858
    :goto_5
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2c

    .line 859
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 862
    :cond_2c
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2d

    return v1

    :cond_2d
    const/4 v0, 0x0

    .line 863
    :goto_6
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 864
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 867
    :cond_2f
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    .line 869
    :cond_30
    iget-object p1, p1, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    return v1

    :cond_31
    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method

.method public getAdConfig()Lcom/vungle/warren/AdConfig;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    return-object v0
.end method

.method public getAdMarketId()Ljava/lang/String;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdToken()Ljava/lang/String;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1
    .annotation build Lcom/vungle/warren/model/Advertisement$AdType;
    .end annotation

    .line 766
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    return v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCTAURL(Z)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1029
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    packed-switch v0, :pswitch_data_0

    .line 1035
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AdType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1033
    :pswitch_0
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    return-object p1

    :pswitch_1
    if-eqz p1, :cond_0

    .line 1031
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckpoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCtaClickArea()Z
    .locals 2

    .line 295
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getDownloadableUrls()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1050
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    packed-switch v1, :pswitch_data_0

    .line 1071
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertisement created without adType!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "template"

    .line 1059
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1064
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1065
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    const-string v1, "video"

    .line 1052
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "postroll"

    .line 1055
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExpireTime()J
    .locals 4

    .line 990
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 934
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMoatEnabled()Z
    .locals 1

    .line 978
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    return v0
.end method

.method public getMoatVastExtra()Ljava/lang/String;
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 2
    .annotation build Lcom/vungle/warren/model/Advertisement$Orientation;
    .end annotation

    .line 792
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCloseDelay(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 972
    iget p1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    mul-int/lit16 p1, p1, 0x3e8

    return p1

    .line 974
    :cond_0
    iget p1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    mul-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method public getState()I
    .locals 1
    .annotation build Lcom/vungle/warren/model/Advertisement$State;
    .end annotation

    .line 1098
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    return v0
.end method

.method getTemplateId()Ljava/lang/String;
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    return-object v0
.end method

.method public getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 882
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    .line 928
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Advertisement Type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v0, "checkpoint"

    .line 895
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "\\."

    .line 897
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 898
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    div-int/lit8 p1, p1, 0x19

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 904
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "postroll.view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "video_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "clickUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "video.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "video.unmute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "postroll.click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "video.mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TPAT Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :pswitch_1
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    return-object p1

    .line 921
    :pswitch_2
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    return-object p1

    .line 918
    :pswitch_3
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    return-object p1

    .line 915
    :pswitch_4
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    return-object p1

    .line 912
    :pswitch_5
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    return-object p1

    .line 909
    :pswitch_6
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    return-object p1

    .line 906
    :pswitch_7
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    return-object p1

    .line 884
    :pswitch_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_2

    :sswitch_7
    const-string v0, "postroll_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_8
    const-string v0, "video_close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :sswitch_9
    const-string v0, "video_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_a
    const-string v0, "postroll_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_b
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_c
    const-string v0, "unmute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_d
    const-string v0, "click_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, -0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 892
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TPAT Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :pswitch_9
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    return-object p1

    .line 890
    :pswitch_a
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    return-object p1

    .line 889
    :pswitch_b
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    return-object p1

    .line 888
    :pswitch_c
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    return-object p1

    .line 887
    :pswitch_d
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    return-object p1

    .line 886
    :pswitch_e
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    return-object p1

    .line 885
    :pswitch_f
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x6323f454 -> :sswitch_6
        -0x4d148e89 -> :sswitch_5
        -0x1cb6f2fb -> :sswitch_4
        -0x1eba93b -> :sswitch_3
        0x36073ac7 -> :sswitch_2
        0x51b1b4c4 -> :sswitch_1
        0x60a4d4d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x751b49c8 -> :sswitch_d
        -0x321793ce -> :sswitch_c
        0x335219 -> :sswitch_b
        0x688e7e6 -> :sswitch_a
        0x51b1b4c4 -> :sswitch_9
        0x51b1cd34 -> :sswitch_8
        0x63575487 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasPostroll()Z
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 878
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCtaOverlayEnabled()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    return v0
.end method

.method public isRequiresNonMarketInstall()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    return v0
.end method

.method public setMraidAssetDir(Ljava/io/File;)V
    .locals 6

    .line 1085
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1086
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1088
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/vungle/warren/model/Advertisement$State;
        .end annotation
    .end param

    .line 1094
    iput p1, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advertisement{adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", checkpoints="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", muteUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    .line 1193
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", unmuteUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    .line 1194
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", closeUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    .line 1195
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", postRollClickUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    .line 1196
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", postRollViewUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    .line 1197
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", videoClickUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    .line 1198
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clickUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    .line 1199
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", campaign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseDelay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseIncentivized="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", countdown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", postrollBundleUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaOverlayEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ctaClickArea="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ctaDestinationUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateSettings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mraidFiles="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheableAssets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", templateId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", enableMoat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", moatExtraVast=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requiresNonMarketInstall="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", adMarketId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bidToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
