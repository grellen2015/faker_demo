.class public abstract Lcom/applovin/impl/sdk/ad/f;
.super Lcom/applovin/impl/sdk/AppLovinAdBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/ad/f$a;,
        Lcom/applovin/impl/sdk/ad/f$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/AppLovinAdBase;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/i;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    const-string v0, "video_end_url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->getClCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private a(Landroid/graphics/PointF;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "click_tracking_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad/f;->c(Landroid/graphics/PointF;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad/f;->b(Landroid/graphics/PointF;Z)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v2, v3, p1, p2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/util/List;

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

.method private b(Z)Lcom/applovin/impl/adview/h$a;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/applovin/impl/adview/h$a;->b:Lcom/applovin/impl/adview/h$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/applovin/impl/adview/h$a;->a:Lcom/applovin/impl/adview/h$a;

    :goto_0
    return-object p1
.end method

.method private b(Landroid/graphics/PointF;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "click_tracking_url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad/f;->c(Landroid/graphics/PointF;Z)Ljava/util/Map;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private c(Landroid/graphics/PointF;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->getClCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{CLICK_X}"

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{CLICK_Y}"

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "{SCREEN_WIDTH}"

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "{SCREEN_HEIGHT}"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "{IS_VIDEO_CLICK}"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public A()I
    .locals 2

    const-string v0, "countdown_length"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public B()I
    .locals 5

    const-string v0, "#C8FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "countdown_color"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    const-string v3, "DirectAd"

    const-string v4, "Unable to parse countdown color"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public C()I
    .locals 2

    const-string v0, "video_background_color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    return v0
.end method

.method public D()I
    .locals 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/high16 v0, -0x45000000    # -0.001953125f

    :goto_0
    const-string v1, "graphic_background_color"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_1
    return v0
.end method

.method public E()Lcom/applovin/impl/sdk/ad/f$a;
    .locals 2

    const-string v0, "poststitial_dismiss_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$a;->b:Lcom/applovin/impl/sdk/ad/f$a;

    return-object v0

    :cond_0
    const-string v1, "no_dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$a;->c:Lcom/applovin/impl/sdk/ad/f$a;

    return-object v0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/ad/f$a;->a:Lcom/applovin/impl/sdk/ad/f$a;

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "resource_cache_prefix"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->bJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 2

    const-string v0, "cache_prefix"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .locals 2

    const-string v0, "daome"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 2

    const-string v0, "utpfc"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 2

    const-string v0, "sscomt"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    const-string v0, "event_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Z
    .locals 2

    const-string v0, "progress_bar_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public M()I
    .locals 2

    const-string v0, "progress_bar_color"

    const-string v1, "#C8FFFFFF"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Z
    .locals 2

    const-string v0, "vs_buffer_indicator_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 2

    const-string v0, "vs_buffer_indicator_initial_load_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public P()I
    .locals 2

    const-string v0, "vs_buffer_indicator_style"

    const v1, 0x101007a

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Q()I
    .locals 2

    const-string v0, "vs_buffer_indicator_color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public R()I
    .locals 3

    const-string v0, "#66000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "vs_buffer_indicator_bg_color"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public S()Z
    .locals 2

    const-string v0, "clear_dismissible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public T()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/p;->a(Lorg/json/JSONObject;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public U()I
    .locals 2

    const-string v0, "poststitial_shown_forward_delay_millis"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 2

    const-string v0, "should_apply_mute_setting_to_poststitial"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 2

    const-string v0, "should_forward_close_button_tapped_to_poststitial"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 2

    const-string v0, "vkuv"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 2

    const-string v0, "forward_lifecycle_events_to_webview"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public Z()I
    .locals 3

    const-string v0, "close_button_size"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->cD:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected a(I)Lcom/applovin/impl/adview/h$a;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/applovin/impl/adview/h$a;->b:Lcom/applovin/impl/adview/h$a;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/applovin/impl/adview/h$a;->c:Lcom/applovin/impl/adview/h$a;

    return-object p1

    :cond_1
    sget-object p1, Lcom/applovin/impl/adview/h$a;->a:Lcom/applovin/impl/adview/h$a;

    return-object p1
.end method

.method public a(Landroid/graphics/PointF;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Landroid/graphics/PointF;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/sdk/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    const-string v2, "html_resources_cached"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public aA()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public aB()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public aC()Lcom/applovin/impl/sdk/a/c;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/a/c;

    return-object v0
.end method

.method public aa()I
    .locals 3

    const-string v0, "close_button_top_margin"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->cE:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ab()I
    .locals 3

    const-string v0, "close_button_horizontal_margin"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->cC:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ac()Z
    .locals 3

    const-string v0, "lhs_close_button"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->cB:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ad()Z
    .locals 3

    const-string v0, "lhs_skip_button"

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->cU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ae()Z
    .locals 2

    const-string v0, "stop_video_player_after_poststitial_render"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public af()Z
    .locals 2

    const-string v0, "unhide_adview_on_render"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ag()J
    .locals 7

    const-string v0, "report_reward_duration"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/ad/f;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public ah()I
    .locals 2

    const-string v0, "report_reward_percent"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ai()Z
    .locals 2

    const-string v0, "report_reward_percent_include_close_delay"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aj()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public ak()Z
    .locals 2

    const-string v0, "show_skip_button_on_click"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public al()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "video_end_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->getClCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/f;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public am()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ad_closed_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->getClCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public an()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->f:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "imp_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->getClCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->f:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->f:Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ao()Z
    .locals 2

    const-string v0, "playback_requires_user_action"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ap()Z
    .locals 2

    const-string v0, "sanitize_webview"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aq()Ljava/lang/String;
    .locals 2

    const-string v0, "base_url"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public ar()Z
    .locals 2

    const-string v0, "web_contents_debugging_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public as()Lcom/applovin/impl/adview/w;
    .locals 3

    const-string v0, "web_view_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/applovin/impl/adview/w;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-direct {v1, v0, v2}, Lcom/applovin/impl/adview/w;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    :cond_0
    return-object v1
.end method

.method public at()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "wls"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public au()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "wlh"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public av()Z
    .locals 2

    const-string v0, "tvv"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aw()Z
    .locals 2

    const-string v0, "ibbdfs"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ax()Z
    .locals 2

    const-string v0, "ibbdfc"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ay()Landroid/net/Uri;
    .locals 3

    const-string v0, "mute_image"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public az()Landroid/net/Uri;
    .locals 2

    const-string v0, "unmute_image"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Landroid/graphics/PointF;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "video_click_tracking_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/applovin/impl/sdk/ad/f;->c(Landroid/graphics/PointF;Z)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v2, v4, v5, v6}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/applovin/impl/sdk/ad/f;->a(Landroid/graphics/PointF;Z)Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    const-string v2, "mute_image"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke isVideoStream() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->adObject:Lorg/json/JSONObject;

    const-string v2, "unmute_image"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getVideoUri() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getClickDestinationUri() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getVideoClickDestinationUri() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/applovin/impl/sdk/ad/f$b;
    .locals 2

    const-string v0, "ad_target"

    sget-object v1, Lcom/applovin/impl/sdk/ad/f$b;->a:Lcom/applovin/impl/sdk/ad/f$b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/f$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_PORTRAIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->b:Lcom/applovin/impl/sdk/ad/f$b;

    return-object v0

    :cond_0
    const-string v1, "ACTIVITY_LANDSCAPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->c:Lcom/applovin/impl/sdk/ad/f$b;

    return-object v0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->a:Lcom/applovin/impl/sdk/ad/f$b;

    return-object v0
.end method

.method public m()F
    .locals 2

    const-string v0, "close_delay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getFloatFromAdObject(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public n()F
    .locals 2

    const-string v0, "close_delay_graphic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getFloatFromAdObject(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public o()Lcom/applovin/impl/adview/h$a;
    .locals 2

    const-string v0, "close_style"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->hasVideoUrl()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ad/f;->b(Z)Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ad/f;->a(I)Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public p()Lcom/applovin/impl/adview/h$a;
    .locals 2

    const-string v0, "skip_style"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/f;->o()Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ad/f;->a(I)Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public q()Z
    .locals 2

    const-string v0, "dismiss_on_skip"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 2

    const-string v0, "html_resources_cached"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    const-string v0, "video_button_properties"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "video_button_html"

    const-string v2, ""

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public t()Lcom/applovin/impl/adview/s;
    .locals 3

    const-string v0, "video_button_properties"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/s;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->sdk:Lcom/applovin/impl/sdk/i;

    invoke-direct {v1, v0, v2}, Lcom/applovin/impl/adview/s;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    return-object v1
.end method

.method public u()Z
    .locals 2

    const-string v0, "video_clickable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2

    const-string v0, "accelerate_hardware"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    const-string v0, "keep_screen_on"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    const-string v0, "hide_close_on_exit_graphic"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    const-string v0, "hide_close_on_exit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 2

    const-string v0, "lock_current_orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/f;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
