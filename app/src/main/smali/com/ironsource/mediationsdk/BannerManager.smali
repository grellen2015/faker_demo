.class public Lcom/ironsource/mediationsdk/BannerManager;
.super Ljava/lang/Object;
.source "BannerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;
    }
.end annotation


# instance fields
.field private mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

.field mDidImplementOnPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mDidImplementOnResume:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mIsInForeground:Ljava/lang/Boolean;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mReloadInterval:J

.field private mReloadTimer:Ljava/util/Timer;

.field private final mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/BannerSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 56
    sget-object v0, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInForeground:Ljava/lang/Boolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidImplementOnPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidImplementOnResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-object p3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mAppKey:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mUserId:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    int-to-long p2, p7

    .line 64
    iput-wide p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReloadInterval:J

    .line 65
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->setDelayLoadFailureNotificationInSeconds(I)V

    const/4 p2, 0x0

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 69
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object p3

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object p4

    iget-object p7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, v2, p4, p7}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-static {}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->getInstance()Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->isBannerAdapterCompatible(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 72
    new-instance p3, Lcom/ironsource/mediationsdk/BannerSmash;

    add-int/lit8 v6, p2, 0x1

    move-object v0, p3

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/BannerSmash;-><init>(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;JI)V

    .line 73
    iget-object p4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p4, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " can\'t load adapter or wrong version"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/BannerManager;->debugLog(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 80
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/BannerManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->onReloadTimer()V

    return-void
.end method

.method private addEventSizeFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 6

    const/4 v0, 0x3

    .line 331
    :try_start_0
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "BANNER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v3, "SMART"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "LARGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "RECTANGLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "bannerAdSize"

    const/4 v2, 0x6

    .line 349
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "custom_banner_size"

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_1
    const-string p2, "bannerAdSize"

    const/4 v1, 0x5

    .line 345
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_2
    const-string p2, "bannerAdSize"

    .line 341
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_3
    const-string p2, "bannerAdSize"

    .line 337
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_4
    const-string p2, "bannerAdSize"

    .line 333
    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 354
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendProviderEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_4
        0x44dc31b -> :sswitch_3
        0x4b59da9 -> :sswitch_2
        0x7458732c -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bindView(Lcom/ironsource/mediationsdk/BannerSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    .line 164
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method private callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BannerManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BannerManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BannerManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private loadNextSmash()Z
    .locals 6

    .line 391
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/BannerSmash;

    .line 393
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/BannerSmash;->isReadyToLoad()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eq v3, v2, :cond_0

    .line 394
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->FIRST_LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-ne v1, v3, :cond_1

    const/16 v1, 0xbba

    .line 395
    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xbc4

    .line 398
    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mAppKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ironsource/mediationsdk/BannerSmash;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 401
    monitor-exit v0

    return v1

    :cond_2
    const/4 v1, 0x0

    .line 404
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 405
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onReloadTimer()V
    .locals 6

    .line 450
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->RELOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-eq v0, v1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReloadTimer wrong state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->debugLog(Ljava/lang/String;)V

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInForeground:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbc3

    .line 456
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    const/16 v0, 0xbc4

    .line 457
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    .line 458
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->reloadBanner()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc80

    const/4 v1, 0x1

    .line 460
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x266

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 461
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startReloadTimer()V

    :goto_0
    return-void
.end method

.method private resetIteration()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/BannerSmash;

    const/4 v3, 0x1

    .line 385
    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/BannerSmash;->setReadyToLoad(Z)V

    goto :goto_0

    .line 387
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

.method private sendMediationEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 298
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 302
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/BannerManager;->addEventSizeFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    if-eqz v2, :cond_1

    const-string v2, "placement"

    .line 309
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p2, :cond_2

    .line 313
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 314
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

    .line 318
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMediationEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, p2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 321
    :cond_2
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 322
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;[[Ljava/lang/Object;)V
    .locals 6

    .line 359
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/BannerSmash;)Lorg/json/JSONObject;

    move-result-object p2

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/BannerManager;->addEventSizeFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    if-eqz v0, :cond_1

    const-string v0, "placement"

    .line 366
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p3, :cond_2

    .line 370
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    .line 371
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

    .line 375
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendProviderEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 378
    :cond_2
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p3, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 379
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V
    .locals 2

    .line 153
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private startReloadTimer()V
    .locals 6

    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->stopReloadTimer()V

    .line 430
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReloadTimer:Ljava/util/Timer;

    .line 431
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReloadTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/BannerManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BannerManager$1;-><init>(Lcom/ironsource/mediationsdk/BannerManager;)V

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReloadInterval:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private stopReloadTimer()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReloadTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 120
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner banner cannot be null"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 124
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner is already destroyed and can\'t be used anymore. Please create a new one using IronSource.createBanner API"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :cond_1
    const/16 v0, 0xc1c

    .line 129
    :try_start_2
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 130
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->stopReloadTimer()V

    .line 131
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->destroyBanner()V

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 133
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eqz v0, :cond_2

    const/16 v0, 0xce9

    .line 136
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    .line 137
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->destroyBanner()V

    .line 138
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActiveSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    .line 141
    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 118
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .locals 8

    monitor-enter p0

    const/16 v0, 0xc27

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v5, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->hasPendingInvocation()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    sget-object v4, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->FIRST_LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V

    .line 91
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 92
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    const/16 v4, 0xbb9

    .line 93
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 95
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v4

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placement "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is capped"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v6, 0x25c

    invoke-direct {v5, v6, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, p1, v5}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 97
    new-array p2, v2, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, p2, v3

    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 98
    sget-object p2, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/BannerSmash;

    .line 104
    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/BannerSmash;->setReadyToLoad(Z)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/BannerSmash;

    const/16 v5, 0xbba

    .line 108
    invoke-direct {p0, v5, v4}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    .line 109
    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mAppKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/ironsource/mediationsdk/BannerSmash;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4

    .line 86
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "A banner is already loaded"

    const/4 v6, 0x3

    invoke-virtual {p2, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 112
    :try_start_4
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v4

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBanner() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x25d

    invoke-direct {v5, v7, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, p1, v5}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 113
    new-array p1, v1, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, p1, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v1, v3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    aput-object v1, p1, v2

    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 114
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    :goto_2
    monitor-exit p0

    return-void

    .line 84
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public onBannerAdClicked(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .locals 1

    const-string v0, "onBannerAdClicked"

    .line 267
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    const/16 v0, 0xc28

    .line 268
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 269
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdClicked()V

    const/16 v0, 0xbc0

    .line 270
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    return-void
.end method

.method public onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .locals 2

    const-string v0, "onBannerAdLeftApplication"

    .line 291
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    const/4 v0, 0x0

    .line 292
    check-cast v0, [[Ljava/lang/Object;

    const/16 v1, 0xc2b

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 293
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdLeftApplication()V

    const/16 v1, 0xce8

    .line 294
    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V
    .locals 6

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerAdLoadFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 196
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->FIRST_LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-eq v0, v1, :cond_0

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBannerAdLoadFailed "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " wrong state="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    const/16 p1, 0xcea

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_0

    :cond_1
    const/16 p3, 0xce4

    .line 205
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    aput-object v4, v3, v1

    invoke-direct {p0, p3, p2, v3}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;[[Ljava/lang/Object;)V

    .line 208
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->loadNextSmash()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 212
    :cond_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->FIRST_LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-ne p1, p2, :cond_3

    .line 213
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v3, "No ads to show"

    const/16 v4, 0x25e

    invoke-direct {p3, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/16 p1, 0xc27

    .line 214
    new-array p2, v2, [[Ljava/lang/Object;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v2

    aput-object p3, p2, v1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 215
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V

    goto :goto_1

    :cond_3
    const/16 p1, 0xc81

    .line 217
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 218
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->RELOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V

    .line 219
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startReloadTimer()V

    :goto_1
    return-void
.end method

.method public onBannerAdLoaded(Lcom/ironsource/mediationsdk/BannerSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    const-string v0, "onBannerAdLoaded"

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->FIRST_LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-ne v0, v1, :cond_1

    const/16 v0, 0xbbd

    .line 172
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/BannerManager;->bindView(Lcom/ironsource/mediationsdk/BannerSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 174
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementBnShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xd48

    .line 176
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdLoaded(Lcom/ironsource/mediationsdk/BannerSmash;)V

    const/16 p1, 0xc26

    .line 180
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 182
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->RELOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V

    .line 183
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startReloadTimer()V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-ne v0, v1, :cond_2

    const/16 v0, 0xbc7

    .line 186
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/BannerManager;->bindView(Lcom/ironsource/mediationsdk/BannerSmash;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 188
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->RELOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V

    .line 189
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startReloadTimer()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;Z)V
    .locals 5

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerAdReloadFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 240
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->RELOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-eq v0, v1, :cond_0

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBannerAdReloadFailed "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " wrong state="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const/16 p1, 0xceb

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_0

    :cond_1
    const/16 p3, 0xce5

    .line 249
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    aput-object v2, v1, v4

    invoke-direct {p0, p3, p2, v1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;[[Ljava/lang/Object;)V

    .line 252
    :goto_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p1

    .line 253
    :try_start_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-ne p2, v0, :cond_2

    const/16 p2, 0xc81

    .line 254
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 255
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startReloadTimer()V

    .line 256
    monitor-exit p1

    return-void

    .line 258
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    sget-object p1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setState(Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;)V

    .line 261
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->resetIteration()V

    .line 262
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->loadNextSmash()Z

    return-void

    :catchall_0
    move-exception p2

    .line 258
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onBannerAdReloaded(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .locals 2

    const-string v0, "onBannerAdReloaded"

    .line 225
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 227
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->RELOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    if-eq v0, v1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerAdReloaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " wrong state="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mState:Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerManager$BANNER_STATE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "bannerReloadSucceeded"

    .line 232
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    const/16 v0, 0xbc7

    .line 233
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    .line 234
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startReloadTimer()V

    return-void
.end method

.method public onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .locals 1

    const-string v0, "onBannerAdScreenDismissed"

    .line 275
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    const/16 v0, 0xc2a

    .line 276
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 277
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdScreenDismissed()V

    const/16 v0, 0xce7

    .line 278
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    return-void
.end method

.method public onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .locals 1

    const-string v0, "onBannerAdScreenPresented"

    .line 283
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->callbackLog(Ljava/lang/String;Lcom/ironsource/mediationsdk/BannerSmash;)V

    const/16 v0, 0xc29

    .line 284
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationEvent(I)V

    .line 285
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIronsourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdScreenPresented()V

    const/16 v0, 0xce6

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/BannerSmash;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 410
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInForeground:Ljava/lang/Boolean;

    .line 411
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/BannerSmash;

    .line 412
    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 414
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 419
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInForeground:Ljava/lang/Boolean;

    .line 420
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/BannerSmash;

    .line 421
    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/BannerSmash;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 423
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
