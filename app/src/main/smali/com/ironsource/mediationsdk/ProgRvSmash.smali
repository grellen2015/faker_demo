.class public Lcom/ironsource/mediationsdk/ProgRvSmash;
.super Lcom/ironsource/mediationsdk/ProgSmash;
.source "ProgRvSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;
    }
.end annotation


# static fields
.field private static final errorCode_adClosed:I = 0x1391

.field private static final errorCode_biddingDataException:I = 0x1389

.field private static final errorCode_initFailed:I = 0x1390

.field private static final errorCode_initSuccess:I = 0x138f

.field private static final errorCode_isReadyException:I = 0x138a

.field private static final errorCode_loadException:I = 0x138d

.field private static final errorCode_loadInProgress:I = 0x138b

.field private static final errorCode_showFailed:I = 0x138e

.field private static final errorCode_showInProgress:I = 0x138c


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionFallbackToLoad:Ljava/lang/String;

.field private mAuctionIdToLoad:Ljava/lang/String;

.field private mAuctionServerDataToLoad:Ljava/lang/String;

.field private mAuctionTrial:I

.field private mAuctionTrialToLoad:I

.field private mCurrentAuctionId:Ljava/lang/String;

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field private mIsShowCandidate:Z

.field private mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

.field private mLoadStartTime:J

.field private mLoadTimeoutSecs:I

.field private mSessionDepth:I

.field private mSessionDepthToLoad:I

.field private mShouldLoadAfterClose:Z

.field private mShouldLoadAfterLoad:Z

.field private mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

.field private final mStateLock:Ljava/lang/Object;

.field private mTimer:Ljava/util/Timer;

.field private final mTimerLock:Ljava/lang/Object;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/ProgRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 2

    .line 73
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0, p7}, Lcom/ironsource/mediationsdk/ProgSmash;-><init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 56
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimerLock:Ljava/lang/Object;

    .line 57
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    .line 74
    sget-object p4, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    .line 75
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mActivity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAppKey:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mUserId:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimer:Ljava/util/Timer;

    .line 80
    iput p6, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mLoadTimeoutSecs:I

    .line 81
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    const/4 p2, 0x0

    .line 82
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterClose:Z

    .line 83
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterLoad:Z

    .line 84
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mIsShowCandidate:Z

    .line 85
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    const-string p1, ""

    .line 86
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 87
    iput p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepth:I

    .line 88
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->resetAuctionParams()V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ProgRvSmash;I[[Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvManagerListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    return-object p0
.end method

.method private getElapsedTime()J
    .locals 4

    .line 529
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private logAdapterCallback(Ljava/lang/String;)V
    .locals 3

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgRvSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 582
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 3

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgRvSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternalError(Ljava/lang/String;)V
    .locals 3

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgRvSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private resetAuctionParams()V
    .locals 1

    const-string v0, ""

    .line 95
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionIdToLoad:Ljava/lang/String;

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionTrialToLoad:I

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionFallbackToLoad:Ljava/lang/String;

    const-string v0, ""

    .line 98
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionServerDataToLoad:Ljava/lang/String;

    .line 99
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepth:I

    iput v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepthToLoad:I

    return-void
.end method

.method private sendProviderEvent(I)V
    .locals 2

    const/4 v0, 0x0

    .line 614
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 620
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(I[[Ljava/lang/Object;Z)V
    .locals 6

    .line 626
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auctionId"

    .line 629
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 632
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "placement"

    .line 633
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 637
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    iget v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionTrial:I

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_2
    const-string p3, "sessionDepth"

    .line 640
    iget v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 644
    :try_start_0
    array-length p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_3

    aget-object v3, p2, v2

    .line 645
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 649
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " smash: RV sendMediationEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {p3, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 652
    :cond_3
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 653
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEventWithPlacement(I)V
    .locals 1

    const/4 v0, 0x0

    .line 602
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 608
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private setCustomParams()V
    .locals 3

    .line 284
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAge(I)V

    .line 289
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V

    .line 294
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 299
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomParams() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    .line 277
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private shouldAddAuctionParams(I)Z
    .locals 1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4b0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4b3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4b1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4b2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f2

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

.method private startLoadTimer()V
    .locals 5

    .line 547
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->stopLoadTimer()V

    .line 549
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimer:Ljava/util/Timer;

    .line 550
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/ironsource/mediationsdk/ProgRvSmash$1;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/ProgRvSmash$1;-><init>(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    iget v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mLoadTimeoutSecs:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 575
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopLoadTimer()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 521
    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mTimer:Ljava/util/Timer;

    .line 523
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateFutureAuctionData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 536
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionIdToLoad:Ljava/lang/String;

    .line 537
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionServerDataToLoad:Ljava/lang/String;

    .line 538
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionTrialToLoad:I

    .line 539
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionFallbackToLoad:Ljava/lang/String;

    .line 540
    iput p5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepthToLoad:I

    return-void
.end method


# virtual methods
.method public getBiddingData()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRvBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBiddingData exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const v2, 0x13da4

    const/4 v3, 0x2

    .line 122
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "errorCode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/16 v6, 0x1389

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v3, v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    aput-object v3, v4, v8

    invoke-direct {p0, v2, v4}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-object v0
.end method

.method public initForBidding()V
    .locals 7

    const-string v0, "initForBidding()"

    .line 130
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    .line 132
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setCustomParams()V

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAppKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRvForBidding(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initForBidding exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x410

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public isLoadingInProgress()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

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

.method public isReadyToBid()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadyToShow()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mIsShowCandidate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReadyToShow exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const v3, 0x13da4

    const/4 v4, 0x2

    .line 163
    new-array v5, v4, [[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v1

    const/16 v7, 0x138a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v4, v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    aput-object v4, v5, v0

    invoke-direct {p0, v3, v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return v1
.end method

.method public loadVideo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 12

    move-object v7, p0

    move-object v0, p2

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideo() auctionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 174
    invoke-virtual {p0, v8}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setIsLoadCandidate(Z)V

    const/4 v9, 0x1

    .line 175
    iput-boolean v9, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mIsShowCandidate:Z

    .line 182
    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v2, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    .line 184
    iget-object v3, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v4, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v3, v4, :cond_0

    iget-object v3, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v4, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v3, v4, :cond_0

    .line 185
    sget-object v3, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    .line 187
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    const v10, 0x13da4

    const/4 v11, 0x2

    if-ne v2, v1, :cond_1

    .line 190
    new-array v1, v11, [[Ljava/lang/Object;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, v2, v8

    const/16 v3, 0x138b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v8

    const-string v3, "load during load"

    aput-object v3, v2, v9

    aput-object v2, v1, v9

    invoke-direct {p0, v10, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 191
    iput-boolean v9, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterLoad:Z

    .line 192
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->updateFutureAuctionData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 193
    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    invoke-interface {v1, p0, p2}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_1
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v2, v1, :cond_2

    .line 198
    new-array v1, v11, [[Ljava/lang/Object;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, v2, v8

    const/16 v3, 0x138c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v8

    const-string v3, "load during show"

    aput-object v3, v2, v9

    aput-object v2, v1, v9

    invoke-direct {p0, v10, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 199
    iput-boolean v9, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterClose:Z

    .line 200
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->updateFutureAuctionData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 204
    :cond_2
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    move v0, p3

    .line 205
    iput v0, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionTrial:I

    move-object/from16 v0, p4

    .line 206
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionFallback:Ljava/lang/String;

    move/from16 v0, p5

    .line 207
    iput v0, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepth:I

    .line 209
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->startLoadTimer()V

    .line 210
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mLoadStartTime:J

    const/16 v0, 0x3e9

    .line 211
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I)V

    .line 214
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    move-object v2, p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_3
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v2, v0, :cond_4

    .line 220
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setCustomParams()V

    .line 221
    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mActivity:Landroid/app/Activity;

    iget-object v3, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAppKey:Ljava/lang/String;

    iget-object v4, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mUserId:Ljava/lang/String;

    iget-object v5, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    return-void

    .line 225
    :cond_4
    iget-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->fetchRewardedVideo(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideo exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    new-array v1, v11, [[Ljava/lang/Object;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, v2, v8

    const/16 v3, 0x138d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    aput-object v2, v1, v9

    invoke-direct {p0, v10, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 187
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onRewardedVideoAdClicked()V
    .locals 2

    const-string v0, "onRewardedVideoAdClicked"

    .line 510
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v0, p0, v1}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    const/16 v0, 0x3ee

    .line 512
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 10

    const-string v0, "onRewardedVideoAdClosed"

    .line 449
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    const/16 v0, 0x4b3

    .line 450
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I)V

    .line 452
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const v1, 0x13da4

    const/4 v2, 0x2

    .line 454
    new-array v4, v2, [[Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v3

    const/16 v6, 0x1391

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    aput-object v5, v4, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adClosed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v4, v7

    invoke-direct {p0, v1, v4}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 455
    monitor-exit v0

    return-void

    .line 457
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    .line 458
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    .line 462
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterClose:Z

    if-eqz v0, :cond_1

    const-string v0, "onRewardedVideoAdClosed and mShouldLoadAfterClose is true - calling loadVideo"

    .line 463
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 464
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterClose:Z

    .line 465
    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionServerDataToLoad:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionIdToLoad:Ljava/lang/String;

    iget v7, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionTrialToLoad:I

    iget-object v8, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionFallbackToLoad:Ljava/lang/String;

    iget v9, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepthToLoad:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/ironsource/mediationsdk/ProgRvSmash;->loadVideo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 466
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->resetAuctionParams()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 458
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onRewardedVideoAdEnded()V
    .locals 1

    const-string v0, "onRewardedVideoAdEnded"

    .line 474
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    const/16 v0, 0x4b5

    .line 476
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 1

    const-string v0, "onRewardedVideoAdOpened"

    .line 423
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    const/16 v0, 0x3ed

    .line 425
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdRewarded()V
    .locals 9

    const-string v0, "onRewardedVideoAdRewarded"

    .line 483
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-interface {v0, p0, v1}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 487
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "placement"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "rewardName"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "rewardAmount"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    new-array v3, v1, [Ljava/lang/Object;

    const-string v6, "transId"

    aput-object v6, v3, v4

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "dynamicUserId"

    aput-object v3, v2, v4

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 499
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 500
    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x3f2

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 7

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 369
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

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    const/16 v2, 0x4b2

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 371
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v2, v3, :cond_0

    const p1, 0x13da4

    .line 373
    new-array v2, v0, [[Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v3, v4

    const/16 v6, 0x138e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object v3, v2, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 374
    monitor-exit v1

    return-void

    .line 376
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    .line 377
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    return-void

    :catchall_0
    move-exception p1

    .line 377
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRewardedVideoAdStarted()V
    .locals 1

    const-string v0, "onRewardedVideoAdStarted"

    .line 432
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    const/16 v0, 0x4b4

    .line 434
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAdVisible()V
    .locals 1

    const-string v0, "onRewardedVideoAdVisible"

    .line 441
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    const/16 v0, 0x4b6

    .line 442
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I)V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 7

    .line 314
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->stopLoadTimer()V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAvailabilityChanged available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 321
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    :goto_0
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 325
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x4b7

    .line 329
    new-array v1, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ext1"

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object v0, v1, v4

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x4b8

    const/4 v1, 0x3

    .line 331
    new-array v1, v1, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v2, v4

    const/16 v5, 0x40a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v2, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    const/16 v1, 0x3ea

    goto :goto_3

    :cond_4
    const/16 v1, 0x4b0

    .line 336
    :goto_3
    new-array v2, v3, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v0, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v3

    aput-object v0, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 338
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterLoad:Z

    if-eqz v0, :cond_5

    .line 339
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mShouldLoadAfterLoad:Z

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAvailabilityChanged to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "and mShouldLoadAfterLoad is true - calling loadVideo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionServerDataToLoad:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionIdToLoad:Ljava/lang/String;

    iget v3, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionTrialToLoad:I

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAuctionFallbackToLoad:Ljava/lang/String;

    iget v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepthToLoad:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->loadVideo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 342
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->resetAuctionParams()V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 347
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onLoadSuccess(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    goto :goto_4

    .line 349
    :cond_6
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    .line 325
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 8

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoInitFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->stopLoadTimer()V

    const/4 v0, 0x2

    .line 406
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x409

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "duration"

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    const/16 v2, 0x4b0

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 407
    new-array v1, v1, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object v2, v1, v5

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, p1, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v5

    aput-object p1, v1, v0

    const/16 p1, 0x4bc

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 409
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v1, v2, :cond_0

    const v1, 0x13da4

    .line 411
    new-array v2, v0, [[Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v3, v4

    const/16 v6, 0x1390

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object v3, v2, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 412
    monitor-exit p1

    return-void

    .line 414
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    .line 415
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mListener:Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentAuctionId:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 415
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 8

    const-string v0, "onRewardedVideoInitSuccess"

    .line 387
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-eq v1, v2, :cond_0

    const v1, 0x13da4

    const/4 v2, 0x2

    .line 391
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x138f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSuccess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mState:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    aput-object v2, v3, v7

    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 392
    monitor-exit v0

    return-void

    .line 394
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    .line 395
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 6

    const/4 v0, 0x3

    .line 361
    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object v2, v0, v5

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, p1, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getElapsedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v5

    aput-object p1, v0, v1

    const/16 p1, 0x4bc

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardedVideoLoadSuccess()V
    .locals 0

    return-void
.end method

.method public reportShowChance(ZI)V
    .locals 4

    .line 239
    iput p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepth:I

    const/4 p2, 0x1

    .line 240
    new-array v0, p2, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "status"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    aput-object p1, v1, p2

    aput-object v1, v0, v3

    const/16 p1, 0x4b9

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    return-void
.end method

.method public setCappedPerSession()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v2, "rewardedvideo"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V

    const/16 v0, 0x579

    .line 267
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I)V

    return-void
.end method

.method public showVideo(Lcom/ironsource/mediationsdk/model/Placement;I)V
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->stopLoadTimer()V

    const-string v0, "showVideo()"

    .line 247
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternal(Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 249
    iput p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mSessionDepth:I

    .line 250
    sget-object p1, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setState(Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    const/16 p1, 0x4b1

    .line 251
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I)V

    .line 254
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showVideo exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->logInternalError(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x40e

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public unloadVideo()V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash;->mIsShowCandidate:Z

    :cond_0
    return-void
.end method
