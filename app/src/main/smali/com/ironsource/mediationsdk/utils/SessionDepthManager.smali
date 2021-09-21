.class public Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
.super Ljava/lang/Object;
.source "SessionDepthManager.java"


# static fields
.field public static final BANNER:I = 0x3

.field public static final INTERSTITIAL:I = 0x2

.field public static final NONE:I = -0x1

.field public static final OFFERWALL:I = 0x0

.field public static final REWARDEDVIDEO:I = 0x1

.field private static mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;


# instance fields
.field private mBannerDepth:I

.field private mInterstitialDepth:I

.field private mOfferwallDepth:I

.field private mRewardedVideoDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    .line 9
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    .line 10
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    .line 11
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    .line 26
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getSessionDepth(I)I
    .locals 0

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    .line 68
    monitor-exit p0

    return p1

    .line 65
    :pswitch_0
    :try_start_0
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 62
    :pswitch_1
    :try_start_1
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 59
    :pswitch_2
    :try_start_2
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 56
    :pswitch_3
    :try_start_3
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized increaseSessionDepth(I)V
    .locals 0

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    :try_start_0
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    goto :goto_0

    .line 40
    :pswitch_1
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    goto :goto_0

    .line 36
    :pswitch_2
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    goto :goto_0

    .line 32
    :pswitch_3
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    throw p1

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
