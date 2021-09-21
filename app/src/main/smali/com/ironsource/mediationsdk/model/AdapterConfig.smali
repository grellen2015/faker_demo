.class public Lcom/ironsource/mediationsdk/model/AdapterConfig;
.super Ljava/lang/Object;
.source "AdapterConfig.java"


# instance fields
.field private mAdUnitSettings:Lorg/json/JSONObject;

.field private mIsBidder:Z

.field private mMaxAdsPerSession:I

.field private mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 13
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mAdUnitSettings:Lorg/json/JSONObject;

    const-string p1, "instanceType"

    .line 14
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mIsBidder:Z

    const-string p1, "maxAdsPerSession"

    const/16 v0, 0x63

    .line 15
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mMaxAdsPerSession:I

    return-void
.end method


# virtual methods
.method public getAdSourceNameForEvents()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitSetings()Lorg/json/JSONObject;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mAdUnitSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMaxAdsPerSession()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mMaxAdsPerSession:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderNameForReflection()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubProviderId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBidder()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mIsBidder:Z

    return v0
.end method
