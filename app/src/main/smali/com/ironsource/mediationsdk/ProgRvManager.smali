.class Lcom/ironsource/mediationsdk/ProgRvManager;
.super Ljava/lang/Object;
.source "ProgRvManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/ProgRvManagerListener;
.implements Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionStartTime:J

.field private mAuctionTrial:I

.field private mCurrentAuctionId:Ljava/lang/String;

.field private mCurrentPlacement:Ljava/lang/String;

.field private mIsAuctionEnabled:Z

.field private mIsShowingVideo:Z

.field private mLastChangedAvailabilityTime:J

.field private mLastReportedAvailabilityState:Ljava/lang/Boolean;

.field private mMaxSmashesToLoad:I

.field private mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

.field private mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field private mSessionDepth:I

.field private final mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/ProgRvSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

.field private mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgRvSmash;",
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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x1

    .line 49
    iput v9, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    const-string v0, ""

    .line 57
    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const v0, 0x13da0

    .line 63
    invoke-direct {v8, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 64
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_INITIATING:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {v8, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mAppContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 66
    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 67
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v0

    iput v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mMaxSmashesToLoad:I

    const-string v0, ""

    .line 68
    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    .line 69
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v12

    const/4 v13, 0x0

    .line 70
    iput-boolean v13, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastChangedAvailabilityTime:J

    .line 76
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    .line 77
    iget-boolean v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string v1, "rewardedVideo"

    invoke-direct {v0, v1, v12, v8}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 80
    :cond_1
    new-instance v0, Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-direct {v0, v12, v8}, Lcom/ironsource/mediationsdk/RvLoadTrigger;-><init>(Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 83
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v15, p1

    invoke-virtual {v0, v4, v1, v15}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 84
    invoke-static {}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->getInstance()Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->isAdapterVersionRVCompatible(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    new-instance v6, Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v16

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p0

    move-object/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/ProgRvSmash;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/ProgRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 86
    iget-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 90
    :cond_3
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 91
    iget-object v0, v8, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 92
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->initForBidding()V

    goto :goto_2

    .line 97
    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v10

    const v2, 0x13da1

    .line 98
    new-array v3, v9, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v13

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object v4, v3, v13

    invoke-direct {v8, v2, v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadRewardedVideo(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ProgRvManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/ProgRvManager;I[[Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/ProgRvManager;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/ProgRvManager;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    return p0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgRvManager;Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    return-void
.end method

.method static synthetic access$302(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ironsource/mediationsdk/ProgRvManager;J)J
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionStartTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ProgRvManager;I[[Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/ProgRvManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/ProgRvManager;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    return-void
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

    .line 317
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v2, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 319
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .locals 2

    .line 331
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    .line 332
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

.method private handleLoadFailure()V
    .locals 1

    .line 392
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 394
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    return-void
.end method

.method private loadRewardedVideo(J)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->areAllSmashesCapped()Z

    move-result v0

    const v1, 0x13c69

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 107
    new-array p1, v4, [[Ljava/lang/Object;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v3

    const v0, 0x13881

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    aput-object p2, p1, v3

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v3

    const-string v0, "all smashes are capped"

    aput-object v0, p2, v2

    aput-object p2, p1, v2

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/mediationsdk/ProgRvManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ProgRvManager$1;-><init>(Lcom/ironsource/mediationsdk/ProgRvManager;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateWaterfallToNonBidding()V

    .line 123
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    new-array p1, v4, [[Ljava/lang/Object;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v3

    const v0, 0x13882

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    aput-object p2, p1, v3

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v3

    const-string v0, "waterfall is empty"

    aput-object v0, p2, v2

    aput-object p2, p1, v2

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    return-void

    :cond_2
    const/16 p1, 0x3e8

    .line 129
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 130
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashes()V

    :goto_0
    return-void
.end method

.method private loadSmashes()V
    .locals 10

    .line 367
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x13c69

    const/4 v3, 0x2

    .line 370
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v2

    const v6, 0x13884

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    aput-object v5, v4, v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v3, v2

    const-string v2, "waterfall is empty"

    aput-object v2, v3, v7

    aput-object v3, v4, v7

    invoke-direct {p0, v1, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 371
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    .line 372
    monitor-exit v0

    return-void

    .line 375
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v1, 0x0

    .line 378
    :goto_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mMaxSmashesToLoad:I

    if-ge v1, v3, :cond_2

    .line 379
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 380
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getIsLoadCandidate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v5

    .line 382
    iget-object v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    iget v7, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    iget-object v8, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    iget v9, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual/range {v4 .. v9}, Lcom/ironsource/mediationsdk/ProgRvSmash;->loadVideo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
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

.method private logAPIError(Ljava/lang/String;)V
    .locals 3

    .line 591
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logApi(Ljava/lang/String;)V
    .locals 3

    .line 597
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logErrorInternal(Ljava/lang/String;)V
    .locals 4

    .line 584
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgRvManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 4

    .line 578
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgRvManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V
    .locals 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgRvManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private makeAuction()V
    .locals 1

    .line 253
    new-instance v0, Lcom/ironsource/mediationsdk/ProgRvManager$2;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/ProgRvManager$2;-><init>(Lcom/ironsource/mediationsdk/ProgRvManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reportAvailabilityIfNeeded(Z)V
    .locals 8

    .line 554
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 555
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 556
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastChangedAvailabilityTime:J

    sub-long/2addr v0, v2

    .line 557
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastChangedAvailabilityTime:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    const/16 v5, 0x457

    .line 560
    new-array v6, v4, [[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object v2, v6, v3

    invoke-direct {p0, v5, v6}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x458

    .line 562
    new-array v6, v4, [[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object v2, v6, v3

    invoke-direct {p0, v5, v6}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 564
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_2
    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 615
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;ZZ)V
    .locals 5

    .line 633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 634
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    const/4 v2, 0x1

    .line 635
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 637
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "auctionId"

    .line 638
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 641
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "placement"

    .line 642
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 646
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    iget p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p3, v0, p4, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_2
    const-string p3, "sessionDepth"

    .line 649
    iget p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 653
    :try_start_0
    array-length p3, p2

    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    aget-object v3, p2, v1

    .line 654
    aget-object v4, v3, p4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v3, v3, v2

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 658
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgRvManager: RV sendMediationEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p3, p4, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 661
    :cond_3
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 662
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I)V
    .locals 2

    const/4 v0, 0x0

    .line 621
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 627
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(I)V
    .locals 2

    const/4 v0, 0x0

    .line 609
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 401
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    return-void
.end method

.method private shouldAddAuctionParams(I)Z
    .locals 1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x516

    if-eq p1, v0, :cond_1

    const/16 v0, 0x515

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

.method private showVideo(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-string v0, "showVideo()"

    .line 202
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/ProgSmash;)V

    .line 204
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setCappedPerSession()V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rewarded video is now session capped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementRvShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x578

    .line 211
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 214
    :cond_1
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->showVideo(Lcom/ironsource/mediationsdk/model/Placement;I)V

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

    .line 338
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 340
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
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

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/ProgRvSmash;

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setIsLoadCandidate(Z)V

    .line 349
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v2, 0x100

    if-le p1, v2, :cond_2

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    const/16 p1, 0x51f

    .line 360
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

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 361
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

    .line 310
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateWaterfall(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 4

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 225
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isReadyToShow()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 226
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 229
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v1

    .line 229
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 221
    :cond_3
    :goto_0
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    .line 219
    monitor-exit p0

    throw v0
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 5

    const-string v0, "Auction failed | moving to fallback waterfall"

    .line 700
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 702
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    .line 703
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    .line 704
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 p4, 0x515

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 705
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

    invoke-direct {p0, p4, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 707
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

    invoke-direct {p0, p4, p3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    .line 710
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateWaterfallToNonBidding()V

    .line 711
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashes()V

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

    const-string v0, "makeAuction(): success"

    .line 685
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 686
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 687
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    const-string p2, ""

    .line 688
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    const/4 p2, 0x1

    .line 689
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

    const/16 p2, 0x516

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateWaterfall(Ljava/util/List;)V

    .line 691
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashes()V

    return-void
.end method

.method public declared-synchronized onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "onLoadError "

    .line 432
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    const v1, 0x13da3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, v0, :cond_0

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLoadError was invoked at the wrong manager state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logErrorInternal(Ljava/lang/String;)V

    .line 435
    new-array p1, v2, [[Ljava/lang/Object;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v4

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    aput-object p2, p1, v4

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadError in state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    aput-object p2, p1, v3

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 436
    monitor-exit p0

    return-void

    .line 439
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadError was invoked with auctionId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 441
    new-array p1, v2, [[Ljava/lang/Object;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v4

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    aput-object p2, p1, v4

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadError wrong auction ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    aput-object p2, p1, v3

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    monitor-exit p0

    return-void

    .line 445
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    :try_start_3
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 449
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getIsLoadCandidate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 451
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v6

    .line 452
    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    iget v8, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    iget-object v9, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    iget v10, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual/range {v5 .. v10}, Lcom/ironsource/mediationsdk/ProgRvSmash;->loadVideo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 453
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 455
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isLoadingInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    .line 457
    :cond_4
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isReadyToShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    const-string p2, "onLoadError(): No other available smashes"

    .line 463
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 465
    sget-object p2, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 466
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    .line 468
    :cond_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 469
    monitor-exit p0

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
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 431
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLoadSuccess(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "onLoadSuccess "

    .line 409
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    const v1, 0x13da3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, v0, :cond_0

    .line 411
    new-array p1, v3, [[Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v2

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSuccess in state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v4

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 412
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLoadSuccess was invoked at the wrong manager state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logErrorInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadSuccess was invoked with auctionId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 418
    new-array p1, v3, [[Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v2

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p2, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSuccess wrong auction ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v4

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    .line 422
    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 423
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, p2, :cond_2

    .line 424
    sget-object p1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 425
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionStartTime:J

    const/4 v5, 0x0

    sub-long/2addr p1, v0

    const/16 v0, 0x3eb

    .line 426
    new-array v1, v4, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v3, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 408
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLoadTriggered()V
    .locals 2

    monitor-enter p0

    .line 677
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadTriggered: RV load was triggered in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 678
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadRewardedVideo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 676
    monitor-exit p0

    throw v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 246
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 238
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 1

    const-string v0, "onRewardedVideoAdClicked"

    .line 547
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .locals 2

    .line 507
    monitor-enter p0

    .line 508
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdClosed, mediation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClosed()V

    const/4 p1, 0x0

    .line 510
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 511
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq v0, v1, :cond_0

    .line 512
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showEnd()V

    .line 516
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .locals 1

    const-string v0, "onRewardedVideoAdEnded"

    .line 531
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdEnded()V

    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .locals 2

    .line 476
    monitor-enter p0

    .line 477
    :try_start_0
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    const-string v0, "onRewardedVideoAdOpened"

    .line 478
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdOpened()V

    .line 480
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 483
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

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 1

    const-string v0, "onRewardedVideoAdRewarded"

    .line 539
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .locals 6

    .line 490
    monitor-enter p0

    .line 491
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    const/16 p2, 0x459

    const/4 v0, 0x2

    .line 492
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v0, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    invoke-direct {p0, p2, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 494
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 495
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 496
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, p2, :cond_0

    .line 497
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V

    .line 500
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .locals 1

    const-string v0, "onRewardedVideoAdStarted"

    .line 523
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public declared-synchronized showRewardedVideo(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x2

    const/16 v1, 0x459

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "showRewardedVideo error: empty default placement"

    .line 140
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 141
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3fd

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 143
    new-array p1, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object v0, p1, v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showRewardedVideo() placement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->logApi(Ljava/lang/String;)V

    const/16 v4, 0x44c

    .line 149
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 151
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    if-eqz v4, :cond_1

    const-string p1, "showRewardedVideo error: can\'t show ad while an ad is already showing"

    .line 153
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 154
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3fe

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 156
    new-array p1, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object v0, p1, v2

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v5, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq v4, v5, :cond_2

    const-string p1, "showRewardedVideo error: show called while no ads are available"

    .line 162
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 163
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3ff

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 165
    new-array p1, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object v0, p1, v2

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 169
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRewardedVideo error: placement "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is capped"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 172
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x20c

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 174
    new-array p1, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object v0, p1, v2

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :try_start_5
    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 180
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isReadyToShow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 181
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 182
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual {v6, v3, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->reportShowChance(ZI)V

    .line 183
    invoke-direct {p0, v6, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->showVideo(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 184
    sget-object p1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 185
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showStart()V

    .line 186
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    .line 188
    :cond_4
    :try_start_6
    iget v7, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual {v6, v2, v7}, Lcom/ironsource/mediationsdk/ProgRvSmash;->reportShowChance(ZI)V

    goto :goto_0

    .line 191
    :cond_5
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string p1, "showRewardedVideo(): No ads to show "

    .line 193
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logApi(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    const-string v4, "Rewarded Video"

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 195
    new-array p1, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v0, v2

    const/16 v4, 0x1fd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object v0, p1, v2

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 191
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 137
    :goto_1
    monitor-exit p0

    throw p1
.end method
