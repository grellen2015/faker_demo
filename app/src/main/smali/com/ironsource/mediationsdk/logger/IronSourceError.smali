.class public Lcom/ironsource/mediationsdk/logger/IronSourceError;
.super Ljava/lang/Object;
.source "IronSourceError.java"


# static fields
.field public static final AUCTION_ERROR_EMPTY_WATERFALL:I = 0x3ec

.field public static final AUCTION_ERROR_ENCRYPTION:I = 0x3eb

.field public static final AUCTION_ERROR_NO_CANDIDATES:I = 0x3ed

.field public static final AUCTION_ERROR_PARSE:I = 0x3ea

.field public static final AUCTION_ERROR_REQUEST:I = 0x3e8

.field public static final AUCTION_ERROR_RESPONSE_NOT_200:I = 0x3e9

.field public static final AUCTION_ERROR_TIMED_OUT:I = 0x3ee

.field public static final AUCTION_REQUEST_ERROR_MISSING_PARAMS:I = 0x3ef

.field public static final ERROR_BN_INIT_FAILED_AFTER_LOAD:I = 0x25a

.field public static final ERROR_BN_INSTANCE_INIT_ERROR:I = 0x264

.field public static final ERROR_BN_INSTANCE_INIT_TIMEOUT:I = 0x25f

.field public static final ERROR_BN_INSTANCE_LOAD_EMPTY_ADAPTER:I = 0x263

.field public static final ERROR_BN_INSTANCE_LOAD_EMPTY_BANNER:I = 0x262

.field public static final ERROR_BN_INSTANCE_LOAD_TIMEOUT:I = 0x260

.field public static final ERROR_BN_INSTANCE_RELOAD_TIMEOUT:I = 0x261

.field public static final ERROR_BN_LOAD_AFTER_INIT_FAILED:I = 0x258

.field public static final ERROR_BN_LOAD_AFTER_LONG_INITIATION:I = 0x259

.field public static final ERROR_BN_LOAD_EXCEPTION:I = 0x25d

.field public static final ERROR_BN_LOAD_NO_CONFIG:I = 0x267

.field public static final ERROR_BN_LOAD_NO_FILL:I = 0x25e

.field public static final ERROR_BN_LOAD_PLACEMENT_CAPPED:I = 0x25c

.field public static final ERROR_BN_LOAD_WHILE_LONG_INITIATION:I = 0x25b

.field public static final ERROR_BN_RELOAD_SKIP_BACKGROUND:I = 0x266

.field public static final ERROR_BN_RELOAD_SKIP_INVISIBLE:I = 0x265

.field public static final ERROR_BN_UNSUPPORTED_SIZE:I = 0x268

.field public static final ERROR_CAPPED_PER_SESSION:I = 0x20e

.field public static final ERROR_CODE_GENERIC:I = 0x1fe

.field public static final ERROR_CODE_INIT_FAILED:I = 0x1fc

.field public static final ERROR_CODE_INVALID_KEY_VALUE:I = 0x1fa

.field public static final ERROR_CODE_KEY_NOT_SET:I = 0x1f9

.field public static final ERROR_CODE_NO_ADS_TO_SHOW:I = 0x1fd

.field public static final ERROR_CODE_NO_CONFIGURATION_AVAILABLE:I = 0x1f5

.field public static final ERROR_CODE_USING_CACHED_CONFIGURATION:I = 0x1f6

.field public static final ERROR_DO_IS_CALL_LOAD_BEFORE_SHOW:I = 0x41b

.field public static final ERROR_DO_IS_LOAD_ALREADY_IN_PROGRESS:I = 0x41a

.field public static final ERROR_DO_IS_LOAD_TIMED_OUT:I = 0x41c

.field public static final ERROR_DO_RV_CALL_LOAD_BEFORE_SHOW:I = 0x41e

.field public static final ERROR_DO_RV_LOAD_ALREADY_IN_PROGRESS:I = 0x41d

.field public static final ERROR_DO_RV_LOAD_TIMED_OUT:I = 0x41f

.field public static final ERROR_IS_EMPTY_DEFAULT_PLACEMENT:I = 0x3fc

.field public static final ERROR_IS_INIT_EXCEPTION:I = 0x411

.field public static final ERROR_IS_LOAD_DURING_SHOW:I = 0x40d

.field public static final ERROR_IS_LOAD_FAILED_NO_CANDIDATES:I = 0x40b

.field public static final ERROR_IS_SHOW_CALLED_DURING_SHOW:I = 0x40c

.field public static final ERROR_IS_SHOW_EXCEPTION:I = 0x40f

.field public static final ERROR_NON_EXISTENT_INSTANCE:I = 0x20f

.field public static final ERROR_NO_INTERNET_CONNECTION:I = 0x208

.field public static final ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT:I = 0x20c

.field public static final ERROR_RV_EMPTY_DEFAULT_PLACEMENT:I = 0x3fd

.field public static final ERROR_RV_INIT_EXCEPTION:I = 0x410

.field public static final ERROR_RV_INIT_FAILED_TIMEOUT:I = 0x408

.field public static final ERROR_RV_LOAD_DURING_LOAD:I = 0x402

.field public static final ERROR_RV_LOAD_DURING_SHOW:I = 0x403

.field public static final ERROR_RV_LOAD_FAILED_NO_CANDIDATES:I = 0x400

.field public static final ERROR_RV_LOAD_FAILED_TIMEOUT:I = 0x401

.field public static final ERROR_RV_LOAD_FAIL_DUE_TO_INIT:I = 0x409

.field public static final ERROR_RV_LOAD_FAIL_UNEXPECTED:I = 0x406

.field public static final ERROR_RV_LOAD_FAIL_WRONG_AUCTION_ID:I = 0x407

.field public static final ERROR_RV_LOAD_SUCCESS_UNEXPECTED:I = 0x404

.field public static final ERROR_RV_LOAD_SUCCESS_WRONG_AUCTION_ID:I = 0x405

.field public static final ERROR_RV_LOAD_UNEXPECTED_CALLBACK:I = 0x40a

.field public static final ERROR_RV_SHOW_CALLED_DURING_SHOW:I = 0x3fe

.field public static final ERROR_RV_SHOW_CALLED_WRONG_STATE:I = 0x3ff

.field public static final ERROR_RV_SHOW_EXCEPTION:I = 0x40e

.field public static final INIT_ERROR_NO_ADAPTERS_LOADED:I = 0x3f2


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorCode:I

    if-nez p2, :cond_0

    const-string p2, ""

    .line 87
    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceError;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
