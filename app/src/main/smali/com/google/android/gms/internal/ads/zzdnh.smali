.class public abstract Lcom/google/android/gms/internal/ads/zzdnh;
.super Lcom/google/android/gms/internal/ads/zzdmp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdnh$zze;,
        Lcom/google/android/gms/internal/ads/zzdnh$zzd;,
        Lcom/google/android/gms/internal/ads/zzdnh$zzb;,
        Lcom/google/android/gms/internal/ads/zzdnh$zza;,
        Lcom/google/android/gms/internal/ads/zzdnh$zzc;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzhdn:Z


# instance fields
.field zzhdo:Lcom/google/android/gms/internal/ads/zzdnj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    const-class v0, Lcom/google/android/gms/internal/ads/zzdnh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdnh;->logger:Ljava/util/logging/Logger;

    .line 175
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqy;->zzbac()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzhdn:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdni;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdnh;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/ads/zzdoq;)I
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoq;->zzaxj()I

    move-result p1

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdoq;)I
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdoq;->zzaxj()I

    move-result p0

    .line 129
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzab(II)I
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzge(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzab([B)Lcom/google/android/gms/internal/ads/zzdnh;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnh$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdnh$zza;-><init>([BII)V

    return-object v1
.end method

.method public static zzac(II)I
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzac([B)I
    .locals 1

    .line 134
    array-length p0, p0

    .line 135
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzad(II)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgk(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzae(II)I
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzaf(II)I
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzag(II)I
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzge(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic zzaww()Z
    .locals 1

    .line 173
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzhdn:Z

    return v0
.end method

.method public static zzb(IF)I
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzdoq;)I
    .locals 2

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 77
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzac(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 78
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zza(ILcom/google/android/gms/internal/ads/zzdoq;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdqa;)I
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzb(Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdqa;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdqa;)I
    .locals 2

    .line 140
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdmh;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdmh;->zzavg()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzak(Ljava/lang/Object;)I

    move-result v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdmh;->zzfi(I)V

    .line 147
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzbg(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static zzc(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzc(ID)I
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzdmq;)I
    .locals 1

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmq;->size()I

    move-result p1

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzdpj;)I
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzk(Lcom/google/android/gms/internal/ads/zzdpj;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdqa;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 163
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmh;

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzavg()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqa;->zzak(Ljava/lang/Object;)I

    move-result v0

    .line 167
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdmh;->zzfi(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzdmq;)I
    .locals 2

    const/4 v0, 0x1

    .line 72
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 73
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzac(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 74
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzc(ILcom/google/android/gms/internal/ads/zzdmq;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzdpj;)I
    .locals 2

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 69
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzac(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 70
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzc(ILcom/google/android/gms/internal/ads/zzdpj;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzda(Lcom/google/android/gms/internal/ads/zzdmq;)I
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdmq;->size()I

    move-result p0

    .line 132
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzfm(J)I
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfn(J)I

    move-result p0

    return p0
.end method

.method public static zzfn(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static zzfo(J)I
    .locals 0

    .line 113
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfr(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfn(J)I

    move-result p0

    return p0
.end method

.method public static zzfp(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzfq(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method private static zzfr(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzg(ILjava/lang/String;)I
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgx(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzgd(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 82
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p0

    return p0
.end method

.method public static zzge(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzgf(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzgg(I)I
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgk(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p0

    return p0
.end method

.method public static zzgh(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgi(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgj(I)I
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzge(I)I

    move-result p0

    return p0
.end method

.method private static zzgk(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzgl(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p0

    return p0
.end method

.method public static zzgx(Ljava/lang/String;)I
    .locals 1

    .line 120
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdre; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoc;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 124
    array-length v0, p0

    .line 126
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzh(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzj(IZ)I
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzk(IJ)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    .line 43
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfn(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzdpj;)I
    .locals 1

    .line 137
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxj()I

    move-result p0

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzl(IJ)I
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfn(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzdpj;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxj()I

    move-result p0

    return p0
.end method

.method public static zzm(IJ)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    .line 47
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfr(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfn(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzm(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzdnh;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnh$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnh$zzb;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqy;->zzbad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnh$zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnh$zze;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnh$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnh$zzd;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzn(IJ)I
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzo(IJ)I
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzaa(II)V

    return-void
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzdmq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzdpj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdqa;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdqa;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdnh;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdoc;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 156
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzga(I)V

    const/4 p2, 0x0

    .line 157
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdmp;->zzh([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzdnh$zzc; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 161
    throw p1

    :catch_1
    move-exception p1

    .line 160
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdnh$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdnh$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzaa(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzawu()I
.end method

.method public final zzawv()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnh;->zzawu()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfl(J)V

    return-void
.end method

.method public final zzb(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdnh;->zzj(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzdmq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzdpj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzbf(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzd(B)V

    return-void
.end method

.method public abstract zzcz(Lcom/google/android/gms/internal/ads/zzdmq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzf(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzfj(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzfk(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfr(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfj(J)V

    return-void
.end method

.method public abstract zzfl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzfz(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzg(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgc(I)V

    return-void
.end method

.method public abstract zzga(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzgb(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgk(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnh;->zzga(I)V

    return-void
.end method

.method public abstract zzgc(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgw(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzi(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzdnh;->zzfr(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdnh;->zzh(IJ)V

    return-void
.end method

.method public abstract zzi(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzj(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzj(Lcom/google/android/gms/internal/ads/zzdpj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzk([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzw(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzx(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzy(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzz(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzgk(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zzy(II)V

    return-void
.end method
