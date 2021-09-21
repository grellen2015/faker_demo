.class public Lcom/applovin/impl/sdk/d/p;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/d/p$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/d/p$a;)V
    .locals 1

    const-string v0, "TaskFetchVariables"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/p;->a:Lcom/applovin/impl/sdk/d/p$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/p;)Lcom/applovin/impl/sdk/d/p$a;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/p;->a:Lcom/applovin/impl/sdk/d/p$a;

    return-object p0
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->O()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->d()Lcom/applovin/impl/sdk/j$a;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/impl/sdk/j$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "idfa"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, v0, Lcom/applovin/impl/sdk/j$a;->a:Z

    const-string v1, "dnt"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to populate advertising info"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/d/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->q:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method protected b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->O()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->b()Lcom/applovin/impl/sdk/j$d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->c()Lcom/applovin/impl/sdk/j$b;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "platform"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "model"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "package_name"

    iget-object v4, v0, Lcom/applovin/impl/sdk/j$b;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "installer_name"

    iget-object v4, v0, Lcom/applovin/impl/sdk/j$b;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ia"

    iget-wide v4, v0, Lcom/applovin/impl/sdk/j$b;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "api_did"

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v5, Lcom/applovin/impl/sdk/b/c;->S:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "brand"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "brand_name"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hardware"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "revision"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sdk_version"

    sget-object v4, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "os"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "orientation_lock"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_version"

    iget-object v4, v0, Lcom/applovin/impl/sdk/j$b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "country_code"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "carrier"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tz_offset"

    iget-wide v4, v1, Lcom/applovin/impl/sdk/j$d;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "aida"

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/j$d;->I:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adr"

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/j$d;->t:Z

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "volume"

    iget v4, v1, Lcom/applovin/impl/sdk/j$d;->v:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sim"

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/j$d;->x:Z

    if-eqz v4, :cond_1

    const-string v4, "1"

    goto :goto_1

    :cond_1
    const-string v4, "0"

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gy"

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/j$d;->y:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_tablet"

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/j$d;->z:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tv"

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/j$d;->A:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "vs"

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/j$d;->B:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lpm"

    iget v4, v1, Lcom/applovin/impl/sdk/j$d;->C:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tg"

    iget-object v0, v0, Lcom/applovin/impl/sdk/j$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fs"

    iget-wide v3, v1, Lcom/applovin/impl/sdk/j$d;->E:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fm"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/j$e;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tm"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/j$e;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lmt"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/j$e;->c:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lm"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-boolean v3, v3, Lcom/applovin/impl/sdk/j$e;->d:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adns"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->m:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adnsd"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->n:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xdpi"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->o:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ydpi"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->p:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_size_in"

    iget-wide v3, v1, Lcom/applovin/impl/sdk/j$d;->q:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug"

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/p;->b(Lcom/applovin/impl/sdk/i;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->eJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sdk_key"

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/d/p;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dR:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cuid"

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "compass_random_token"

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/i;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dW:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "applovin_random_token"

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/i;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, v1, Lcom/applovin/impl/sdk/j$d;->G:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const-string v3, "huc"

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, v1, Lcom/applovin/impl/sdk/j$d;->H:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const-string v3, "aru"

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, v1, Lcom/applovin/impl/sdk/j$d;->u:Lcom/applovin/impl/sdk/j$c;

    if-eqz v0, :cond_8

    const-string v3, "act"

    iget v4, v0, Lcom/applovin/impl/sdk/j$c;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "acm"

    iget v0, v0, Lcom/applovin/impl/sdk/j$c;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, v1, Lcom/applovin/impl/sdk/j$d;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "ua"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, v1, Lcom/applovin/impl/sdk/j$d;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "so"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "sc"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->V:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sc2"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->W:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_installed_at"

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->X:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->x:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "persisted_data"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/p;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/h;->i(Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/h;->j(Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dH:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/p$1;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-direct {v1, p0, v0, v2}, Lcom/applovin/impl/sdk/d/p$1;-><init>(Lcom/applovin/impl/sdk/d/p;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/i;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aM:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/b/c;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aN:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/x;->b(Lcom/applovin/impl/sdk/b/c;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/p;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method
