.class Lcom/ironsource/mediationsdk/ProgIsManager;
.super Ljava/lang/Object;
.source "ProgIsManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/ProgIsManagerListener;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionTrial:I

.field private mCurrentAuctionId:Ljava/lang/String;

.field private mCurrentPlacement:Ljava/lang/String;

.field private mInitMangerTime:J

.field private mIsAuctionEnabled:Z

.field private mLoadStartTime:J

.field private mMaxSmashesToLoad:I

.field private mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field private final mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/ProgIsSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

.field private mTimeToWaitBeforeFirstAction:J

.field private mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgIsSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 56
    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const v0, 0x14188

    .line 61
    invoke-direct {v8, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I)V

    .line 62
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_NOT_INITIALIZED:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {v8, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 66
    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    const-string v0, ""

    .line 67
    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mAppContext:Landroid/content/Context;

    .line 70
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v0

    iput v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    .line 72
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setDelayLoadFailureNotificationInSeconds(I)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mTimeToWaitBeforeFirstAction:J

    .line 76
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    .line 77
    iget-boolean v1, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string v2, "interstitial"

    invoke-direct {v1, v2, v0, v8}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object v1, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 81
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 82
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v14, p1

    invoke-virtual {v0, v4, v1, v14}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 83
    invoke-static {}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->getInstance()Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->isAdapterVersionISCompatible(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    new-instance v15, Lcom/ironsource/mediationsdk/ProgIsSmash;

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v6

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/ProgIsSmash;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/ProgIsManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 85
    iget-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_3
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 91
    iget-object v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 92
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->initForBidding()V

    goto :goto_2

    .line 97
    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/ironsource/mediationsdk/ProgIsManager;->mInitMangerTime:J

    .line 98
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {v8, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 99
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v9

    const v2, 0x14189

    .line 100
    new-array v3, v12, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v12

    aput-object v4, v3, v11

    invoke-direct {v8, v2, v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ProgIsManager;Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    return-void
.end method

.method static synthetic access$102(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgIsManager;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mInitMangerTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ProgIsManager;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mTimeToWaitBeforeFirstAction:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgIsManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ProgIsManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/ProgIsManager;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private extractNonBidderProvidersFromWaterfall()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 227
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .locals 2

    .line 239
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    .line 240
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadSmashes()V
    .locals 9

    .line 273
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 276
    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    const/16 v1, 0x83e

    const/4 v3, 0x2

    .line 277
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v2

    const/16 v6, 0x40b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    aput-object v5, v4, v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v3, v2

    const-string v2, "Empty waterfall"

    aput-object v2, v3, v8

    aput-object v3, v4, v8

    invoke-direct {p0, v1, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v3, "Empty waterfall"

    invoke-direct {v2, v6, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 279
    monitor-exit v0

    return-void

    .line 282
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 284
    :goto_0
    iget v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 286
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7d2

    .line 287
    invoke-direct {p0, v4, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 288
    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/ProgIsSmash;->loadInterstitial(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logAPIError(Ljava/lang/String;)V
    .locals 3

    .line 565
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 4

    .line 571
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgIsManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 558
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private makeAuction()V
    .locals 1

    .line 122
    new-instance v0, Lcom/ironsource/mediationsdk/ProgIsManager$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManager$1;-><init>(Lcom/ironsource/mediationsdk/ProgIsManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMediationEvent(I)V
    .locals 2

    const/4 v0, 0x0

    .line 577
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 583
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;Z)V
    .locals 6

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 602
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    const/4 v2, 0x1

    .line 603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auctionId"

    .line 607
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 610
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "placement"

    .line 611
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 615
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p3

    iget v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 620
    :try_start_0
    array-length p3, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    aget-object v4, p2, v3

    .line 621
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v2

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 625
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediationEvent "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 628
    :cond_3
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 629
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I)V
    .locals 2

    const/4 v0, 0x0

    .line 595
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 589
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    const/4 v0, 0x0

    .line 651
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 657
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V
    .locals 5

    .line 675
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object p2

    .line 677
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auctionId"

    .line 678
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    .line 681
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "placement"

    .line 682
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldAddAuctionParams(I)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 686
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p4

    iget v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p4, p2, v0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 691
    :try_start_0
    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_3

    aget-object v2, p3, v1

    .line 692
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 696
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS sendProviderEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    invoke-virtual {p4, v0, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 699
    :cond_3
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, p1, p4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 700
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    const/4 v0, 0x0

    .line 669
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 663
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V
    .locals 2

    .line 550
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method private shouldAddAuctionParams(I)Z
    .locals 1

    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x898

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x89c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x899

    if-eq p1, v0, :cond_1

    const/16 v0, 0x89b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x83e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8fd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8fc

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private showInterstitial(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .locals 1

    .line 386
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 387
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->showInterstitial()V

    const/16 v0, 0x899

    .line 388
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 390
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/ProgSmash;)V

    .line 391
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setCappedPerSession()V

    const/16 v0, 0x961

    .line 393
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was session capped"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAppContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementIsShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAppContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x960

    .line 399
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I)V

    :cond_1
    return-void
.end method

.method private updateWaterfall(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 248
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/ProgIsSmash;

    if-eqz v4, :cond_0

    .line 254
    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setIsLoadCandidate(Z)V

    .line 255
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v2, 0x100

    if-le p1, v2, :cond_2

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    const/16 p1, 0x907

    .line 266
    new-array v2, v3, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ext1"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    aput-object v4, v2, v6

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateWaterfallToNonBidding()V
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfall(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isInterstitialReady()Z
    .locals 4

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 412
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 413
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 416
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    .line 416
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 407
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    .line 405
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadInterstitial()V
    .locals 4

    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v0, v1, :cond_0

    const-string v0, "loadInterstitial: load cannot be invoked while showing an ad"

    .line 298
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 299
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x40d

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->hasPendingInvocation()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "loadInterstitial: load is already in progress"

    .line 305
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string v0, ""

    .line 309
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    const-string v0, ""

    .line 310
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    const/16 v0, 0x7d1

    .line 311
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I)V

    .line 312
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mLoadStartTime:J

    .line 314
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_4

    .line 315
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V

    goto :goto_0

    .line 317
    :cond_4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfallToNonBidding()V

    .line 318
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 295
    monitor-exit p0

    throw v0
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 5

    const-string v0, "Auction failed | moving to fallback waterfall"

    .line 200
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 202
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    .line 203
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    .line 204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 p4, 0x8fc

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 205
    new-array p2, v2, [[Ljava/lang/Object;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, p3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    aput-object p3, p2, v1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p3, "duration"

    aput-object p3, p1, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v0

    aput-object p1, p2, v0

    invoke-direct {p0, p4, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 207
    new-array p3, p3, [[Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    aput-object v3, p3, v1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, p1, v1

    aput-object p2, p1, v0

    aput-object p1, p3, v0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "duration"

    aput-object p2, p1, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    aput-object p1, p3, v2

    invoke-direct {p0, p4, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfallToNonBidding()V

    .line 211
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V

    return-void
.end method

.method public onAuctionSuccess(Ljava/util/List;Ljava/lang/String;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .line 190
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 191
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    const-string p2, ""

    .line 192
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    const/4 p2, 0x1

    .line 193
    new-array p3, p2, [[Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "duration"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v0, p2

    aput-object v0, p3, v2

    const/16 p2, 0x8fd

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfall(Ljava/util/List;)V

    .line 195
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V

    return-void
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 1

    const-string v0, "onInterstitialAdClicked"

    .line 525
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdClicked()V

    const/16 v0, 0x7d6

    .line 527
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 1

    .line 491
    monitor-enter p0

    :try_start_0
    const-string v0, "onInterstitialAdClosed"

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x89c

    .line 493
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 494
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdClosed()V

    .line 495
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 496
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;J)V
    .locals 7

    .line 442
    monitor-enter p0

    .line 443
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x898

    const/4 v1, 0x3

    .line 444
    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    aput-object v3, v1, v6

    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "duration"

    aput-object v3, p1, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v6

    aput-object p1, v1, v2

    invoke-direct {p0, v0, p2, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    .line 446
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-eq p1, p2, :cond_0

    .line 447
    monitor-exit p0

    return-void

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 452
    :try_start_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 453
    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getIsLoadCandidate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x7d2

    .line 455
    invoke-direct {p0, p3, p4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 456
    invoke-virtual {p4, p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->loadInterstitial(Ljava/lang/String;)V

    .line 457
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 458
    :cond_2
    :try_start_3
    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isLoadingInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    .line 463
    :cond_3
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object p4, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne p2, p4, :cond_4

    if-nez p3, :cond_4

    .line 464
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p2

    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p4, "No ads to show"

    const/16 v0, 0x1fd

    invoke-direct {p3, v0, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/16 p2, 0x83e

    .line 465
    new-array p3, v6, [[Ljava/lang/Object;

    new-array p4, v2, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, p4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v6

    aput-object p4, p3, v5

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 466
    sget-object p2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 468
    :cond_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 468
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2

    :catchall_1
    move-exception p1

    .line 469
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 2

    .line 476
    monitor-enter p0

    :try_start_0
    const-string v0, "onInterstitialAdOpened"

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdOpened()V

    const/16 v0, 0x7d5

    .line 479
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 480
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 484
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInterstitialAdReady(Lcom/ironsource/mediationsdk/ProgIsSmash;J)V
    .locals 7

    .line 425
    monitor-enter p0

    :try_start_0
    const-string v0, "onInterstitialAdReady"

    .line 426
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x7d3

    const/4 v1, 0x1

    .line 427
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "duration"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, v1

    aput-object v4, v2, v6

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    .line 429
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne p1, p2, :cond_0

    .line 430
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 431
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdReady()V

    .line 432
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mLoadStartTime:J

    const/4 p3, 0x0

    sub-long/2addr p1, v4

    const/16 p3, 0x7d4

    .line 433
    new-array v0, v1, [[Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "duration"

    aput-object v3, v2, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    aput-object v2, v0, v6

    invoke-direct {p0, p3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 435
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 7

    .line 512
    monitor-enter p0

    .line 513
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/16 v0, 0x89b

    const/4 v1, 0x2

    .line 515
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v1, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object v1, v2, v6

    invoke-direct {p0, v0, p2, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    .line 517
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 518
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 1

    const-string v0, "onInterstitialAdShowSucceeded"

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowSucceeded()V

    const/16 v0, 0x89a

    .line 505
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdVisible(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 1

    const-string v0, "onInterstitialAdVisible"

    .line 534
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 5

    const/4 v0, 0x1

    .line 539
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    aput-object v2, v1, v4

    const/16 p1, 0x89e

    invoke-direct {p0, p1, p2, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method public onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .locals 1

    const/16 v0, 0x89d

    .line 544
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 115
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 107
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized showInterstitial(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    const/4 v2, 0x2

    const/16 v3, 0x83f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "showInterstitial error: can\'t show ad while an ad is already showing"

    .line 329
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 330
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x40c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 332
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object v0, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    monitor-exit p0

    return-void

    .line 336
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    const/16 v6, 0x1fd

    if-eq v0, v1, :cond_1

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showInterstitial() error state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    const-string p1, "showInterstitial error: show called while no ads are available"

    .line 340
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 343
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object v0, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    monitor-exit p0

    return-void

    :cond_1
    if-nez p1, :cond_2

    :try_start_2
    const-string p1, "showInterstitial error: empty default placement"

    .line 349
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3fc

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 352
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object v0, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    monitor-exit p0

    return-void

    .line 356
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    const/16 p1, 0x834

    .line 357
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I)V

    .line 359
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is capped"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x20c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 364
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object v0, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 365
    monitor-exit p0

    return-void

    .line 368
    :cond_3
    :try_start_4
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 369
    :try_start_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 370
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 371
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->showInterstitial(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 372
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 374
    :cond_4
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showInterstitial "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isReadyToShow() == false"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    :try_start_7
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    const-string v0, "Interstitial"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 380
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object v0, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 377
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    .line 326
    monitor-exit p0

    throw p1
.end method
