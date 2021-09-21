.class public abstract Lcom/applovin/impl/mediation/b/a;
.super Lcom/applovin/impl/mediation/b/e;

# interfaces
.implements Lcom/applovin/mediation/MaxAd;


# instance fields
.field protected a:Lcom/applovin/impl/mediation/i;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/i;Lcom/applovin/impl/sdk/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/applovin/impl/mediation/b/e;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/applovin/impl/mediation/b/a;->a:Lcom/applovin/impl/mediation/i;

    return-void
.end method

.method private j()J
    .locals 3

    const-string v0, "load_started_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract a(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/b/a;
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->a:Lcom/applovin/impl/mediation/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->a:Lcom/applovin/impl/mediation/i;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->a:Lcom/applovin/impl/mediation/i;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "event_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/applovin/impl/mediation/i;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->a:Lcom/applovin/impl/mediation/i;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    const-string v0, "bid_response"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "third_party_ad_placement_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 4

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/a;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/a;->j()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public g()V
    .locals 3

    const-string v0, "load_started_time_ms"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/a;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 2

    const-string v0, "ad_unit_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/applovin/mediation/MaxAdFormat;
    .locals 2

    const-string v0, "ad_format"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/p;->c(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/b/a;->a:Lcom/applovin/impl/mediation/i;

    return-void
.end method
