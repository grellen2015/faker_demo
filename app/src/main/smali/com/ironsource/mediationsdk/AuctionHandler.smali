.class public Lcom/ironsource/mediationsdk/AuctionHandler;
.super Ljava/lang/Object;
.source "AuctionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/AuctionHandler$ImpressionHttpTask;,
        Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;
    }
.end annotation


# static fields
.field private static final SERVER_REQUEST_TIMEOUT:I = 0x3a98


# instance fields
.field private mAdUnit:Ljava/lang/String;

.field private mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

.field private mSessionId:Ljava/lang/String;

.field private mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAdUnit:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 57
    iput-object p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    .line 58
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method private generateRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;IZ)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "instanceType"

    .line 83
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "biddingAdditionalData"

    .line 84
    new-instance v5, Lorg/json/JSONObject;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 89
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "instanceType"

    .line 90
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 94
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "applicationUserId"

    .line 95
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object p3

    .line 98
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p3, "unknown"

    :cond_2
    const-string v2, "applicationUserGender"

    .line 101
    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_3

    const/4 p3, -0x1

    .line 106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_3
    const-string v2, "applicationUserAge"

    .line 108
    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getConsent()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string v2, "consent"

    .line 112
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string p3, "mobileCarrier"

    .line 115
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "connectionType"

    .line 116
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "deviceOS"

    const-string v2, "android"

    .line 117
    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "deviceWidth"

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "deviceHeight"

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "deviceOSVersion"

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "deviceModel"

    .line 121
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "deviceMake"

    .line 122
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "bundleId"

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "appVersion"

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "clientTimestamp"

    .line 125
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p2, p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "UUID"

    .line 132
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 133
    array-length v4, p1

    const/4 v5, 0x0

    if-ne v4, v3, :cond_5

    .line 134
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 136
    aget-object v3, p1, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 137
    aget-object p3, p1, v5

    const-string v2, "GAID"

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    const-string p1, "advId"

    .line 141
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "advIdType"

    .line 142
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isLimitAdTrackingEnabled"

    if-eqz v1, :cond_7

    const-string p3, "true"

    goto :goto_3

    :cond_7
    const-string p3, "false"

    .line 143
    :goto_3
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "adUnit"

    .line 148
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAdUnit:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "auctionData"

    .line 149
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "applicationKey"

    .line 150
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "SDKVersion"

    .line 151
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "clientParams"

    .line 152
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionDepth"

    .line 153
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "sessionId"

    .line 154
    iget-object p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "doNotEncryptResponse"

    if-eqz p5, :cond_8

    const-string p3, "false"

    goto :goto_4

    :cond_8
    const-string p3, "true"

    .line 155
    :goto_4
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "instances"

    .line 156
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, v0

    .line 64
    invoke-direct/range {v3 .. v8}, Lcom/ironsource/mediationsdk/AuctionHandler;->generateRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;IZ)Lorg/json/JSONObject;

    move-result-object p1

    .line 65
    new-instance p2, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    invoke-direct {p2, p3}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;-><init>(Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    const/4 p3, 0x5

    .line 66
    new-array p3, p3, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getUrl()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v1

    aput-object p1, p3, v2

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, p3, p1

    const/4 p1, 0x3

    iget-object p4, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p1

    const/4 p1, 0x4

    iget-object p4, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTrialsInterval()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, p1

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler;->mAuctionListener:Lcom/ironsource/mediationsdk/AuctionEventListener;

    const/16 v1, 0x3e8

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "other"

    const-wide/16 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_1
    return-void
.end method

.method public reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;)V
    .locals 4

    .line 73
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getWinUrls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    new-instance v1, Lcom/ironsource/mediationsdk/AuctionHandler$ImpressionHttpTask;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/AuctionHandler$ImpressionHttpTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AuctionHandler$ImpressionHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method
