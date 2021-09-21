.class abstract Lcom/moat/analytics/mobile/iro/h;
.super Lcom/moat/analytics/mobile/iro/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/iro/h$a;
    }
.end annotation


# instance fields
.field l:I

.field private m:Lcom/moat/analytics/mobile/iro/h$a;

.field private n:I

.field private o:D

.field private p:I

.field private q:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/iro/c;-><init>(Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/moat/analytics/mobile/iro/h;->p:I

    iput p1, p0, Lcom/moat/analytics/mobile/iro/h;->l:I

    iput p1, p0, Lcom/moat/analytics/mobile/iro/h;->n:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/moat/analytics/mobile/iro/h;->q:I

    sget-object p1, Lcom/moat/analytics/mobile/iro/h$a;->a:Lcom/moat/analytics/mobile/iro/h$a;

    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/h;->m:Lcom/moat/analytics/mobile/iro/h$a;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/moat/analytics/mobile/iro/h;->o:D

    return-void
.end method

.method private t()V
    .locals 4

    new-instance v0, Lcom/moat/analytics/mobile/iro/h$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/iro/h$1;-><init>(Lcom/moat/analytics/mobile/iro/h;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/h;->i:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a(Lcom/moat/analytics/mobile/iro/MoatAdEvent;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->b:Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->o()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget v0, p0, Lcom/moat/analytics/mobile/iro/h;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->b:Ljava/lang/Integer;

    :goto_1
    iget-object v1, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->d:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/moat/analytics/mobile/iro/h;->n:I

    if-lez v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/moat/analytics/mobile/iro/h;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->b:Ljava/lang/Integer;

    :cond_2
    iget-object v1, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->d:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/moat/analytics/mobile/iro/h;->l:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/moat/analytics/mobile/iro/h;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/iro/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/moat/analytics/mobile/iro/h$a;->e:Lcom/moat/analytics/mobile/iro/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->m:Lcom/moat/analytics/mobile/iro/h$a;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v0, Lcom/moat/analytics/mobile/iro/h$a;->d:Lcom/moat/analytics/mobile/iro/h$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/h;->m:Lcom/moat/analytics/mobile/iro/h$a;

    sget-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/iro/MoatAdEvent;->d:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    :cond_5
    :goto_3
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/iro/c;->a(Lcom/moat/analytics/mobile/iro/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/moat/analytics/mobile/iro/c;->a(Ljava/util/Map;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/h;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "IntervalVideoTracker"

    const-string v1, "Problem with video loop"

    invoke-static {p2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "trackVideoAd"

    invoke-virtual {p0, p2, p1}, Lcom/moat/analytics/mobile/iro/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1
.end method

.method abstract n()Z
.end method

.method abstract o()Ljava/lang/Integer;
.end method

.method protected p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract q()Z
.end method

.method abstract r()Ljava/lang/Integer;
.end method

.method s()Z
    .locals 12
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/moat/analytics/mobile/iro/h;->n:I

    if-ltz v3, :cond_1

    if-gez v2, :cond_1

    return v1

    :cond_1
    iput v2, p0, Lcom/moat/analytics/mobile/iro/h;->n:I

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->q()Z

    move-result v4

    int-to-double v5, v3

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    div-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->j()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x0

    iget v10, p0, Lcom/moat/analytics/mobile/iro/h;->p:I

    if-le v2, v10, :cond_3

    iput v2, p0, Lcom/moat/analytics/mobile/iro/h;->p:I

    :cond_3
    iget v10, p0, Lcom/moat/analytics/mobile/iro/h;->l:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4

    iput v3, p0, Lcom/moat/analytics/mobile/iro/h;->l:I

    :cond_4
    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/moat/analytics/mobile/iro/h;->m:Lcom/moat/analytics/mobile/iro/h$a;

    sget-object v4, Lcom/moat/analytics/mobile/iro/h$a;->a:Lcom/moat/analytics/mobile/iro/h$a;

    if-ne v3, v4, :cond_5

    sget-object v9, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    :goto_0
    sget-object v3, Lcom/moat/analytics/mobile/iro/h$a;->c:Lcom/moat/analytics/mobile/iro/h$a;

    :goto_1
    iput-object v3, p0, Lcom/moat/analytics/mobile/iro/h;->m:Lcom/moat/analytics/mobile/iro/h$a;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/moat/analytics/mobile/iro/h;->m:Lcom/moat/analytics/mobile/iro/h$a;

    sget-object v4, Lcom/moat/analytics/mobile/iro/h$a;->b:Lcom/moat/analytics/mobile/iro/h$a;

    if-ne v3, v4, :cond_6

    sget-object v9, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    goto :goto_0

    :cond_6
    int-to-double v3, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v3, v0

    const/4 v4, -0x1

    if-le v3, v4, :cond_8

    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    sget-object v4, Lcom/moat/analytics/mobile/iro/h;->g:[Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aget-object v3, v4, v3

    iget-object v4, p0, Lcom/moat/analytics/mobile/iro/h;->h:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/moat/analytics/mobile/iro/h;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v3

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/moat/analytics/mobile/iro/h;->m:Lcom/moat/analytics/mobile/iro/h$a;

    sget-object v4, Lcom/moat/analytics/mobile/iro/h$a;->b:Lcom/moat/analytics/mobile/iro/h$a;

    if-eq v3, v4, :cond_8

    sget-object v9, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    sget-object v3, Lcom/moat/analytics/mobile/iro/h$a;->b:Lcom/moat/analytics/mobile/iro/h$a;

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v9, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_a

    iget-wide v4, p0, Lcom/moat/analytics/mobile/iro/h;->o:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_a

    iget-wide v4, p0, Lcom/moat/analytics/mobile/iro/h;->o:D

    const/4 v6, 0x0

    sub-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v4, v4, v10

    if-lez v4, :cond_a

    sget-object v9, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    new-instance v3, Lcom/moat/analytics/mobile/iro/MoatAdEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->k()Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v9, v2, v4}, Lcom/moat/analytics/mobile/iro/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/iro/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v3}, Lcom/moat/analytics/mobile/iro/h;->dispatchEvent(Lcom/moat/analytics/mobile/iro/MoatAdEvent;)V

    :cond_b
    iput-wide v7, p0, Lcom/moat/analytics/mobile/iro/h;->o:D

    iput v1, p0, Lcom/moat/analytics/mobile/iro/h;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    iget v2, p0, Lcom/moat/analytics/mobile/iro/h;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/moat/analytics/mobile/iro/h;->q:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_d
    :goto_5
    return v1
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/iro/c;->setPlayerVolume(Ljava/lang/Double;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/h;->j()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/iro/h;->o:D

    return-void
.end method

.method public stopTracking()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/iro/MoatAdEventType;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/iro/h;->dispatchEvent(Lcom/moat/analytics/mobile/iro/MoatAdEvent;)V

    invoke-super {p0}, Lcom/moat/analytics/mobile/iro/c;->stopTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/n;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
