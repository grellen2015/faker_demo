.class public Lcom/ironsource/mediationsdk/ProgIsSmash;
.super Lcom/ironsource/mediationsdk/ProgSmash;
.source "ProgIsSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

.field private mLoadStartTime:J

.field private mLoadTimeoutSecs:I

.field private mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

.field private mTimer:Ljava/util/Timer;

.field private final mTimerLock:Ljava/lang/Object;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/ProgIsManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0, p7}, Lcom/ironsource/mediationsdk/ProgSmash;-><init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 33
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimerLock:Ljava/lang/Object;

    .line 39
    sget-object p4, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    .line 41
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAppKey:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mUserId:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    .line 47
    iput p6, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadTimeoutSecs:I

    .line 48
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ProgIsSmash;)Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgIsSmash;Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ProgIsSmash;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgIsSmash;)Lcom/ironsource/mediationsdk/ProgIsManagerListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    return-object p0
.end method

.method private logAdapterCallback(Ljava/lang/String;)V
    .locals 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternalError(Ljava/lang/String;)V
    .locals 3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsSmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private setCustomParams()V
    .locals 3

    .line 166
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAge(I)V

    .line 171
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V

    .line 176
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V

    .line 181
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

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

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomParams() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    return-void
.end method

.method private startTimer()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "start timer"

    .line 339
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 342
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    .line 343
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/ironsource/mediationsdk/ProgIsSmash$1;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/ProgIsSmash$1;-><init>(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    iget v3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadTimeoutSecs:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 356
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopTimer()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 330
    iput-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mTimer:Ljava/util/Timer;

    .line 332
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


# virtual methods
.method public getBiddingData()Ljava/util/Map;
    .locals 4
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

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getIsBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBiddingData exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public initForBidding()V
    .locals 7

    const-string v0, "initForBidding()"

    .line 75
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 77
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setCustomParams()V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAppKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitialForBidding(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "loadInterstitial exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x411

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public isLoadingInProgress()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

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

    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_SUCCESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

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

.method public isReadyToShow()Z
    .locals 3

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyToShow exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public loadInterstitial(Ljava/lang/String;)V
    .locals 6

    .line 92
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    const-string v0, "loadInterstitial"

    .line 93
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternal(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setIsLoadCandidate(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 98
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 99
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-ne p1, v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 105
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 106
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setCustomParams()V

    .line 107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAppKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    return-void

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 112
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 113
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadInterstitial exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 1

    const-string v0, "onInterstitialAdClicked"

    .line 312
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdClicked(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    const-string v0, "onInterstitialAdClosed"

    .line 288
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdClosed(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 267
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 272
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 273
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;J)V

    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 1

    const-string v0, "onInterstitialAdOpened"

    .line 280
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdOpened(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdReady state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 251
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 255
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 256
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 257
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdReady(Lcom/ironsource/mediationsdk/ProgIsSmash;J)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 1

    const-string v0, "onInterstitialAdShowSucceeded"

    .line 296
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdVisible()V
    .locals 1

    const-string v0, "onInterstitialAdVisible"

    .line 320
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdVisible(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialInitFailed error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 234
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->NO_INIT:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 236
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 238
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mLoadStartTime:J

    sub-long/2addr v0, v2

    .line 240
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v2, p1, p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;J)V

    :cond_1
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialInitSuccess state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logAdapterCallback(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mState:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->stopTimer()V

    .line 203
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->INIT_SUCCESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setState(Lcom/ironsource/mediationsdk/ProgIsSmash$SMASH_STATE;)V

    .line 208
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->startTimer()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialInitSuccess exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public setCappedPerSession()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v2, "interstitial"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "showInterstitial exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->logInternalError(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsSmash;->mListener:Lcom/ironsource/mediationsdk/ProgIsManagerListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x40f

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, p0}, Lcom/ironsource/mediationsdk/ProgIsManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    :goto_0
    return-void
.end method
