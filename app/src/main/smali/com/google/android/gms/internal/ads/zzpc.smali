.class final Lcom/google/android/gms/internal/ads/zzpc;
.super Ljava/lang/Object;


# instance fields
.field public final zzahp:[I

.field public final zzahq:[J

.field public final zzajr:[I

.field public final zzand:I

.field public final zzane:[J

.field public final zzbet:I


# direct methods
.method public constructor <init>([J[II[J[I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    array-length v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsk;->checkArgument(Z)V

    .line 3
    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsk;->checkArgument(Z)V

    .line 4
    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzsk;->checkArgument(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzahq:[J

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzahp:[I

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzbet:I

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzane:[J

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzajr:[I

    .line 10
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzand:I

    return-void
.end method


# virtual methods
.method public final zzej(J)I
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzane:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzsy;->zza([JJZZ)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzajr:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final zzek(J)I
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzane:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzsy;->zzb([JJZZ)I

    move-result p1

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzane:[J

    array-length p2, p2

    if-ge p1, p2, :cond_1

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpc;->zzajr:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
