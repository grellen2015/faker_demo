.class public Lcom/ironsource/mediationsdk/AuctionResponseItem;
.super Ljava/lang/Object;
.source "AuctionResponseItem.java"


# instance fields
.field private mInstanceName:Ljava/lang/String;

.field private mIsValid:Z

.field private mServerData:Ljava/lang/String;

.field private mWinUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mWinUrls:Ljava/util/List;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    :try_start_0
    const-string v1, "instance"

    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    const-string v1, "adMarkup"

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "adMarkup"

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 30
    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    .line 33
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mWinUrls:Ljava/util/List;

    const-string v1, "winURLs"

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 35
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mWinUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    return-void

    :catch_0
    return-void
.end method


# virtual methods
.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerData()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    return-object v0
.end method

.method public getWinUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mWinUrls:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    return v0
.end method
