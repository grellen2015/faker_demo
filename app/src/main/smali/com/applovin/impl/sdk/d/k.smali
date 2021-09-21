.class public Lcom/applovin/impl/sdk/d/k;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/k$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 2

    const-string v0, "TaskFetchBasicSettings"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/i;Z)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/k;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/k;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/h;->a(Lorg/json/JSONObject;ZLcom/applovin/impl/sdk/i;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/d/b;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/d/b;->b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    const-string v0, "Executing initialize SDK..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/k;->b(Ljava/lang/String;)V

    const-string v0, "smd"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/i;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->z()Lcom/applovin/impl/mediation/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Z)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->f(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    new-instance v0, Lcom/applovin/impl/sdk/d/q;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/d/q;-><init>(Lcom/applovin/impl/sdk/i;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    const-string p1, "Finished executing initialize SDK"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/k;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->aE:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "5.0/i"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->e()Lcom/applovin/impl/sdk/i;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->aF:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "5.0/i"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->e()Lcom/applovin/impl/sdk/i;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/c/i;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/i;->d:Lcom/applovin/impl/sdk/c/i;

    return-object v0
.end method

.method protected b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "rid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sdk_key"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/f;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "huc"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/f;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "aru"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected c()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk_version"

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "build"

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "init_count"

    sget v2, Lcom/applovin/impl/sdk/d/k;->a:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/applovin/impl/sdk/d/k;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "server_installed_at"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v4, Lcom/applovin/impl/sdk/b/c;->X:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "first_install"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->I()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "first_install_v2"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dY:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "plugin_version"

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mediation_provider"

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d/c;->a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/mediation/d/c$a;

    move-result-object v1

    const-string v2, "installed_mediation_adapters"

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/d/c$a;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uninstalled_mediation_adapter_classnames"

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/d/c$a;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->O()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->c()Lcom/applovin/impl/sdk/j$b;

    move-result-object v1

    const-string v2, "package_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$b;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$b;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "debug"

    iget-object v1, v1, Lcom/applovin/impl/sdk/j$b;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tg"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/e;->g:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dT:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "compass_random_token"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dV:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "applovin_random_token"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to construct JSON body"

    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/sdk/d/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 8

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->c()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v2

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v2

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/k;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dD:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dG:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dC:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/d/k$a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-direct {v2, p0, v3}, Lcom/applovin/impl/sdk/d/k$a;-><init>(Lcom/applovin/impl/sdk/d/k;Lcom/applovin/impl/sdk/i;)V

    sget-object v3, Lcom/applovin/impl/sdk/d/r$a;->b:Lcom/applovin/impl/sdk/d/r$a;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v5, Lcom/applovin/impl/sdk/b/c;->dC:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;J)V

    new-instance v1, Lcom/applovin/impl/sdk/d/k$1;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->h()Z

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/applovin/impl/sdk/d/k$1;-><init>(Lcom/applovin/impl/sdk/d/k;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/i;Z)V

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aG:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/x;->a(Lcom/applovin/impl/sdk/b/c;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aH:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/x;->b(Lcom/applovin/impl/sdk/b/c;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method
