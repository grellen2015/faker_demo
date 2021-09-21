.class public Lcom/ironsource/mediationsdk/utils/AuctionSettings;
.super Ljava/lang/Object;
.source "AuctionSettings.java"


# instance fields
.field private mAuctionData:Ljava/lang/String;

.field private mAuctionRetryInterval:J

.field private mAuctionTimeout:J

.field private mIsAuctionOnShowStart:Z

.field private mIsProgrammatic:Z

.field private mMaxTrials:I

.field private mMinTimeToWaitBeforeFirstAuction:J

.field private mTimeToWaitBeforeAuction:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionData:Ljava/lang/String;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsProgrammatic:Z

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMinTimeToWaitBeforeFirstAuction:J

    .line 31
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionRetryInterval:J

    .line 32
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeAuction:J

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsAuctionOnShowStart:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IJZJJJZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionData:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mUrl:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMaxTrials:I

    .line 40
    iput-wide p4, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionTimeout:J

    .line 41
    iput-boolean p6, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsProgrammatic:Z

    .line 42
    iput-wide p7, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMinTimeToWaitBeforeFirstAuction:J

    .line 43
    iput-wide p9, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionRetryInterval:J

    .line 44
    iput-wide p11, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeAuction:J

    .line 45
    iput-boolean p13, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsAuctionOnShowStart:Z

    return-void
.end method


# virtual methods
.method public getAuctionData()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionData:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionRetryInterval()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionRetryInterval:J

    return-wide v0
.end method

.method public getIsAuctionOnShowStart()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsAuctionOnShowStart:Z

    return v0
.end method

.method public getIsProgrammatic()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsProgrammatic:Z

    return v0
.end method

.method public getNumOfMaxTrials()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMaxTrials:I

    return v0
.end method

.method public getTimeToWaitBeforeAuctionMs()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeAuction:J

    return-wide v0
.end method

.method public getTimeToWaitBeforeFirstAuctionMs()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMinTimeToWaitBeforeFirstAuction:J

    return-wide v0
.end method

.method public getTrialsInterval()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionTimeout:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mUrl:Ljava/lang/String;

    return-object v0
.end method
