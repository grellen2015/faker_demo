.class Lcom/google/android/gms/internal/ads/zzmj;
.super Ljava/lang/Object;


# instance fields
.field private zzafv:I

.field protected zzagg:Landroid/media/AudioTrack;

.field private zzahg:J

.field private zzahh:J

.field private zzahi:J

.field private zzaxc:Z

.field private zzaxd:J

.field private zzaxe:J

.field private zzaxf:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmi;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmj;-><init>()V

    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 4

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzagg:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public zza(Landroid/media/AudioTrack;Z)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzagg:Landroid/media/AudioTrack;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxc:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxd:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahg:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahh:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahi:J

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzafv:I

    :cond_0
    return-void
.end method

.method public final zzdv()J
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmj;->zzev()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzafv:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzeh(J)V
    .locals 4

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmj;->zzev()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxe:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxd:J

    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxf:J

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzagg:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public final zzev()J
    .locals 8

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxd:J

    sub-long/2addr v0, v2

    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzafv:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 23
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxf:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxe:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzagg:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    return-wide v2

    :cond_1
    const-wide v4, 0xffffffffL

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzagg:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzaxc:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 30
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahi:J

    .line 31
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahi:J

    add-long/2addr v4, v0

    .line 32
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahg:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 33
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahh:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahh:J

    .line 34
    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahg:J

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zzahh:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public zzex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzey()J
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzez()J
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method