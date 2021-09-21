.class public Lcom/applovin/impl/sdk/d/q;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 1

    const-string v0, "TaskInitializeSdk"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/q;)Lcom/applovin/impl/sdk/i;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->T()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->f(Lcom/applovin/impl/sdk/ad/d;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->x()Lcom/applovin/impl/mediation/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->ae()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->x()Lcom/applovin/impl/mediation/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/g;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/ac;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    const/4 v3, 0x1

    new-instance v4, Lcom/applovin/impl/sdk/d/q$1;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/d/q$1;-><init>(Lcom/applovin/impl/sdk/d/q;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/d/ac;-><init>(Lcom/applovin/impl/sdk/i;ZLjava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/sdk/d/r$a;->a:Lcom/applovin/impl/sdk/d/r$a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;J)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/d/b;-><init>(Lcom/applovin/impl/sdk/i;)V

    sget-object v2, Lcom/applovin/impl/sdk/d/r$a;->a:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->T()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->U()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->a()V

    return-void
.end method

.method private i()V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/q;->j()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/q;->k()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/q;->l()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->W()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling preload(s) for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " zone(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/d/q;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->p()Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/NativeAdServiceImpl;->preloadAds(Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->preloadAds(Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()V
    .locals 6

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->ba:Lcom/applovin/impl/sdk/b/c;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->aZ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, v4, v5}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/i;->T()Lcom/applovin/impl/sdk/c;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/applovin/impl/sdk/c;->f(Lcom/applovin/impl/sdk/ad/d;)V

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v4}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/q;->a(Lcom/applovin/impl/sdk/b/c;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/q;->a(Lcom/applovin/impl/sdk/b/c;)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->bb:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->U()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ad/d;->h(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->f(Lcom/applovin/impl/sdk/ad/d;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->a:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing AppLovin SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/d/q;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->L()Lcom/applovin/impl/sdk/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/h;->d()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->L()Lcom/applovin/impl/sdk/c/h;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->b:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/c/h;->c(Lcom/applovin/impl/sdk/c/g;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->V()Lcom/applovin/impl/sdk/m;

    move-result-object v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/q;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/m;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->V()Lcom/applovin/impl/sdk/m;

    move-result-object v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/q;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/m;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/q;->d()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/q;->i()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/q;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->X()Lcom/applovin/impl/sdk/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c;->a()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/q;->c()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->O()Lcom/applovin/impl/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->e()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Z)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->N()Lcom/applovin/impl/sdk/network/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/e;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->q()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->maybeTrackAppOpenEvent()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->B()Lcom/applovin/impl/mediation/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/j;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->z()Lcom/applovin/impl/mediation/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->z()Lcom/applovin/impl/mediation/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->aq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->ar:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v4, v2, v3}, Lcom/applovin/impl/sdk/i;->a(J)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLovin SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initialization "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/i;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "Unable to initialize SDK."

    invoke-virtual {p0, v3, v2}, Lcom/applovin/impl/sdk/d/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Z)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->M()Lcom/applovin/impl/sdk/c/j;

    move-result-object v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/q;->a()Lcom/applovin/impl/sdk/c/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/c/j;->a(Lcom/applovin/impl/sdk/c/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->aq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->ar:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v4, v2, v3}, Lcom/applovin/impl/sdk/i;->a(J)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLovin SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initialization "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/i;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    const-string v3, "succeeded"

    goto :goto_1

    :cond_3
    const-string v3, "failed"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/q;->a(Ljava/lang/String;)V

    return-void

    :goto_2
    iget-object v3, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v4, Lcom/applovin/impl/sdk/b/c;->aq:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    sget-object v4, Lcom/applovin/impl/sdk/b/c;->ar:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v5, v3, v4}, Lcom/applovin/impl/sdk/i;->a(J)V

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppLovin SDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initialization "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/q;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/i;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "succeeded"

    goto :goto_3

    :cond_5
    const-string v4, "failed"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/q;->a(Ljava/lang/String;)V

    throw v2
.end method
