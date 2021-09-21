.class public Lcom/ironsource/mediationsdk/IronSourceObject;
.super Ljava/lang/Object;
.source "IronSourceObject.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/IronSourceInterface;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;


# instance fields
.field private final IRONSOURCE_VERSION_STRING:Ljava/lang/String;

.field private final KEY_INIT_COUNTER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdUnitsToInitialize:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

.field private mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mBnPlacementToLoad:Ljava/lang/String;

.field private mConsent:Ljava/lang/Boolean;

.field private mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

.field private mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

.field private mDidInitBanner:Z

.field private mDidInitInterstitial:Z

.field private mDidInitRewardedVideo:Z

.field private mDynamicUserId:Ljava/lang/String;

.field private mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInitCounter:I

.field private mInitSucceeded:Z

.field private mInitiatedAdUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

.field private mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

.field private mIsDemandOnlyIs:Z

.field private mIsDemandOnlyRv:Z

.field private mIsIsLoadBeforeInitCompleted:Z

.field private mIsIsProgrammatic:Z

.field private mIsRvProgrammatic:Z

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMediationType:Ljava/lang/String;

.field private mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

.field private mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

.field private mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

.field private mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

.field private mRequestedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

.field private mRvServerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSegment:Ljava/lang/String;

.field private final mServerResponseLocker:Ljava/lang/Object;

.field private mSessionId:Ljava/lang/String;

.field private mShouldSendGetInstanceEvent:Z

.field private mUserAge:Ljava/lang/Integer;

.field private mUserGender:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    const-string v0, "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b6.10.2"

    .line 72
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->IRONSOURCE_VERSION_STRING:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 91
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;

    .line 94
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    .line 98
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 102
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 107
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    const-string v3, "sessionDepth"

    .line 111
    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->KEY_INIT_COUNTER:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 145
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeManagers()V

    .line 148
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    .line 150
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    .line 151
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    .line 152
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    .line 153
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    iput v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    .line 155
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 156
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 157
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 158
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 160
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 161
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    .line 163
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    .line 164
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    .line 165
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    .line 166
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 167
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 168
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    .line 169
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    .line 170
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    return-void
.end method

.method private addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 2638
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 2639
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2643
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IronSourceObject addToDictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private varargs declared-synchronized attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 11

    monitor-enter p0

    .line 327
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p2, v2

    .line 328
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    goto :goto_1

    .line 330
    :cond_0
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_4

    .line 338
    :try_start_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz p1, :cond_c

    .line 339
    array-length p1, p2

    :goto_2
    if-ge v1, p1, :cond_c

    aget-object v0, p2, v1

    .line 340
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 341
    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 345
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 347
    :cond_4
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    const/4 v2, 0x3

    const/16 v4, 0xe

    if-nez v0, :cond_7

    .line 349
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 352
    array-length v0, p2

    const/4 v5, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    aget-object v6, p2, v1

    .line 353
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 356
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    :try_start_3
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v5

    .line 362
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    .line 365
    :cond_5
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ad unit has started initializing."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_c

    :try_start_5
    const-string p2, "sessionDepth"

    .line 371
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_2
    move-exception p2

    .line 373
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    :goto_6
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, v4, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 376
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto/16 :goto_c

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_8

    .line 381
    monitor-exit p0

    return-void

    .line 383
    :cond_8
    :try_start_7
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 386
    array-length v0, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v5, v0, :cond_b

    aget-object v7, p2, v5

    .line 388
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 391
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 395
    :try_start_8
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catch_3
    move-exception v6

    .line 397
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    :goto_8
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 402
    invoke-direct {p0, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_9

    .line 405
    :cond_9
    invoke-direct {p0, v7, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_9
    const/4 v6, 0x1

    goto :goto_a

    .line 408
    :cond_a
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ad unit has already been initialized"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    if-eqz v6, :cond_c

    :try_start_a
    const-string p2, "sessionDepth"

    .line 414
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_b

    :catch_4
    move-exception p2

    .line 416
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    :goto_b
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, v4, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 419
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 422
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 326
    monitor-exit p0

    throw p1
.end method

.method private connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 10

    .line 2094
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2101
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2103
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2104
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "using custom identifier"

    invoke-virtual {v2, v4, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_1
    move-object v7, v0

    .line 2107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v0, :cond_2

    .line 2108
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getSegmentData()Ljava/util/Vector;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_2
    move-object v9, v1

    .line 2110
    :goto_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationType()Ljava/lang/String;

    move-result-object v8

    .line 2112
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lcom/ironsource/mediationsdk/server/ServerURL;->getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    return-object v1

    .line 2118
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 2119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "response"

    .line 2121
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2123
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    const-string v0, "C38FB23A402222A0C17D34A92F971D1F"

    .line 2127
    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2130
    :cond_5
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2, p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2133
    :try_start_1
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_6

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    .line 2137
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v0
.end method

.method private getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 2

    .line 2578
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2584
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2585
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    return-object p1

    .line 2588
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 2592
    :cond_2
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    return-object p1
.end method

.method private getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 4

    .line 2057
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLastResponse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2060
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2062
    :catch_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v0, "appKey"

    .line 2065
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "userId"

    .line 2066
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "response"

    .line 2067
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2069
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2070
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2071
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2075
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2077
    new-instance p2, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p2, p1, v0, v2, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 2080
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2081
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2082
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 2083
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x8c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2084
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method private getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/IronSourceObject;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/ironsource/mediationsdk/IronSourceObject;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    .line 140
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 135
    monitor-exit v0

    throw v1
.end method

.method private getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 5

    .line 2456
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2457
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2463
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    .line 2467
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    :try_start_2
    const-string p1, "Default placement was not found"

    .line 2471
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2475
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    move-object p1, v0

    :cond_2
    if-nez p1, :cond_3

    .line 2479
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1

    .line 2481
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p1

    return-object p1

    .line 2458
    :cond_4
    :goto_2
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1
.end method

.method private getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 5

    .line 1776
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 1780
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1783
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 1787
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-object v0

    .line 1792
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 1793
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 1794
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1795
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1796
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 1797
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 4

    .line 1414
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 1417
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1420
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 1423
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-object v0

    .line 1428
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 1429
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1431
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1432
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 5

    .line 2485
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2486
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2492
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    .line 2496
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    :try_start_2
    const-string p1, "Default placement was not found"

    .line 2500
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2504
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    move-object p1, v0

    :cond_2
    if-nez p1, :cond_3

    .line 2508
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1

    .line 2510
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object p1

    return-object p1

    .line 2487
    :cond_4
    :goto_2
    sget-object p1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    return-object p1
.end method

.method private getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 5

    .line 2150
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2155
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2156
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2160
    :goto_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigurationsReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2161
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 2165
    :goto_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2166
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 2171
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2172
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2173
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 2174
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 2175
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 2176
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2177
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto/16 :goto_4

    :cond_4
    if-eqz v4, :cond_5

    .line 2180
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2181
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2182
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 2183
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 2184
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 2185
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2186
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto :goto_4

    .line 2189
    :cond_5
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setIsEventsEnabled(Z)V

    :goto_4
    if-eqz v2, :cond_6

    .line 2192
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2193
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2194
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 2195
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 2196
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 2197
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2198
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_7

    .line 2200
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 2201
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 2202
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 2203
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 2204
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 2205
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 2206
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 2207
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    goto :goto_5

    .line 2209
    :cond_7
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setIsEventsEnabled(Z)V

    :goto_5
    return-void
.end method

.method private initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getPublisherLoggerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setDebugLevel(I)V

    .line 2214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v1, "console"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getConsoleLoggerLevel()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    return-void
.end method

.method private initializeManagers()V
    .locals 3

    const/4 v0, 0x0

    .line 895
    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 896
    new-instance v0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;-><init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    .line 897
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V

    .line 899
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .line 901
    new-instance v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    .line 902
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    .line 904
    new-instance v0, Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    .line 905
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    .line 906
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 908
    new-instance v0, Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/OfferwallManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    .line 909
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V

    return-void
.end method

.method private initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 0

    .line 2144
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 2145
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    return-void
.end method

.method private isBannerConfigurationsReady()Z
    .locals 1

    .line 1922
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1923
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1924
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInterstitialConfigurationsReady()Z
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1771
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1772
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOfferwallConfigurationsReady()Z
    .locals 1

    .line 1807
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1808
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1809
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRewardedVideoConfigurationsReady()Z
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1409
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1410
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    .locals 4

    .line 819
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 849
    :pswitch_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 850
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 851
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 852
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x25a

    const-string v3, "Init had failed"

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 p1, 0x0

    .line 853
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 854
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 856
    :cond_0
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    if-nez p2, :cond_1

    .line 845
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 846
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(Z)V

    goto/16 :goto_2

    .line 832
    :pswitch_2
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz p1, :cond_3

    .line 833
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 834
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "initISDemandOnly() had failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 836
    :cond_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_2

    .line 838
    :cond_3
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz p1, :cond_7

    .line 839
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 840
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p1

    const-string p2, "init() had failed"

    const-string v0, "Interstitial"

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2

    .line 821
    :pswitch_3
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v0, :cond_5

    .line 822
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 823
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "initISDemandOnly() had failed"

    const-string v2, "Rewarded Video"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    .line 825
    :cond_4
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 827
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 828
    :cond_6
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareEventManagers(Landroid/app/Activity;)V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/ironsource/mediationsdk/events/SuperLooper;->getLooper()Lcom/ironsource/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 866
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 867
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_0
    return-void
.end method

.method private sendIsCappedEvent(ZLjava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2533
    :cond_0
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 2536
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "placement"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p2, v2, v0

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    :cond_1
    const/16 p2, 0x456

    .line 2539
    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    return-void
.end method

.method private sentEventWithISEventManager(ILorg/json/JSONObject;)V
    .locals 1

    .line 2515
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2516
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sentEventWithRVEventManager(ILorg/json/JSONObject;)V
    .locals 1

    .line 2520
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2521
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private showProgrammaticInterstitial(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1614
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1617
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1621
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1625
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showProgrammaticInterstitial()"

    invoke-virtual {v1, v2, v3, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1627
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method private showProgrammaticRewardedVideo(Ljava/lang/String;)V
    .locals 3

    .line 1193
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1196
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "showProgrammaticRewardedVideo error: empty default placement in response"

    .line 1201
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1202
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3fd

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1203
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->showRewardedVideo(Lcom/ironsource/mediationsdk/model/Placement;)V

    :goto_0
    return-void
.end method

.method private startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 3

    .line 468
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 479
    :pswitch_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startBanner()V

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/OfferwallManager;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :pswitch_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startInterstitial()V

    goto :goto_0

    .line 470
    :pswitch_3
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startRewardedVideo()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startBanner()V
    .locals 12

    .line 738
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAdaptersSmartLoadTimeout()J

    move-result-wide v7

    .line 740
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerRefreshInterval()I

    move-result v9

    .line 741
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerDelayLoadFailure()I

    move-result v10

    .line 743
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 744
    :goto_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 745
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 747
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 748
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 751
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    :cond_1
    new-instance v11, Lcom/ironsource/mediationsdk/BannerManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/ironsource/mediationsdk/BannerManager;-><init>(Ljava/util/List;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JII)V

    iput-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    .line 758
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 759
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 760
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 761
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 762
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 764
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startDemandOnlyIs()V
    .locals 11

    .line 650
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Interstitial started in demand only mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 653
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 654
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 657
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 658
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 663
    new-instance v1, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v10

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    .line 664
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->setConsent(Z)V

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 668
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitial(Ljava/lang/String;)V

    goto :goto_1

    .line 670
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_2

    .line 672
    :cond_4
    invoke-static {v4, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    .line 673
    new-array v3, v2, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v4

    const/16 v6, 0x3f2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v2, 0x1418a

    .line 674
    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 676
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v1, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    .line 678
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startDemandOnlyRv()V
    .locals 11

    .line 509
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Rewarded Video started in demand only mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 512
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 513
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 514
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 516
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 522
    new-instance v1, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v10

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    .line 523
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->setConsent(Z)V

    .line 526
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideo(Ljava/lang/String;)V

    goto :goto_1

    .line 529
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_2

    .line 531
    :cond_4
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v1, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    .line 533
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startInterstitial()V
    .locals 6

    .line 682
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startDemandOnlyIs()V

    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsProgrammatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    const v0, 0x14050

    .line 688
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 690
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz v0, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startProgrammaticIs()V

    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getISDelayLoadFailure()I

    move-result v1

    .line 697
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setDelayLoadFailureNotificationInSeconds(I)V

    const/4 v1, 0x0

    .line 699
    :goto_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 700
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 702
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 703
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 706
    new-instance v4, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {v4, v3, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 708
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    add-int/lit8 v3, v1, 0x1

    .line 711
    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setProviderPriority(I)V

    .line 712
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 719
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v0

    .line 720
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->setSmartLoadAmount(I)V

    .line 722
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_5

    .line 724
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 725
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V

    goto :goto_1

    .line 728
    :cond_4
    invoke-static {v2, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    .line 729
    new-array v3, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v3, v2

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x1418a

    .line 730
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 732
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private startProgrammaticIs()V
    .locals 11

    .line 623
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Interstitial started in programmatic mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 625
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 626
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 629
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 635
    new-instance v0, Lcom/ironsource/mediationsdk/ProgIsManager;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getISDelayLoadFailure()I

    move-result v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/ironsource/mediationsdk/ProgIsManager;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    .line 636
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_3

    .line 637
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 638
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadInterstitial()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 641
    invoke-static {v3, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 642
    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    .line 643
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 645
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private startProgrammaticRv()V
    .locals 10

    .line 485
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Rewarded Video started in programmatic mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 487
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 497
    new-instance v0, Lcom/ironsource/mediationsdk/ProgRvManager;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/ironsource/mediationsdk/ProgRvManager;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 500
    invoke-static {v3, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 501
    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x13da2

    .line 502
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 504
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_1
    return-void
.end method

.method private startRewardedVideo()V
    .locals 6

    .line 538
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startDemandOnlyRv()V

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsProgrammatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    const v0, 0x13c68

    .line 544
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 546
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v0, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startProgrammaticRv()V

    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v0

    const/4 v1, 0x0

    .line 553
    :goto_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 554
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 556
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 557
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 560
    new-instance v4, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v4, v3, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 562
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 563
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    add-int/lit8 v3, v1, 0x1

    .line 564
    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setProviderPriority(I)V

    .line 565
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 573
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isUltraEventsEnabled()Z

    move-result v1

    .line 574
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setIsUltraEventsEnabled(Z)V

    .line 576
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v1

    .line 577
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setSmartLoadAmount(I)V

    .line 579
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getManualLoadIntervalInSeconds()I

    move-result v1

    .line 580
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setManualLoadInterval(I)V

    .line 582
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVBackFillProvider()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 585
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 588
    new-instance v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v2, v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 590
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 591
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 592
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setBackfillSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 597
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVPremiumProvider()Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 600
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 603
    new-instance v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v2, v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V

    .line 605
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 607
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setPremiumSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 612
    :cond_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 614
    :cond_6
    invoke-static {v2, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    .line 615
    new-array v3, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v3, v2

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    .line 616
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 618
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_1
    return-void
.end method

.method private validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/16 v0, 0x78

    if-le p1, v0, :cond_1

    :cond_0
    :try_start_0
    const-string p1, "age"

    const-string v0, "SupersonicAds"

    const-string v1, "age value should be between 5-120"

    .line 2298
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "age"

    const-string v0, "SupersonicAds"

    const-string v1, "age value should be between 5-120"

    .line 2301
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private validateAlphanumeric(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 2330
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 3

    .line 2254
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    const/16 v2, 0xa

    .line 2258
    invoke-direct {p0, p1, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2259
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "appKey"

    const-string v2, "should contain only english characters and numbers"

    .line 2260
    invoke-static {v1, p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 2262
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_0
    const-string v1, "appKey"

    const-string v2, "length should be between 5-10 characters"

    .line 2265
    invoke-static {v1, p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 2267
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 2270
    :cond_1
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fa

    const-string v2, "Init Fail - appKey is missing"

    invoke-direct {p1, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 2271
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x80

    .line 2317
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "dynamicUserId"

    const-string v0, "SupersonicAds"

    const-string v1, "dynamicUserId is invalid, should be between 1-128 chars in length."

    .line 2318
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2280
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "male"

    .line 2282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "female"

    .line 2283
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 2284
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "gender"

    const-string v0, "SupersonicAds"

    const-string v1, "gender value should be one of male/female/unknown."

    .line 2285
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "gender"

    const-string v0, "SupersonicAds"

    const-string v1, "gender value should be one of male/female/unknown."

    .line 2288
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2308
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x40

    if-le p1, v0, :cond_0

    const-string p1, "segment"

    const-string v0, "SupersonicAds"

    const-string v1, "segment value should not exceed 64 characters."

    .line 2309
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "segment"

    const-string v0, "SupersonicAds"

    const-string v1, "segment value should not exceed 64 characters."

    .line 2312
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .locals 2

    .line 768
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerIteration()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerSession()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method declared-synchronized addOWAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0

    monitor-enter p0

    .line 873
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 872
    monitor-exit p0

    throw p1
.end method

.method public clearRewardedVideoServerParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 1308
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    return-void
.end method

.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 4

    .line 1929
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    .line 1931
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "createBanner() : Activity cannot be null"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    .line 1934
    :cond_0
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 4

    .line 2000
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2003
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2007
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2360
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 2361
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 2362
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public declared-synchronized getAge()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 1109
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAllSettingsForProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2571
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-nez v0, :cond_0

    .line 2572
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsByReflectionName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 2547
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 2551
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is capped"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getConsent()Ljava/lang/Boolean;
    .locals 1

    .line 2631
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    return-object v0
.end method

.method getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 1

    .line 2559
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method declared-synchronized getDynamicUserId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1121
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGender()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1113
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 5

    .line 2337
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2338
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return-object v0
.end method

.method public declared-synchronized getIronSourceAppKey()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 2246
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIronSourceUserId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 2250
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMediationSegment()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediationType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOfferwallAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 4

    monitor-enter p0

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 880
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 884
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfferwallAdapter exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 886
    monitor-exit p0

    return-object p1

    .line 877
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getOfferwallCredits()V
    .locals 4

    const-string v0, "getOfferwallCredits()"

    .line 1883
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1886
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->getOfferwallCredits()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1888
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 5

    .line 2349
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return-object v0
.end method

.method declared-synchronized getRvServerParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 4

    .line 2018
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2020
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_0

    .line 2021
    new-instance p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p1, p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    monitor-exit v0

    return-object p1

    .line 2027
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 2030
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2031
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Null or invalid response. Trying to get cached response"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2033
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object p3

    :cond_2
    if-eqz p3, :cond_3

    .line 2040
    iput-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2041
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 2042
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 2046
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setHasServerResponse(Z)V

    .line 2047
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setHasServerResponse(Z)V

    .line 2048
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized getSessionId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 2597
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 7

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p4, :cond_4

    .line 191
    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    array-length v0, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    aget-object v4, p4, v3

    .line 202
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 208
    :cond_1
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 212
    :cond_2
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_4
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 194
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 196
    :cond_5
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 197
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 198
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init(appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_7

    .line 221
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Init Fail - provided activity is null"

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 225
    :cond_7
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 226
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->prepareEventManagers(Landroid/app/Activity;)V

    .line 229
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 231
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 244
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    if-eqz v0, :cond_9

    .line 245
    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_8

    .line 248
    :try_start_2
    array-length v0, p4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_8

    aget-object v4, p4, v3

    .line 249
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_8
    const-string v0, "sessionDepth"

    .line 252
    iget v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 254
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :goto_5
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0xe

    invoke-direct {v0, v2, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 258
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    .line 261
    :cond_9
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 262
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 265
    :cond_a
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 266
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_6

    .line 233
    :cond_b
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatusFailed()V

    .line 234
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 235
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    .line 236
    :cond_c
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 237
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 239
    :cond_d
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :cond_e
    if-eqz p4, :cond_f

    .line 269
    :try_start_4
    invoke-direct {p0, p3, p4}, Lcom/ironsource/mediationsdk/IronSourceObject;->attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_6

    .line 271
    :cond_f
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Multiple calls to init without ad units are not allowed"

    const/4 p4, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 10

    monitor-enter p0

    .line 276
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    if-nez p3, :cond_0

    .line 278
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Cannot initialized demand only mode: No ad units selected"

    invoke-virtual {p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    array-length v2, p3

    if-gtz v2, :cond_1

    .line 283
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Cannot initialized demand only mode: No ad units selected"

    invoke-virtual {p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 287
    :cond_1
    :try_start_2
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_8

    aget-object v5, p3, v3

    .line 288
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 293
    :cond_2
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 294
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-eqz v6, :cond_3

    .line 295
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ad unit has already been initialized"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_1

    .line 297
    :cond_3
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 298
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    .line 299
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 300
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_4
    :goto_1
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 306
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    if-eqz v6, :cond_5

    .line 307
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ad unit has already been initialized"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_3

    .line 309
    :cond_5
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 310
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    .line 311
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 312
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 289
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ad unit cannot be initialized in demand only mode"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 318
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_9

    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 320
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 321
    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 275
    monitor-exit p0

    throw p1
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method isBannerPlacementCapped(Ljava/lang/String;)Z
    .locals 6

    .line 2428
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2429
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2434
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    .line 2437
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    .line 2440
    :try_start_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Banner default placement was not found"

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2445
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object p1, v0

    :cond_2
    if-nez p1, :cond_3

    return v1

    .line 2452
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public declared-synchronized isDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 1760
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->isInterstitialReady(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 1398
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .locals 4

    .line 2381
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2385
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    .line 2388
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v2, "placement"

    .line 2390
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2392
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz p1, :cond_2

    const-string p1, "programmatic"

    .line 2393
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    :catch_0
    :cond_2
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x837

    invoke-direct {p1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2399
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :cond_3
    return v1
.end method

.method public isInterstitialReady()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1636
    :try_start_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v2, :cond_0

    .line 1637
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v1

    .line 1641
    :cond_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz v2, :cond_2

    .line 1642
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->isInterstitialReady()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1644
    :cond_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->isInterstitialReady()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1647
    :goto_1
    :try_start_1
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    invoke-static {v1, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZ)Lorg/json/JSONObject;

    move-result-object v3

    .line 1648
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    if-eqz v2, :cond_3

    const/16 v5, 0x835

    goto :goto_2

    :cond_3
    const/16 v5, 0x836

    :goto_2
    invoke-direct {v4, v5, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1649
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1651
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInterstitialReady():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    const/4 v2, 0x0

    .line 1654
    :goto_3
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInterstitialReady():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1655
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "isInterstitialReady()"

    invoke-virtual {v0, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return v1
.end method

.method public isOfferwallAvailable()Z
    .locals 2

    const/4 v0, 0x0

    .line 1871
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    if-eqz v1, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->isOfferwallAvailable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public isRewardedVideoAvailable()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1248
    :try_start_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v2, :cond_0

    .line 1249
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v1

    .line 1253
    :cond_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v2, :cond_2

    .line 1254
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->isRewardedVideoAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1259
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 1261
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v4, :cond_3

    .line 1262
    new-array v4, v0, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "programmatic"

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v5, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    .line 1265
    :cond_3
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    if-eqz v2, :cond_4

    const/16 v5, 0x44d

    goto :goto_1

    :cond_4
    const/16 v5, 0x44e

    :goto_1
    invoke-direct {v4, v5, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1266
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1267
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRewardedVideoAvailable():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v2

    const/4 v2, 0x0

    .line 1270
    :goto_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1271
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "isRewardedVideoAvailable()"

    invoke-virtual {v0, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v1
.end method

.method isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .locals 2

    .line 2407
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2410
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2422
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(ZLjava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 1

    const-string v0, ""

    .line 1996
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .locals 4

    .line 1938
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBanner("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    .line 1941
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "loadBanner can\'t be called with a null parameter"

    invoke-virtual {p1, p2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1945
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 1946
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "init() must be called before loadBanner()"

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1950
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1951
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1952
    :cond_2
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "loadBanner: Unsupported banner size. Height and width must be bigger than 0"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1953
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    const-string v0, ""

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1958
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    .line 1960
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v2, :cond_4

    .line 1961
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "init() had failed"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1962
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x258

    const-string v2, "Init() had failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1966
    :cond_4
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v2, :cond_6

    .line 1967
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1968
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "init() had failed"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1969
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x259

    const-string v2, "Init had failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1971
    :cond_5
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 1972
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 1973
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    :goto_0
    return-void

    .line 1979
    :cond_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1980
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-nez v2, :cond_7

    .line 1981
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 1982
    monitor-exit v0

    return-void

    .line 1984
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 1992
    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    return-void

    .line 1987
    :cond_9
    :goto_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "No banner configurations found"

    invoke-virtual {p2, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1988
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x267

    const-string v2, "No banner configurations found"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1984
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized loadDemandOnlyInterstitial(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1678
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1fe

    .line 1681
    :try_start_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    const/4 v2, 0x3

    if-nez v1, :cond_0

    const-string v1, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"

    .line 1683
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1684
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1685
    monitor-exit p0

    return-void

    .line 1688
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-nez v1, :cond_1

    const-string v1, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"

    .line 1690
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1691
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1692
    monitor-exit p0

    return-void

    .line 1695
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 1697
    sget-object v3, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v3, :cond_2

    .line 1698
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1699
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    const-string v2, "init() had failed"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1700
    monitor-exit p0

    return-void

    .line 1703
    :cond_2
    :try_start_4
    sget-object v3, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v3, :cond_4

    .line 1704
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1705
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1706
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    const-string v2, "init() had failed"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1708
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1711
    :goto_0
    monitor-exit p0

    return-void

    .line 1715
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1716
    :try_start_6
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-nez v3, :cond_5

    .line 1717
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1718
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 1720
    :cond_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1722
    :try_start_8
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 1728
    :cond_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitial(Ljava/lang/String;)V

    goto :goto_2

    .line 1723
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "No interstitial configurations found"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1724
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    const-string v2, "the server response does not contain interstitial data"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1725
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    .line 1720
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_0
    move-exception v1

    .line 1731
    :try_start_b
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "loadDemandOnlyInterstitial"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1732
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1734
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 1677
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1314
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyRewardedVideo() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1317
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    const/16 v1, 0x1fc

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const-string v0, "initISDemandOnly() must be called before loadISDemandOnlyRewardedVideo()"

    .line 1319
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1320
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1321
    monitor-exit p0

    return-void

    .line 1324
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-nez v0, :cond_1

    const-string v0, "Rewarded video was initialized in mediation mode"

    .line 1326
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1327
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1328
    monitor-exit p0

    return-void

    .line 1331
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    .line 1333
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v1, :cond_2

    .line 1334
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "init() had failed"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1335
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "init() had failed"

    const-string v2, "Rewarded Video"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1336
    monitor-exit p0

    return-void

    .line 1339
    :cond_2
    :try_start_4
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v1, :cond_4

    .line 1340
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1341
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "init() had failed"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1342
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "init() had failed"

    const-string v2, "Rewarded Video"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1344
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1347
    :goto_0
    monitor-exit p0

    return-void

    .line 1351
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1352
    :try_start_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-nez v1, :cond_5

    .line 1353
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1354
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 1356
    :cond_5
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1358
    :try_start_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 1364
    :cond_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideo(Ljava/lang/String;)V

    goto :goto_2

    .line 1359
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "No rewarded video configurations found"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1360
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "the server response does not contain rewarded video data"

    const-string v2, "Rewarded Video"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 1356
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_0
    move-exception v0

    .line 1367
    :try_start_b
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "loadISDemandOnlyRewardedVideo"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1368
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fe

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1370
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 1313
    monitor-exit p0

    throw p1
.end method

.method public loadInterstitial()V
    .locals 5

    const-string v0, "loadInterstitial()"

    .line 1444
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1447
    :try_start_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    const-string v1, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead"

    .line 1449
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1450
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    const-string v3, "Interstitial"

    invoke-static {v1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1454
    :cond_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-nez v1, :cond_1

    const-string v1, "init() must be called before loadInterstitial()"

    .line 1456
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1457
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    const-string v3, "Interstitial"

    invoke-static {v1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1461
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 1463
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_2

    .line 1464
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1465
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    const-string v2, "init() had failed"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1469
    :cond_2
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_4

    .line 1470
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1471
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1472
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    const-string v2, "init() had failed"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1474
    :cond_3
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    :goto_0
    return-void

    .line 1480
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 1486
    :cond_5
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-nez v1, :cond_6

    .line 1487
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V

    return-void

    .line 1491
    :cond_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-nez v1, :cond_7

    .line 1495
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    goto :goto_2

    .line 1497
    :cond_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadInterstitial()V

    goto :goto_2

    .line 1481
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "No interstitial configurations found"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1482
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    const-string v2, "the server response does not contain interstitial data"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1501
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1502
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fe

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_2
    return-void
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .locals 4

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitFailed(reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 776
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz p1, :cond_0

    .line 777
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 778
    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 782
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation

    .line 427
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 429
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "onInitSuccess()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string v1, "init success"

    .line 430
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 434
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "revived"

    .line 436
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 438
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 440
    :goto_0
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x72

    invoke-direct {v0, v2, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 441
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 445
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->triggerEventsSend()V

    .line 446
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->triggerEventsSend()V

    .line 447
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->setInitParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    array-length v0, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 452
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_2

    .line 458
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onPause()"

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 959
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onPause(Landroid/app/Activity;)V

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->onPause(Landroid/app/Activity;)V

    .line 965
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v1, :cond_2

    .line 966
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/BannerManager;->onPause(Landroid/app/Activity;)V

    .line 968
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    if-eqz v1, :cond_3

    .line 969
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->onPause(Landroid/app/Activity;)V

    .line 972
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v1, :cond_4

    .line 973
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->onPause(Landroid/app/Activity;)V

    .line 976
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-eqz v1, :cond_5

    .line 977
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->onPause(Landroid/app/Activity;)V

    .line 980
    :cond_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-eqz v1, :cond_6

    .line 981
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 985
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onResume()"

    .line 919
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 920
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 922
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onResume(Landroid/app/Activity;)V

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->onResume(Landroid/app/Activity;)V

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v1, :cond_2

    .line 929
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/BannerManager;->onResume(Landroid/app/Activity;)V

    .line 931
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    if-eqz v1, :cond_3

    .line 932
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->onResume(Landroid/app/Activity;)V

    .line 935
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v1, :cond_4

    .line 936
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->onResume(Landroid/app/Activity;)V

    .line 939
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-eqz v1, :cond_5

    .line 940
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->onResume(Landroid/app/Activity;)V

    .line 943
    :cond_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-eqz v1, :cond_6

    .line 944
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 948
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onStillInProgressAfter15Secs()V
    .locals 7

    .line 788
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 790
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 791
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x25b

    const-string v6, "init had failed"

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v1, 0x0

    .line 792
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 793
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 795
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 797
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_1

    .line 798
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsLoadBeforeInitCompleted:Z

    .line 799
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    const-string v1, "init() had failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 803
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 804
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v3

    const-string v4, "init() had failed"

    const-string v5, "Interstitial"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 807
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 809
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0

    .line 810
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 811
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v3

    const-string v4, "init() had failed"

    const-string v5, "Rewarded Video"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    .line 813
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 814
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 807
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 795
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public removeInterstitialListener()V
    .locals 4

    const-string v0, "removeInterstitialListener()"

    .line 2228
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2230
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method public removeOfferwallListener()V
    .locals 4

    const-string v0, "removeOfferwallListener()"

    .line 2236
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2238
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public removeRewardedVideoListener()V
    .locals 4

    const-string v0, "removeRewardedVideoListener()"

    .line 2220
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2222
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public sendInitCompletedEvent(J)V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 176
    :goto_1
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "duration"

    .line 179
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "sessionDepth"

    .line 180
    iget p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    :goto_2
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 p2, 0x202

    invoke-direct {p1, p2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 186
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public setAdaptersDebug(Z)V
    .locals 1

    .line 1081
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setAdaptersDebug(Z)V

    return-void
.end method

.method public declared-synchronized setAge(I)V
    .locals 5

    monitor-enter p0

    .line 992
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setAge(age:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 995
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 997
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 999
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;

    goto :goto_0

    .line 1002
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1004
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setAge(age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    :goto_0
    monitor-exit p0

    return-void

    .line 991
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setConsent(Z)V
    .locals 5

    .line 2601
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 2602
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConsent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2604
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setConsent(Z)V

    .line 2607
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 2608
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offerwall | setConsent(consent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2609
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    .line 2612
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-eqz v0, :cond_1

    .line 2613
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->setConsent(Z)V

    .line 2616
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-eqz v0, :cond_2

    .line 2617
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->setConsent(Z)V

    :cond_2
    const/16 v0, 0x28

    if-nez p1, :cond_3

    const/16 v0, 0x29

    :cond_3
    const/4 p1, 0x0

    .line 2625
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 2626
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2627
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1058
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1061
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1063
    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1065
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    return v4

    .line 1069
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1074
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public declared-synchronized setGender(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1011
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setGender(gender:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1014
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1016
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1018
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;

    goto :goto_0

    .line 1021
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1023
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setGender(gender:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    :goto_0
    monitor-exit p0

    return-void

    .line 1010
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V
    .locals 1

    .line 1764
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    return-void
.end method

.method setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V
    .locals 1

    .line 1402
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setInterstitialListener(ISListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 1667
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setInterstitialListener(ISListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1670
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 1671
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 1672
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method declared-synchronized setIronSourceUserId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 2242
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2241
    monitor-exit p0

    throw p1
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1907
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 1909
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 1910
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLogListener(LogListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 5

    .line 1030
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setMediationSegment(segment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1033
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1035
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1037
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    goto :goto_0

    .line 1040
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1042
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setMediationSegment(segment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMediationType(Ljava/lang/String;)V
    .locals 5

    .line 1088
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setMediationType(mediationType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v0, 0x40

    .line 1092
    invoke-direct {p0, p1, v3, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length"

    .line 1097
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1101
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setMediationType(mediationType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1895
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setOfferwallListener(OWListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 1897
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setOfferwallListener(OWListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1900
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setRewardedVideoListener(RVListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setRewardedVideoListener(RVListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1287
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 1288
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public setRewardedVideoServerParameters(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1294
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setRewardedVideoServerParameters(params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1302
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setRewardedVideoServerParameters(params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 3

    .line 1047
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v0, v1, :cond_1

    .line 1048
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1052
    :cond_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    goto :goto_1

    .line 1050
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "Segments must be set prior to Init. Setting a segment after the init will be ignored"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .locals 1

    .line 2563
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 2565
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    :cond_0
    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 1

    .line 2372
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v0, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public showDemandOnlyInterstitial(Ljava/lang/String;)V
    .locals 4

    .line 1737
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showISDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1740
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Interstitial was initialized in mediation mode. Use showInterstitial instead"

    invoke-virtual {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-nez v0, :cond_1

    const-string v0, "Interstitial video was not initiated"

    .line 1747
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1748
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fc

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1752
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->showInterstitial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1754
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showISDemandOnlyInterstitial"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1755
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized showDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showISDemandOnlyRewardedVideo() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    const/16 v1, 0x1fc

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const-string v0, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"

    .line 1378
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1379
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1380
    monitor-exit p0

    return-void

    .line 1383
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-nez v0, :cond_1

    const-string v0, "Rewarded video was not initiated"

    .line 1385
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1386
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1387
    monitor-exit p0

    return-void

    .line 1390
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1392
    :try_start_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showISDemandOnlyRewardedVideo"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1393
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fe

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1395
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1372
    monitor-exit p0

    throw p1
.end method

.method public showInterstitial()V
    .locals 6

    const-string v0, "showInterstitial()"

    .line 1509
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v1, 0x1fe

    .line 1512
    :try_start_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v2, :cond_0

    const-string v2, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    .line 1514
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1515
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1519
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1520
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v3, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1524
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1526
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 1527
    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 1529
    :cond_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x3fc

    const-string v5, "showInterstitial error: empty default placement in response"

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1532
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1533
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 5

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1540
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v1, 0x1fe

    .line 1543
    :try_start_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v2, :cond_0

    const-string p1, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    .line 1545
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1546
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1550
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1551
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v2, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v3, "Interstitial"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1555
    :cond_1
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsIsProgrammatic:Z

    if-eqz v2, :cond_2

    .line 1556
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showProgrammaticInterstitial(Ljava/lang/String;)V

    return-void

    .line 1560
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    const/4 v3, 0x0

    .line 1562
    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    :try_start_1
    const-string p1, "placement"

    .line 1565
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 1566
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "placement"

    .line 1567
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1570
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1573
    :cond_4
    :goto_1
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x834

    invoke-direct {p1, v4, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1574
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    if-eqz v2, :cond_5

    .line 1577
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 1578
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1582
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1583
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public showOfferwall()V
    .locals 4

    const-string v0, "showOfferwall()"

    .line 1817
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1819
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1820
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v2, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v3, "Offerwall"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1824
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1826
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 1827
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1830
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1831
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v2, "Offerwall"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 4

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showOfferwall("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1838
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1840
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1841
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v2, "Offerwall"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1845
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 1848
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1851
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 1854
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1859
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/OfferwallManager;->showOfferwall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1861
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1862
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v0, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v1, "Offerwall"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public showRewardedVideo()V
    .locals 4

    .line 1151
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const-string v0, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    .line 1153
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v3, "Rewarded Video"

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1154
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1158
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "showRewardedVideo error: empty default placement in response"

    .line 1162
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1163
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x3fd

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1166
    :cond_1
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 4

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRewardedVideo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1215
    :try_start_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v1, :cond_0

    const-string p1, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead"

    .line 1217
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1218
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v2, "Rewarded Video"

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1222
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1223
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v1, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v2, "Rewarded Video"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1227
    :cond_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/ProgRvManager;

    if-eqz v1, :cond_2

    .line 1228
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showProgrammaticRewardedVideo(Ljava/lang/String;)V

    return-void

    .line 1232
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1234
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 1235
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1238
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1239
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fe

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_3
    :goto_0
    return-void
.end method
