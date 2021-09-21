.class final Lcom/moat/analytics/mobile/cha/s;
.super Lcom/moat/analytics/mobile/cha/i;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/NativeVideoTracker;


# instance fields
.field private ॱˊ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 27
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/cha/i;-><init>(Ljava/lang/String;)V

    const-string v0, "NativeVideoTracker"

    const-string v1, "In initialization method."

    const/4 v2, 0x3

    .line 28
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PartnerCode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    :cond_1
    const-string p1, "empty"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeDisplayTracker creation problem, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ERROR] "

    const-string v3, "NativeVideoTracker"

    .line 1055
    invoke-static {v2, v3, p0, v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    :cond_2
    const-string p1, "[SUCCESS] "

    const-string v0, "NativeVideoTracker created"

    .line 35
    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/MediaPlayer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/s;->ˎ()V

    .line 53
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/s;->ॱ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    .line 2078
    :try_start_1
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :try_start_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    .line 56
    invoke-super {p0, p1, p3}, Lcom/moat/analytics/mobile/cha/i;->ॱ(Ljava/util/Map;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 2080
    :catch_0
    new-instance p1, Lcom/moat/analytics/mobile/cha/o;

    const-string p2, "Playback has already completed"

    invoke-direct {p1, p2}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p1, "Null player instance"

    .line 2075
    new-instance p2, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {p2, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    const-string p2, "trackVideoAd"

    .line 59
    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/moat/analytics/mobile/cha/s;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    if-eqz p2, :cond_1

    .line 61
    iget-object p2, p0, Lcom/moat/analytics/mobile/cha/s;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    invoke-interface {p2, p1}, Lcom/moat/analytics/mobile/cha/TrackerListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x3

    const-string p3, "NativeVideoTracker"

    .line 63
    invoke-static {p2, p3, p0, p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "[ERROR] "

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "NativeVideoTracker "

    .line 3045
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method final ˋ()Ljava/lang/String;
    .locals 1

    const-string v0, "NativeVideoTracker"

    return-object v0
.end method

.method final ˋ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 4040
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Player is null"

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/i;->ˋ(Ljava/util/List;)V

    return-void
.end method

.method final ͺ()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final ॱˋ()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 88
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method final ॱˎ()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method final ॱᐝ()Ljava/lang/Integer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 100
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method final ᐝ()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/s;->ॱˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "width"

    .line 117
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    .line 118
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    .line 119
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
