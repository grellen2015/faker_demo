.class public Lcom/applovin/impl/sdk/d/y;
.super Lcom/applovin/impl/sdk/d/z;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ad/f;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/f;Lcom/applovin/impl/sdk/i;)V
    .locals 1

    const-string v0, "TaskReportAppLovinReward"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/d/z;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->x:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method protected a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report reward for ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/y;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "zone_id"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    const-string v0, "fire_percent"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f;->ah()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/i;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/f;->getClCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clcode"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_CLCODE"

    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v1, v0, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0/cr"

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reported reward successfully for ad: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected c()Lcom/applovin/impl/sdk/a/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/f;->aC()Lcom/applovin/impl/sdk/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No reward result was found for ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/y;->d(Ljava/lang/String;)V

    return-void
.end method
