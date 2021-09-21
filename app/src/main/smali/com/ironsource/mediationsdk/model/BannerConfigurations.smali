.class public Lcom/ironsource/mediationsdk/model/BannerConfigurations;
.super Ljava/lang/Object;
.source "BannerConfigurations.java"


# static fields
.field private static final DEFAULT_BN_PLACEMENT_ID:I


# instance fields
.field private mBNAdaptersSmartLoadAmount:I

.field private mBNAdaptersTimeoutInMilliseconds:J

.field private mBNDelayLoadFailureNotificationInSeconds:I

.field private mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

.field private mBNPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/BannerPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private mBNRefreshInterval:I

.field private mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IJLcom/ironsource/mediationsdk/model/ApplicationEvents;II)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    .line 28
    iput p1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersSmartLoadAmount:I

    .line 29
    iput-wide p2, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersTimeoutInMilliseconds:J

    .line 30
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 31
    iput p5, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNRefreshInterval:I

    .line 32
    iput p6, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNDelayLoadFailureNotificationInSeconds:I

    return-void
.end method


# virtual methods
.method public addBannerPlacement(Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    if-nez v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    :cond_1
    :goto_0
    return-void
.end method

.method public getBannerAdaptersSmartLoadAmount()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersSmartLoadAmount:I

    return v0
.end method

.method public getBannerAdaptersSmartLoadTimeout()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersTimeoutInMilliseconds:J

    return-wide v0
.end method

.method public getBannerDelayLoadFailure()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNDelayLoadFailureNotificationInSeconds:I

    return v0
.end method

.method public getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    return-object v0
.end method

.method public getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 65
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBannerRefreshInterval()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNRefreshInterval:I

    return v0
.end method

.method public getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 74
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->isDefault()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-object v1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    return-object v0
.end method
