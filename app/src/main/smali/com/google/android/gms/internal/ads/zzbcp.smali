.class public abstract Lcom/google/android/gms/internal/ads/zzbcp;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdk;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzare;
.end annotation


# instance fields
.field protected final zzebt:Lcom/google/android/gms/internal/ads/zzbcz;

.field protected final zzebu:Lcom/google/android/gms/internal/ads/zzbdj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzebt:Lcom/google/android/gms/internal/ads/zzbcz;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzebu:Lcom/google/android/gms/internal/ads/zzbdj;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbco;)V
.end method

.method public zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcp;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public zzcy(I)V
    .locals 0

    return-void
.end method

.method public zzcz(I)V
    .locals 0

    return-void
.end method

.method public zzda(I)V
    .locals 0

    return-void
.end method

.method public zzdb(I)V
    .locals 0

    return-void
.end method

.method public zzdc(I)V
    .locals 0

    return-void
.end method

.method public abstract zzxg()Ljava/lang/String;
.end method

.method public abstract zzxk()V
.end method
