.class final Lcom/google/android/gms/internal/ads/zzmk;
.super Lcom/google/android/gms/internal/ads/zzmj;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final zzahj:Landroid/media/AudioTimestamp;

.field private zzahk:J

.field private zzahl:J

.field private zzahm:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzmj;-><init>(Lcom/google/android/gms/internal/ads/zzmi;)V

    .line 2
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahj:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/media/AudioTrack;Z)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmj;->zza(Landroid/media/AudioTrack;Z)V

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahk:J

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahl:J

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahm:J

    return-void
.end method

.method public final zzex()Z
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzagg:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahj:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahj:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahl:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahk:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahk:J

    .line 14
    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahl:J

    .line 15
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahk:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahm:J

    :cond_1
    return v0
.end method

.method public final zzey()J
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahj:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public final zzez()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmk;->zzahm:J

    return-wide v0
.end method
