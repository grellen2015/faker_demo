.class public final Lcom/google/android/gms/internal/ads/zzxm;
.super Lcom/google/android/gms/internal/ads/zzdrq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrq<",
        "Lcom/google/android/gms/internal/ads/zzxm;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcfp:Ljava/lang/Integer;

.field public zzcfq:Ljava/lang/Integer;

.field public zzcfr:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrq;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfp:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfq:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfr:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzhno:Lcom/google/android/gms/internal/ads/zzdrs;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzhnx:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfp:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfp:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdro;->zzx(II)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfq:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfq:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdro;->zzx(II)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfr:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfr:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdro;->zzx(II)V

    .line 15
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Lcom/google/android/gms/internal/ads/zzdro;)V

    return-void
.end method

.method protected final zzor()I
    .locals 3

    .line 17
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdrq;->zzor()I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfp:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfp:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdro;->zzab(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfq:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfq:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdro;->zzab(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfr:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxm;->zzcfr:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdro;->zzab(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
