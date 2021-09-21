.class public Lcom/applovin/impl/mediation/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/d;->a:Z

    const-string v0, "cleartext_traffic"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/mediation/a/a/d;->b:Z

    const-string v2, "description"

    const-string v3, ""

    invoke-static {p1, v2, v3, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/impl/mediation/a/a/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/applovin/impl/mediation/a/a/d;->c:Z

    goto :goto_1

    :cond_0
    const-string v2, "domains"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v2, v3, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/i;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/d;->c:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/d;->b:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/a/a/d;->c:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/d;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/d;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/a/a/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/d;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "You must include an entry in your AndroidManifest.xml to point to your network_security_config.xml.\n\nFor more information, visit: https://developer.android.com/training/articles/security-config"

    :goto_0
    return-object v0
.end method
