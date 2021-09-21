.class public Lcom/applovin/impl/sdk/EventServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinEventService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->p:Lcom/applovin/impl/sdk/b/e;

    const-string v1, "{}"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/sdk/i;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->p:Lcom/applovin/impl/sdk/b/e;

    const-string v1, "{}"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->aK:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/pix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/j$a;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/j$a;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/j$a;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/k;",
            "Lcom/applovin/impl/sdk/j$a;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->O()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->b()Lcom/applovin/impl/sdk/j$d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->c()Lcom/applovin/impl/sdk/j$b;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->aR:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "event"

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "postinstall"

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ts"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "platform"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "model"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "package_name"

    iget-object v5, v0, Lcom/applovin/impl/sdk/j$b;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "installer_name"

    iget-object v5, v0, Lcom/applovin/impl/sdk/j$b;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ia"

    iget-wide v5, v0, Lcom/applovin/impl/sdk/j$b;->g:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "api_did"

    iget-object v5, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v6, Lcom/applovin/impl/sdk/b/c;->S:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "brand"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "brand_name"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "hardware"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->f:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "revision"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->g:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdk_version"

    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "os"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "orientation_lock"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "app_version"

    iget-object v5, v0, Lcom/applovin/impl/sdk/j$b;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "country_code"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->i:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "carrier"

    iget-object v5, v1, Lcom/applovin/impl/sdk/j$d;->j:Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "tz_offset"

    iget-wide v5, v1, Lcom/applovin/impl/sdk/j$d;->r:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "aida"

    iget-boolean v5, v1, Lcom/applovin/impl/sdk/j$d;->I:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adr"

    iget-boolean v5, v1, Lcom/applovin/impl/sdk/j$d;->t:Z

    if-eqz v5, :cond_1

    const-string v5, "1"

    goto :goto_1

    :cond_1
    const-string v5, "0"

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "volume"

    iget v5, v1, Lcom/applovin/impl/sdk/j$d;->v:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sim"

    iget-boolean v5, v1, Lcom/applovin/impl/sdk/j$d;->x:Z

    if-eqz v5, :cond_2

    const-string v5, "1"

    goto :goto_2

    :cond_2
    const-string v5, "0"

    :goto_2
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gy"

    iget-boolean v5, v1, Lcom/applovin/impl/sdk/j$d;->y:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "is_tablet"

    iget-boolean v5, v1, Lcom/applovin/impl/sdk/j$d;->z:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "tv"

    iget-boolean v5, v1, Lcom/applovin/impl/sdk/j$d;->A:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "vs"

    iget-boolean v5, v1, Lcom/applovin/impl/sdk/j$d;->B:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lpm"

    iget v5, v1, Lcom/applovin/impl/sdk/j$d;->C:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "tg"

    iget-object v0, v0, Lcom/applovin/impl/sdk/j$b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fs"

    iget-wide v4, v1, Lcom/applovin/impl/sdk/j$d;->E:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fm"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v4, v4, Lcom/applovin/impl/sdk/j$e;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tm"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v4, v4, Lcom/applovin/impl/sdk/j$e;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lmt"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v4, v4, Lcom/applovin/impl/sdk/j$e;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lm"

    iget-object v4, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-boolean v4, v4, Lcom/applovin/impl/sdk/j$e;->d:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adns"

    iget v4, v1, Lcom/applovin/impl/sdk/j$d;->m:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adnsd"

    iget v4, v1, Lcom/applovin/impl/sdk/j$d;->n:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xdpi"

    iget v4, v1, Lcom/applovin/impl/sdk/j$d;->o:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ydpi"

    iget v4, v1, Lcom/applovin/impl/sdk/j$d;->p:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_size_in"

    iget-wide v4, v1, Lcom/applovin/impl/sdk/j$d;->q:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug"

    iget-object v4, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/p;->b(Lcom/applovin/impl/sdk/i;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v4, Lcom/applovin/impl/sdk/b/c;->eJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sdk_key"

    iget-object v4, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0, p2, v3}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/j$a;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->dR:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "cuid"

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v3}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->dU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "compass_random_token"

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->dW:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "applovin_random_token"

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p2, v1, Lcom/applovin/impl/sdk/j$d;->G:Ljava/lang/Boolean;

    if-eqz p2, :cond_7

    const-string v0, "huc"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p2, v1, Lcom/applovin/impl/sdk/j$d;->H:Ljava/lang/Boolean;

    if-eqz p2, :cond_8

    const-string v0, "aru"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p2, v1, Lcom/applovin/impl/sdk/j$d;->u:Lcom/applovin/impl/sdk/j$c;

    if-eqz p2, :cond_9

    const-string v0, "act"

    iget v4, p2, Lcom/applovin/impl/sdk/j$c;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "acm"

    iget p2, p2, Lcom/applovin/impl/sdk/j$c;->b:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object p2, v1, Lcom/applovin/impl/sdk/j$d;->w:Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ua"

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object p2, v1, Lcom/applovin/impl/sdk/j$d;->D:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "so"

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-nez v2, :cond_c

    const-string p2, "sub_event"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string p1, "sc"

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->V:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sc2"

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->W:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "server_installed_at"

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->X:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object p2, Lcom/applovin/impl/sdk/b/e;->x:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "persisted_data"

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "plugin_version"

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->dY:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "mediation_provider"

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/d/i$a;)V
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/d/i;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/d/i;-><init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/d/i$a;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/sdk/d/r$a;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/j$a;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/j$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/applovin/impl/sdk/j$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "idfa"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean p1, p1, Lcom/applovin/impl/sdk/j$a;->a:Z

    const-string v0, "dnt"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/i;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->aL:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/pix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->aU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    const-string v1, "{}"

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/util/Map;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/e;->p:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public getSuperProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public maybeTrackAppOpenEvent()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->q()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v0

    const-string v1, "landing"

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinEventService;->trackEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSuperProperty(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppLovinEventService"

    const-string p2, "Super property key cannot be null or empty"

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->aT:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/Object;Ljava/util/List;Lcom/applovin/impl/sdk/i;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AppLovinEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set super property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' for key \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' - valid super property types include: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EventService{}"

    return-object v0
.end method

.method public trackCheckout(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    const-string p2, "transaction_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "checkout"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->aS:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "AppLovinEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking event: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" with parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/EventServiceImpl$1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/EventServiceImpl$1;-><init>(Lcom/applovin/impl/sdk/EventServiceImpl;Ljava/lang/String;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/d/i$a;)V

    return-void
.end method

.method public trackInAppPurchase(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    :try_start_0
    const-string p2, "receipt_data"

    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "receipt_data_signature"

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "AppLovinEventService"

    const-string v1, "Unable to track in app purchase - invalid purchase intent"

    invoke-static {p2, v1, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string p1, "iap"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
