.class public final Lcom/applovin/impl/sdk/utils/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/o;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/lang/String;

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->d:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->e:Lcom/applovin/impl/sdk/b/e;

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/utils/o;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->c:Ljava/lang/String;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->S:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->f:Lcom/applovin/impl/sdk/b/e;

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/utils/o;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/o;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/e<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/Context;)V

    return-object p2
.end method

.method private d()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->dX:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->c:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/e;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->c:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v1

    const-string v2, "AppLovinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using identifier ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") from previous session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->dX:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->c:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/o;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/o;->d:Ljava/lang/String;

    return-object v0
.end method
