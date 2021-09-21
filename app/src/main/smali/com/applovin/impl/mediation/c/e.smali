.class public Lcom/applovin/impl/mediation/c/e;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lcom/applovin/mediation/MaxAdListener;

.field private final f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskLoadAdapterAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/e;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/applovin/impl/mediation/c/e;->d:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/applovin/impl/mediation/c/e;->f:Landroid/app/Activity;

    iput-object p6, p0, Lcom/applovin/impl/mediation/c/e;->e:Lcom/applovin/mediation/MaxAdListener;

    return-void
.end method

.method private b()Lcom/applovin/impl/mediation/b/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/e;->d:Lorg/json/JSONObject;

    const-string v1, "ad_format"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/p;->c(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/applovin/impl/mediation/b/d;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/e;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/b/d;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    return-object v0

    :cond_1
    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported ad format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    new-instance v0, Lcom/applovin/impl/mediation/b/c;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/e;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/b/c;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    return-object v0

    :cond_4
    :goto_1
    new-instance v0, Lcom/applovin/impl/mediation/b/b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/e;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/b/b;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->D:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/mediation/c/e;->b()Lcom/applovin/impl/mediation/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->y()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/e;->f:Landroid/app/Activity;

    iget-object v4, p0, Lcom/applovin/impl/mediation/c/e;->e:Lcom/applovin/mediation/MaxAdListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to process adapter ad"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->M()Lcom/applovin/impl/sdk/c/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/c/e;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/e;->e:Lcom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e;->a:Ljava/lang/String;

    const/16 v2, -0x1389

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
