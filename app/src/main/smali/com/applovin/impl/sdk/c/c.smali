.class public Lcom/applovin/impl/sdk/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/c/c$a;,
        Lcom/applovin/impl/sdk/c/c$c;,
        Lcom/applovin/impl/sdk/c/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/applovin/impl/sdk/c/c$c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    new-instance v0, Lcom/applovin/impl/sdk/c/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/c/c$c;-><init>(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/c$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/o;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 3

    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eu:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p4}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/applovin/impl/sdk/c/c$a;->a(Ljava/lang/String;J)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eu:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/applovin/impl/sdk/c/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lcom/applovin/impl/sdk/i;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/b$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->er:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->es:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/c/c$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, p0, p1, v1}, Lcom/applovin/impl/sdk/c/c$1;-><init>(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/i;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/c;->aI:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/b/c;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/c;->aJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/x;->b(Lcom/applovin/impl/sdk/b/c;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/sdk/d/r$a;->c:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;
    .locals 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getPrimaryKey()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {v1, v7}, Lcom/applovin/impl/sdk/c/c$c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/c/c$a;

    if-nez v1, :cond_0

    new-instance v8, Lcom/applovin/impl/sdk/c/c$a;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSecondaryKey1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getSecondaryKey2()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/c/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/c/c$1;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {p1, v7, v8}, Lcom/applovin/impl/sdk/c/c$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v8

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 3

    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eu:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p4}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$a;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/applovin/impl/sdk/c/c$a;->b(Ljava/lang/String;J)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/c;->e()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/c/b;JLcom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/c/c;)Lcom/applovin/impl/sdk/i;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    const-string v0, "2.0/s"

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    const-string v0, "2.0/s"

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/h;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c$c;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c$c;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/c/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/applovin/impl/sdk/c/c$a;->a(Lcom/applovin/impl/sdk/c/c$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    iget-object v5, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v6, "AdEventStatsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to serialize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to OOM error"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c/c;->b()V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/e;->s:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/c/c$b;

    invoke-direct {v0, p0, p1, p0}, Lcom/applovin/impl/sdk/c/c$b;-><init>(Lcom/applovin/impl/sdk/c/c;Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/c/c;)V

    return-object v0
.end method

.method public a()V
    .locals 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->s:Lcom/applovin/impl/sdk/b/e;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/e;->s:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/e;)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "AdEventStatsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "De-serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stat ad events"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v5, "AdEventStatsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "stats"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/c/c;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "AdEventStatsManager"

    const-string v3, "Failed to create stats to submit"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "AdEventStatsManager"

    const-string v2, "No serialized ad events found"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "AdEventStatsManager"

    const-string v3, "Clearing ad stats..."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/c;->d:Lcom/applovin/impl/sdk/c/c$c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/c/c$c;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
