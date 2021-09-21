.class public abstract Lcom/applovin/impl/sdk/d/ab;
.super Lcom/applovin/impl/sdk/d/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lorg/json/JSONObject;)V
.end method

.method a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/network/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/network/a$c<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/ab;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/ab;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/h;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lcom/applovin/impl/sdk/i;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/b$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->bL:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/d/ab$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/applovin/impl/sdk/d/ab$1;-><init>(Lcom/applovin/impl/sdk/d/ab;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/network/a$c;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/c;->aI:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/b/c;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/c;->aJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/x;->b(Lcom/applovin/impl/sdk/b/c;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected i()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dS:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cuid"

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v2, v1, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "compass_random_token"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dW:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "applovin_random_token"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/ab;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method
