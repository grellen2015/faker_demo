.class abstract Lcom/moat/analytics/mobile/cha/i;
.super Lcom/moat/analytics/mobile/cha/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/i$c;
    }
.end annotation


# instance fields
.field private ˋॱ:I

.field private ˏॱ:I

.field private ͺ:I

.field private ॱˊ:D

.field private ॱˋ:I

.field private ॱˎ:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/cha/b;-><init>(Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    .line 45
    iput p1, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˋ:I

    .line 46
    iput p1, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    .line 47
    iput p1, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I

    .line 49
    sget p1, Lcom/moat/analytics/mobile/cha/i$c;->ˏ:I

    iput p1, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 50
    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    return-void
.end method


# virtual methods
.method public setPlayerVolume(Ljava/lang/Double;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->setPlayerVolume(Ljava/lang/Double;)V

    .line 89
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ˊॱ()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 77
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/cha/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/cha/MoatAdEventType;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/cha/i;->dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V

    .line 78
    invoke-super {p0}, Lcom/moat/analytics/mobile/cha/b;->stopTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 80
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method final ʻॱ()Z
    .locals 12
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ͺ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ˋॱ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˋ()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 178
    iget v3, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    if-ltz v3, :cond_1

    if-gez v2, :cond_1

    return v1

    .line 182
    :cond_1
    iput v2, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    if-nez v2, :cond_2

    return v0

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱᐝ()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 190
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˎ()Z

    move-result v4

    int-to-double v5, v3

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    div-double/2addr v5, v7

    .line 193
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ˊॱ()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x0

    .line 197
    iget v10, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˋ:I

    if-le v2, v10, :cond_3

    .line 198
    iput v2, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˋ:I

    .line 201
    :cond_3
    iget v10, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4

    .line 202
    iput v3, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    :cond_4
    if-eqz v4, :cond_7

    .line 206
    iget v3, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    sget v4, Lcom/moat/analytics/mobile/cha/i$c;->ˏ:I

    if-ne v3, v4, :cond_5

    .line 207
    sget-object v9, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 208
    sget v3, Lcom/moat/analytics/mobile/cha/i$c;->ˎ:I

    iput v3, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    goto :goto_0

    .line 209
    :cond_5
    iget v3, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    sget v4, Lcom/moat/analytics/mobile/cha/i$c;->ˊ:I

    if-ne v3, v4, :cond_6

    .line 210
    sget-object v9, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 211
    sget v3, Lcom/moat/analytics/mobile/cha/i$c;->ˎ:I

    iput v3, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    goto :goto_0

    :cond_6
    int-to-double v3, v2

    div-double/2addr v3, v5

    .line 213
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v3, v0

    if-ltz v3, :cond_8

    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    .line 215
    sget-object v4, Lcom/moat/analytics/mobile/cha/i;->ʻ:[Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    aget-object v3, v4, v3

    .line 216
    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/i;->ʼ:Ljava/util/HashMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 218
    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/i;->ʼ:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v3

    goto :goto_0

    .line 223
    :cond_7
    iget v3, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    sget v4, Lcom/moat/analytics/mobile/cha/i$c;->ˊ:I

    if-eq v3, v4, :cond_8

    .line 224
    sget-object v9, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 225
    sget v3, Lcom/moat/analytics/mobile/cha/i$c;->ˊ:I

    iput v3, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    :cond_8
    :goto_0
    if-eqz v9, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_a

    .line 231
    iget-wide v4, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_a

    iget-wide v4, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    const/4 v6, 0x0

    sub-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v4, v4, v10

    if-lez v4, :cond_a

    .line 232
    sget-object v9, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    .line 237
    new-instance v3, Lcom/moat/analytics/mobile/cha/MoatAdEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˊ()Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v9, v2, v4}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/cha/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v3}, Lcom/moat/analytics/mobile/cha/i;->dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V

    .line 240
    :cond_b
    iput-wide v7, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˊ:D

    .line 241
    iput v1, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    iget v2, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/moat/analytics/mobile/cha/i;->ॱˎ:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_c

    return v0

    :cond_c
    return v1

    :cond_d
    :goto_2
    return v1
.end method

.method final ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;
    .locals 3

    .line 95
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˋ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    goto :goto_1

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/i;->ॱˋ()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    :goto_0
    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    .line 106
    :goto_1
    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    if-lez v1, :cond_2

    .line 110
    :cond_1
    iget v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˏॱ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    .line 114
    :cond_2
    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-ne v1, v2, :cond_5

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/moat/analytics/mobile/cha/i;->ͺ:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/i;->ˋ(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 124
    :cond_3
    sget v0, Lcom/moat/analytics/mobile/cha/i$c;->ॱ:I

    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    goto :goto_3

    .line 121
    :cond_4
    :goto_2
    sget v0, Lcom/moat/analytics/mobile/cha/i$c;->ˋ:I

    iput v0, p0, Lcom/moat/analytics/mobile/cha/i;->ˋॱ:I

    .line 122
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 128
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method abstract ͺ()Z
.end method

.method public final ॱ(Ljava/util/Map;Landroid/view/View;)Z
    .locals 3
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

    .line 60
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/moat/analytics/mobile/cha/b;->ॱ(Ljava/util/Map;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1147
    new-instance p2, Lcom/moat/analytics/mobile/cha/i$5;

    invoke-direct {p2, p0}, Lcom/moat/analytics/mobile/cha/i$5;-><init>(Lcom/moat/analytics/mobile/cha/i;)V

    .line 1166
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/i;->ᐝ:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "IntervalVideoTracker"

    const-string v1, "Problem with video loop"

    .line 67
    invoke-static {p2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "trackVideoAd"

    .line 68
    invoke-virtual {p0, p2, p1}, Lcom/moat/analytics/mobile/cha/i;->ॱ(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1
.end method

.method abstract ॱˋ()Ljava/lang/Integer;
.end method

.method abstract ॱˎ()Z
.end method

.method abstract ॱᐝ()Ljava/lang/Integer;
.end method
