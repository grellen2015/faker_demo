.class public final Lcom/google/android/gms/internal/ads/zzbkz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdth;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdth<",
        "Lcom/google/android/gms/internal/ads/zzave;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfef:Lcom/google/android/gms/internal/ads/zzbkx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkz;->zzfef:Lcom/google/android/gms/internal/ads/zzbkx;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkz;->zzfef:Lcom/google/android/gms/internal/ads/zzbkx;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkx;->zzacx()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzave;

    return-object v0
.end method