.class public Lcom/applovin/impl/sdk/network/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.applovin.sdk.impl.postbackQueue.domain"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->b()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/e;)Lcom/applovin/impl/sdk/o;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->d(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing to submit postback..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "PersistentPostbackManager"

    const-string v0, "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip pending postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->h()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->c()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ds:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->g()I

    move-result v1

    if-le v1, v0, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceeded maximum persisted attempt count of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Dequeuing postback: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->d(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->e()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/g;->b(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/g$a;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/g$a;->c(Z)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g$a;->b()Lcom/applovin/impl/sdk/network/g;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->R()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/network/e$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/sdk/network/e$1;-><init>(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private b()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->k:Lcom/applovin/impl/sdk/b/e;

    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e;->c:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->ds:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v4, "PersistentPostbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deserializing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " postback(s)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/applovin/impl/sdk/network/f;

    iget-object v6, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-direct {v5, v4, v6}, Lcom/applovin/impl/sdk/network/f;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/network/f;->g()I

    move-result v4

    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v6, "PersistentPostbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping deserialization because maximum attempt count exceeded for postback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v6, "PersistentPostbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to deserialize postback request from json: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully loaded postback queue with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " postback(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->d()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->e(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/network/f;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->c()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueued postback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/f;

    :try_start_0
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/f;->j()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v4, "PersistentPostbackManager"

    const-string v5, "Unable to serialize postback request to JSON."

    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/e;->k:Lcom/applovin/impl/sdk/b/e;

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e;->c:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "PersistentPostbackManager"

    const-string v2, "Wrote updated postback queue to disk."

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "PersistentPostbackManager"

    const-string v2, "Skipping writing postback queue to disk due to old Android version..."

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/applovin/impl/sdk/network/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/f;

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/network/e;->c(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d(Lcom/applovin/impl/sdk/network/f;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->c()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dequeued successfully transmitted postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private e(Lcom/applovin/impl/sdk/network/f;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/f;

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/network/e;->c(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/applovin/impl/sdk/network/f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;Z)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/f;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;ZLcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/f;ZLcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->i()V

    :cond_1
    iget-object p2, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->b(Lcom/applovin/impl/sdk/network/f;)V

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
