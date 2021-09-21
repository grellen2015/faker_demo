.class public Lcom/facebook/applinks/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/applinks/AppLinkData$CompletionHandler;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_EXTRAS_KEY:Ljava/lang/String; = "extras"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final AUTO_APPLINK_FLAG_KEY:Ljava/lang/String; = "is_auto_applink"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field private static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/applinks/AppLinkData;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final EXTRAS_DEEPLINK_CONTEXT_KEY:Ljava/lang/String; = "deeplink_context"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final PROMOTION_CODE_KEY:Ljava/lang/String; = "promo_code"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appLinkData:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private argumentBundle:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private arguments:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private promotionCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private ref:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private targetUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    .line 479
    new-instance v0, Lcom/facebook/applinks/AppLinkData$2;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData$2;-><init>()V

    sput-object v0, Lcom/facebook/applinks/AppLinkData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 497
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :catch_0
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 508
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/applinks/AppLinkData$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/applinks/AppLinkData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/applinks/AppLinkData;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "activity"

    .line 260
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    .line 268
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 273
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "al_applink_data"

    .line 290
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 295
    :cond_1
    new-instance v2, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v2}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 296
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 297
    iget-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    .line 298
    iget-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez p0, :cond_2

    const-string p0, "target_url"

    .line 299
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 301
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 304
    :cond_2
    iput-object v1, v2, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 305
    iput-object v0, v2, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string p0, "referer_data"

    .line 306
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "fb_ref"

    .line 308
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    :cond_3
    const-string p0, "extras"

    .line 311
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "deeplink_context"

    .line 313
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 316
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "promo_code"

    .line 317
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "promo_code"

    .line 318
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    sget-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse deeplink_context JSON"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-object v2
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 337
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "version"

    .line 338
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "bridge_args"

    .line 340
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "method"

    .line 341
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "applink"

    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 344
    new-instance p0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {p0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    const-string v2, "method_args"

    .line 346
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 348
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "ref"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "ref"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    goto :goto_0

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "referer_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "referer_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fb_ref"

    .line 354
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "fb_ref"

    .line 355
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 359
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "target_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "target_url"

    .line 361
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 362
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "extras"

    .line 367
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deeplink_context"

    .line 368
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "deeplink_context"

    .line 370
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "promo_code"

    .line 371
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "promo_code"

    .line 373
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 385
    sget-object v1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse AppLink JSON"

    invoke-static {v1, v2, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 383
    sget-object v1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse AppLink JSON"

    invoke-static {v1, v2, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_0
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 398
    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 399
    iget-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, v0, p1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 2

    const-string v0, "context"

    .line 139
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    .line 140
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 143
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "applicationId"

    .line 146
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 150
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/applinks/AppLinkData$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/applinks/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 7

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    const-string v2, "DEFERRED_APP_LINK"

    .line 166
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 169
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 167
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 173
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V

    const-string v1, "application_package_name"

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    const-string p0, "%s/activities"

    const/4 v1, 0x1

    .line 179
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 183
    :try_start_1
    invoke-static {p1, p0, v0, p1}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v0, "applink_args"

    .line 189
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_time"

    const-wide/16 v2, -0x1

    .line 191
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "applink_class"

    .line 193
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "applink_url"

    .line 194
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 197
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v0, :cond_5

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 201
    :try_start_2
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 204
    :cond_0
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v2, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    .line 206
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    goto :goto_3

    .line 209
    :catch_1
    :try_start_3
    sget-object p1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 215
    :try_start_4
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 216
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_2
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 220
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v2, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 224
    :catch_2
    :try_start_5
    sget-object p1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v1, "Unable to put app link class name in AppLinkData.arguments"

    invoke-static {p1, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_5

    .line 231
    :try_start_6
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 232
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v1, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_4
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    .line 235
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 239
    :catch_3
    :try_start_7
    sget-object p0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string p1, "Unable to put app link URL in AppLinkData.arguments"

    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    :goto_2
    move-object p1, v0

    goto :goto_4

    .line 247
    :catch_4
    :goto_3
    sget-object p0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v0, "Unable to fetch deferred applink from server"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_6
    :goto_4
    invoke-interface {p2, p1}, Lcom/facebook/applinks/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V

    return-void

    :catch_5
    move-exception p0

    .line 176
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "An error occurred while preparing deferred app link"

    invoke-direct {p1, p2, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "al_applink_data"

    .line 449
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 454
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 406
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 411
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 412
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 413
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 414
    check-cast v3, Lorg/json/JSONArray;

    .line 415
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 416
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 419
    instance-of v6, v4, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 420
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    .line 421
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 422
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 424
    :cond_2
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 425
    :cond_3
    instance-of v4, v4, Lorg/json/JSONArray;

    if-nez v4, :cond_5

    .line 429
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 430
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 431
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 433
    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_5
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Nested arrays are not supported."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppLinkData()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getArgumentBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPromotionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method

.method isAutoAppLink()Z
    .locals 8

    .line 514
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v2, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applinks"

    const-string v4, "fb%s"

    const/4 v5, 0x1

    .line 520
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 521
    iget-object v6, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    const-string v7, "is_auto_applink"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 522
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 471
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 475
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
