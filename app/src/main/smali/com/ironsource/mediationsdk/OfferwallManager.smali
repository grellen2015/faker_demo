.class Lcom/ironsource/mediationsdk/OfferwallManager;
.super Ljava/lang/Object;
.source "OfferwallManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InternalOfferwallApi;
.implements Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentPlacementName:Ljava/lang/String;

.field private mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

.field private mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    return-void
.end method

.method private declared-synchronized reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 237
    monitor-exit p0

    throw p1
.end method

.method private setCustomParams(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5

    .line 280
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAge(I)V

    .line 284
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 292
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getConsent()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offerwall | setConsent(consent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 299
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":setCustomParams():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startOfferwallAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 8

    const/4 v0, 0x0

    .line 252
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    const-string v2, "SupersonicAds"

    .line 255
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getOfferwallAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.ironsource.adapters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SupersonicAds"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SupersonicAds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Adapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "startAdapter"

    const/4 v4, 0x1

    .line 260
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 261
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "SupersonicAds"

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v2, :cond_0

    return-object v0

    .line 267
    :cond_0
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addOWAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 269
    iget-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "SupersonicAds initialization failed - please verify that required dependencies are in you build path."

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 270
    iget-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":startOfferwallAdapter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getOfferwallCredits()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;->getOfferwallCredits()V

    :cond_0
    return-void
.end method

.method public declared-synchronized initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":initOfferwall(appKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 56
    iput-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mActivity:Landroid/app/Activity;

    .line 58
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-nez v0, :cond_0

    const-string p1, "Please check configurations for Offerwall adapters"

    const-string p2, "Offerwall"

    .line 61
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/OfferwallManager;->reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    const-string v1, "SupersonicAds"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-nez v0, :cond_1

    const-string p1, "Please check configurations for Offerwall adapters"

    const-string p2, "Offerwall"

    .line 68
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/OfferwallManager;->reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/OfferwallManager;->startOfferwallAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Please check configurations for Offerwall adapters"

    const-string p2, "Offerwall"

    .line 75
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/OfferwallManager;->reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 79
    :cond_2
    :try_start_3
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/OfferwallManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 80
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 82
    check-cast v0, Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    .line 85
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;->setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V

    .line 87
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isOfferwallAvailable()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 137
    monitor-exit p0

    throw v0
.end method

.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOfferwallCreditsFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 223
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallAdCredited()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 213
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onOfferwallAvailable(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/OfferwallManager;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallAvailable(isAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    iget-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {p1, v3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(Z)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/OfferwallManager;->reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOfferwallClosed()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 231
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallClosed()V

    :cond_0
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 186
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "placement"

    .line 189
    iget-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 192
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 194
    :cond_0
    :goto_0
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x131

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 195
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 197
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallOpened()V

    :cond_1
    return-void
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 205
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 0

    return-void
.end method

.method public showOfferwall()V
    .locals 0

    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OWManager:showOfferwall("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    const-string v1, "Offerwall"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mCurrentPlacementName:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 112
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 115
    iget-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 118
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 125
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/ironsource/mediationsdk/sdk/OfferwallAdapterApi;->showOfferwall(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
