.class public final Lcom/google/android/gms/internal/ads/zzdgz$zza;
.super Lcom/google/android/gms/internal/ads/zzdoa$zza;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdoa$zza<",
        "Lcom/google/android/gms/internal/ads/zzdgz;",
        "Lcom/google/android/gms/internal/ads/zzdgz$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgz;->zzasl()Lcom/google/android/gms/internal/ads/zzdgz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdoa$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdoa;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdha;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdgz$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdgz$zzb;)Lcom/google/android/gms/internal/ads/zzdgz$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdoa$zza;->zzaxw()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdoa;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgz;->zza(Lcom/google/android/gms/internal/ads/zzdgz;Lcom/google/android/gms/internal/ads/zzdgz$zzb;)V

    return-object p0
.end method

.method public final zzes(I)Lcom/google/android/gms/internal/ads/zzdgz$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdoa$zza;->zzaxw()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdoa;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgz;->zza(Lcom/google/android/gms/internal/ads/zzdgz;I)V

    return-object p0
.end method
