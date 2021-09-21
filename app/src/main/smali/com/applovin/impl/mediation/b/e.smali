.class public Lcom/applovin/impl/mediation/b/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/json/JSONObject;

.field protected final b:Lcom/applovin/impl/sdk/i;

.field private final c:Lorg/json/JSONObject;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/b/e;->e:Ljava/lang/Object;

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    iput-object p2, p0, Lcom/applovin/impl/mediation/b/e;->a:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No spec object specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No full response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/e;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/applovin/impl/mediation/b/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->i:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()Z
    .locals 2

    const-string v0, "is_testing"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2

    const-string v0, "run_on_ui_thread"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public C()Landroid/os/Bundle;
    .locals 2

    const-string v0, "server_parameters"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v0, "server_parameters"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->c(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public D()J
    .locals 3

    const-string v0, "adapter_timeout_ms"

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->o:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public E()Z
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/e;->F()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()J
    .locals 4

    const-string v0, "ad_refresh_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-string v0, "ad_refresh_ms"

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->r:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public G()J
    .locals 4

    const-string v0, "fullscreen_display_delay_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->A:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public H()J
    .locals 3

    const-string v0, "init_completion_delay_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public I()J
    .locals 3

    const-string v0, "ahdm"

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->B:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;F)F
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/i;)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/i;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;J)J
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/i;)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/e;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v1, p2}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/i;)Lorg/json/JSONArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "huc"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "huc"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "huc"

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->hasUserConsent(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/i;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;J)J
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/i;)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/i;)Lorg/json/JSONArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "aru"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "aru"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "aru"

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isAgeRestrictedUser(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/i;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected c(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/i;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/e;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapterSpec{adapterClass=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/e;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adapterName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/e;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/e;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRefreshEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/e;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getAdRefreshMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/e;->F()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->a:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected x()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public y()Ljava/lang/String;
    .locals 2

    const-string v0, "class"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
