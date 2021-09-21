.class Lcom/ironsource/mediationsdk/RewardedVideoManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "RewardedVideoManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;
.implements Lcom/ironsource/mediationsdk/utils/DailyCappingListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field private mIsCurrentlyShowing:Z

.field private mIsUltraEventsEnabled:Z

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mLoadStartTime:J

.field private mManualLoadInterval:I

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mPauseSmartLoadDueToNetworkUnavailability:Z

.field private mShouldSendMediationLoadSuccessEvent:Z

.field private mStatesToIgnore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 64
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    .line 66
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 67
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    const/4 v1, 0x4

    .line 69
    new-array v1, v1, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v0

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mStatesToIgnore:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    const-string v1, "rewarded_video"

    invoke-direct {v0, v1, p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/DailyCappingListener;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadRewardedVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->scheduleFetchTimer()V

    return-void
.end method

.method private declared-synchronized completeAdapterCap()V
    .locals 4

    monitor-enter p0

    .line 773
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 774
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 777
    :try_start_1
    new-array v0, v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v3, v0, v1

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    monitor-exit p0

    return-void

    .line 783
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 772
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized completeIterationRound()V
    .locals 6

    monitor-enter p0

    .line 789
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Reset Iteration"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 794
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 795
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v4, v5, :cond_1

    .line 796
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->completeIteration()V

    .line 798
    :cond_1
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "End of Reset Iteration"

    invoke-virtual {v0, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 804
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 788
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasAvailableSmash()Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 719
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 725
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 715
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isAllAdaptersInactive()Z
    .locals 6

    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 690
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_1

    .line 691
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_1

    .line 692
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_1

    .line 693
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_1

    .line 694
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 687
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isAvailableAdaptersToLoad()Z
    .locals 4

    monitor-enter p0

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 704
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    .line 705
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    .line 706
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    .line 707
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    .line 708
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x1

    .line 709
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    .line 712
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 702
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isBackFillAvailable()Z
    .locals 1

    monitor-enter p0

    .line 729
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 732
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 728
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isIterationRoundComplete()Z
    .locals 4

    monitor-enter p0

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 812
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    .line 813
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_1

    .line 814
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x0

    .line 815
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x1

    .line 818
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 810
    monitor-exit p0

    throw v0
.end method

.method private loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 559
    :goto_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    if-nez v1, :cond_3

    .line 560
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 565
    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_2

    .line 566
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 569
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 563
    iget v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmartLoadAmount:I

    if-lt v2, v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-object v1
.end method

.method private declared-synchronized loadRewardedVideo()V
    .locals 7

    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x66

    .line 631
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    const/16 v0, 0x3e8

    .line 632
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    const/4 v0, 0x1

    .line 633
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 634
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 635
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    .line 637
    :try_start_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetch from timer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":reload smash"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    .line 638
    check-cast v4, [[Ljava/lang/Object;

    invoke-direct {p0, v3, v2, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 639
    move-object v3, v2

    check-cast v3, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->fetchRewardedVideo()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 642
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Failed to call fetchVideo(), "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 647
    :cond_2
    monitor-exit p0

    return-void

    .line 628
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 626
    monitor-exit p0

    throw v0
.end method

.method private logMediationEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 823
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private logMediationEvent(I[[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 827
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 831
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 832
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 836
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RewardedVideoManager logMediationEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, p2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 839
    :cond_0
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 840
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    .locals 6

    .line 844
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 848
    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 849
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 853
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RewardedVideoManager logProviderEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 856
    :cond_0
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p3, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 857
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private declared-synchronized notifyAvailabilityChange()V
    .locals 2

    monitor-enter p0

    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    if-nez v0, :cond_0

    .line 751
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    .line 752
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 748
    monitor-exit p0

    throw v0
.end method

.method private prepareSDK5()V
    .locals 4

    const/4 v0, 0x0

    .line 913
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    .line 915
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    :cond_1
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    :cond_2
    return-void
.end method

.method private reportFalseImpressionsOnHigherPriority(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 482
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mStatesToIgnore:Ljava/util/List;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized reportImpression(Ljava/lang/String;ZI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    :try_start_3
    invoke-static {v0, p2, p3}, Lcom/ironsource/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p3, p1

    move-object p1, v0

    .line 506
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportImpression:(providerURL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hit:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 510
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 495
    monitor-exit p0

    throw p1
.end method

.method private scheduleFetchTimer()V
    .locals 4

    .line 607
    iget v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mManualLoadInterval:I

    if-gtz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "load interval is not set, ignoring"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 615
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    .line 616
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;-><init>(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V

    iget v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mManualLoadInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private sendMediationLoadEvents()V
    .locals 6

    .line 876
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 877
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    const/16 v0, 0x3eb

    .line 878
    new-array v1, v2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "duration"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v3, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 879
    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    return-void

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isAvailableAdaptersToLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    .line 885
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 886
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    :cond_1
    return-void
.end method

.method private sendShowChanceEvents(Lcom/ironsource/mediationsdk/AbstractSmash;ILjava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    .line 737
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "placement"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v5, "status"

    aput-object v5, v2, v4

    const-string v5, "true"

    aput-object v5, v2, v3

    aput-object v2, v1, v3

    const/16 v2, 0x4b9

    invoke-direct {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 739
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ge p1, p2, :cond_1

    .line 740
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 741
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_0

    .line 742
    new-array v5, v0, [[Ljava/lang/Object;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "placement"

    aput-object v7, v6, v4

    aput-object p3, v6, v3

    aput-object v6, v5, v4

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "status"

    aput-object v7, v6, v4

    const-string v7, "false"

    aput-object v7, v6, v3

    aput-object v6, v5, v3

    invoke-direct {p0, v2, v1, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized shouldNotifyAvailabilityChanged(Z)Z
    .locals 3

    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->scheduleFetchTimer()V

    if-eqz p1, :cond_0

    .line 662
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_0

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isAllAdaptersInactive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 667
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 674
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 679
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->hasAvailableSmash()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 680
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 684
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 652
    monitor-exit p0

    throw p1
.end method

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 459
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->hasAvailableSmash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 462
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V
    .locals 7

    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 578
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x578

    .line 579
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "placement"

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v5, v4, v2

    invoke-direct {p0, v0, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 584
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v0, :cond_2

    .line 586
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    if-eqz v0, :cond_1

    .line 588
    move-object v0, p1

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 590
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportFalseImpressionsOnHigherPriority(II)V

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowChanceEvents(Lcom/ironsource/mediationsdk/AbstractSmash;ILjava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "mCurrentPlacement is null"

    const/4 v5, 0x3

    invoke-virtual {p2, v0, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_0
    const/16 p2, 0x4b1

    .line 597
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v0, :cond_3

    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "placement"

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    :goto_1
    invoke-direct {p0, p2, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 598
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    .line 599
    check-cast p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->showRewardedVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 576
    monitor-exit p0

    throw p1
.end method

.method private varargs smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I
    .locals 9

    .line 861
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 864
    array-length v5, p1

    move v6, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v7, p1, v3

    .line 865
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v8

    if-ne v8, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_0

    .line 871
    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 872
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 4

    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":startAdapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 537
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    iget-object v1, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    iget-object v2, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is configured in IronSource\'s platform, but the adapter is not integrated"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-object v1

    .line 544
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setAdapterForSmash(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 545
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 546
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    const/16 v2, 0x3e9

    .line 548
    check-cast v1, [[Ljava/lang/Object;

    invoke-direct {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 549
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 534
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized disablePremiumForCurrentSession()V
    .locals 3

    monitor-enter p0

    .line 521
    :try_start_0
    invoke-super {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->disablePremiumForCurrentSession()V

    .line 523
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 524
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 526
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 520
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":initRewardedVideo(appKey: "

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

    .line 85
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const v2, 0x13da0

    .line 86
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    .line 88
    iput-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 92
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->setContext(Landroid/content/Context;)V

    .line 94
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 95
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->shouldSendCapReleasedEvent(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x96

    .line 96
    new-array v6, v3, [[Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "status"

    aput-object v7, v4, p2

    const-string v7, "false"

    aput-object v7, v4, v3

    aput-object v4, v6, p2

    invoke-direct {p0, v5, v2, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ne p3, p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :cond_3
    const/16 p1, 0x3e8

    .line 110
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    .line 111
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRvPlacement(Ljava/lang/String;)V

    .line 112
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 113
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    .line 115
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 p1, 0x0

    sub-long/2addr v5, v0

    const p1, 0x13da1

    .line 116
    new-array p3, v3, [[Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "duration"

    aput-object v1, v0, p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object v0, p3, p2

    invoke-direct {p0, p1, p3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 118
    :goto_1
    iget p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmartLoadAmount:I

    if-ge p2, p1, :cond_5

    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_5

    .line 119
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 125
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 5

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":isRewardedVideoAvailable()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 204
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    monitor-exit p0

    return v1

    .line 207
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 208
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 209
    monitor-exit p0

    return v3

    .line 213
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 201
    monitor-exit p0

    throw v0
.end method

.method public onDailyCapReleased()V
    .locals 9

    .line 893
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 894
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_0

    const/16 v5, 0x96

    .line 895
    new-array v6, v4, [[Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "status"

    aput-object v8, v7, v1

    const-string v8, "false"

    aput-object v8, v7, v4

    aput-object v7, v6, v1

    invoke-direct {p0, v5, v3, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 896
    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 897
    move-object v5, v3

    check-cast v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 898
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 905
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_2
    return-void
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .locals 4

    .line 428
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Availability Changed To: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 431
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 432
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 433
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 6

    .line 399
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdClicked()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 401
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_0

    .line 402
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_1

    .line 406
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "mCurrentPlacement is null"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_1
    const/16 v0, 0x3ee

    .line 410
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "placement"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v1, v5

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 412
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 10

    .line 241
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdClosed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    .line 243
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->verifyOnPauseOnResume()V

    .line 245
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "placement"

    aput-object v4, v2, v0

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v1, v0

    const/16 v2, 0x4b3

    invoke-direct {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isCappedPerSession()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v4, 0x3e9

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    move-object v1, v2

    check-cast v1, [[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendMediationLoadEvents()V

    .line 252
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdClosed()V

    .line 254
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 255
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch on ad closed, iterating on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 256
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v6, v7, :cond_1

    .line 259
    :try_start_0
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":reload smash"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 261
    move-object v6, v5

    check-cast v6, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->fetchRewardedVideo()V

    .line 262
    move-object v6, v2

    check-cast v6, [[Ljava/lang/Object;

    invoke-direct {p0, v4, v5, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 268
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Failed to call fetchVideo(), "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdEnded()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 342
    new-array v0, v3, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "placement"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    const/16 v1, 0x4b5

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 345
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdEnded()V

    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdOpened()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 234
    new-array v0, v3, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "placement"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    const/16 v1, 0x3ed

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdOpened()V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 6

    .line 350
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdRewarded()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 352
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_0

    .line 353
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 356
    :cond_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x3

    .line 358
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v2, :cond_1

    const-string v2, "placement"

    .line 359
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rewardName"

    .line 360
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rewardAmount"

    .line 361
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "mCurrentPlacement is null"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 366
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 369
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x3f2

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 371
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transId"

    .line 375
    invoke-virtual {v2, v0, p1}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "dynamicUserId"

    .line 378
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 382
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 388
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 390
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz p1, :cond_4

    .line 391
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_2

    .line 393
    :cond_4
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "mCurrentPlacement is null"

    invoke-virtual {p1, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    const/4 v1, 0x3

    .line 224
    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "placement"

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v4, v1, v0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v4, v1, v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    aput-object v4, v1, v2

    const/16 v0, 0x4b2

    invoke-direct {p0, v0, p2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 226
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendMediationLoadEvents()V

    .line 227
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdStarted()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 334
    new-array v0, v3, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "placement"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    const/16 v1, 0x4b4

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 335
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public onRewardedVideoAdVisible(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 6

    .line 417
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdVisible()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 418
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v0, :cond_0

    const/16 v0, 0x4b6

    .line 419
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "placement"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v2, v1, v5

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "mCurrentPlacement is null"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public declared-synchronized onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 8

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 279
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 280
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 283
    :try_start_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    if-eqz v1, :cond_1

    .line 284
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 285
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    const/4 v6, 0x0

    sub-long/2addr v1, v4

    const/16 v4, 0x3eb

    .line 286
    new-array v5, v3, [[Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v6, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v5, v0

    invoke-direct {p0, v4, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :cond_2
    monitor-exit p0

    return-void

    .line 298
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 299
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is a premium adapter, canShowPremium: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 300
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v1

    if-nez v1, :cond_5

    .line 301
    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    :cond_4
    monitor-exit p0

    return-void

    .line 309
    :cond_5
    :try_start_4
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isMediationAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p1, :cond_6

    .line 311
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 315
    :cond_6
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 316
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V

    .line 318
    :cond_7
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 319
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 324
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "provider:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 277
    monitor-exit p0

    throw p1
.end method

.method setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 1

    .line 515
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 516
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRvPlacement(Ljava/lang/String;)V

    return-void
.end method

.method setIsUltraEventsEnabled(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    return-void
.end method

.method setManualLoadInterval(I)V
    .locals 0

    .line 603
    iput p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mManualLoadInterval:I

    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Should Track Network State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 441
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    .line 443
    iget-boolean p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz p2, :cond_1

    .line 444
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_0

    .line 445
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 448
    :cond_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_2

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":showRewardedVideo(placementName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRvPlacement(Ljava/lang/String;)V

    const/16 v0, 0x44c

    .line 132
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "placement"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p1, v4, v3

    aput-object v4, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 134
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    const/16 v1, 0x459

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    const-string v0, "showRewardedVideo error: can\'t show ad while an ad is already showing"

    .line 136
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v7, v0, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 137
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3fe

    invoke-direct {v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 138
    new-array v0, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "placement"

    aput-object v8, v7, v6

    aput-object p1, v7, v3

    aput-object v7, v0, v6

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    aput-object p1, v0, v3

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "showRewardedVideo error: can\'t show ad when there\'s no internet connection"

    .line 146
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v7, v0, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 147
    new-array v0, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "placement"

    aput-object v5, v4, v6

    aput-object p1, v4, v3

    aput-object v4, v0, v6

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, p1, v6

    const/16 v2, 0x208

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v3

    aput-object p1, v0, v3

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v0, "Rewarded Video"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_b

    .line 156
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 157
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showRewardedVideo, iterating on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 158
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v7, :cond_7

    .line 159
    move-object v5, v4

    check-cast v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 160
    invoke-direct {p0, v4, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V

    .line 163
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCanShowPremium:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->disablePremiumForCurrentSession()V

    .line 167
    :cond_2
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 168
    sget-object p1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    const/16 p1, 0x579

    const/4 v0, 0x0

    .line 169
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v4, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeAdapterCap()V

    goto :goto_1

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 172
    sget-object p1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    const/16 p1, 0x96

    .line 173
    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "status"

    aput-object v2, v1, v6

    const-string v2, "true"

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    invoke-direct {p0, p1, v4, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeAdapterCap()V

    goto :goto_1

    .line 175
    :cond_4
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->isExhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 176
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 177
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 183
    :cond_6
    :try_start_3
    move-object v5, v4

    check-cast v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {p0, v6, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 184
    new-instance v5, Ljava/lang/Exception;

    const-string v7, "FailedToShowVideoException"

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 185
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Failed to show video"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 187
    :cond_7
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v5, v7, :cond_9

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v7, :cond_8

    goto :goto_2

    .line 189
    :cond_8
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v4, v5, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_a
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 194
    :cond_b
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 195
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V

    goto :goto_4

    :cond_c
    add-int/2addr v0, v1

    .line 196
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ne v0, p1, :cond_d

    .line 197
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v0, "Rewarded Video"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :cond_d
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit p0

    throw p1
.end method
