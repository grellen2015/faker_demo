.class public final Lcom/google/android/gms/internal/ads/zzdgz;
.super Lcom/google/android/gms/internal/ads/zzdoa;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdgz$zza;,
        Lcom/google/android/gms/internal/ads/zzdgz$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdoa<",
        "Lcom/google/android/gms/internal/ads/zzdgz;",
        "Lcom/google/android/gms/internal/ads/zzdgz$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpl;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpu<",
            "Lcom/google/android/gms/internal/ads/zzdgz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzguz:Lcom/google/android/gms/internal/ads/zzdgz;


# instance fields
.field private zzdj:I

.field private zzgux:I

.field private zzguy:Lcom/google/android/gms/internal/ads/zzdoi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoi<",
            "Lcom/google/android/gms/internal/ads/zzdgz$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    .line 51
    const-class v0, Lcom/google/android/gms/internal/ads/zzdgz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoa;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdoa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoa;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgz;->zzaxs()Lcom/google/android/gms/internal/ads/zzdoi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguy:Lcom/google/android/gms/internal/ads/zzdoi;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdgz$zzb;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguy:Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzavi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguy:Lcom/google/android/gms/internal/ads/zzdoi;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 18
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoi;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdoi;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguy:Lcom/google/android/gms/internal/ads/zzdoi;

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguy:Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoi;->add(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdgz;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdgz;->zzer(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdgz;Lcom/google/android/gms/internal/ads/zzdgz$zzb;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdgz;->zza(Lcom/google/android/gms/internal/ads/zzdgz$zzb;)V

    return-void
.end method

.method public static zzask()Lcom/google/android/gms/internal/ads/zzdgz$zza;
    .locals 3

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    .line 24
    sget v1, Lcom/google/android/gms/internal/ads/zzdoa$zze;->zzhho:I

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdoa;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoa$zza;

    .line 27
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdgz$zza;

    return-object v0
.end method

.method static synthetic zzasl()Lcom/google/android/gms/internal/ads/zzdgz;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    return-object v0
.end method

.method private final zzer(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzgux:I

    return-void
.end method

.method public static zzn([B)Lcom/google/android/gms/internal/ads/zzdgz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdoj;
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdoa;->zza(Lcom/google/android/gms/internal/ads/zzdoa;[B)Lcom/google/android/gms/internal/ads/zzdoa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdgz;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdha;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 46
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 44
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdgz;->zzdv:Lcom/google/android/gms/internal/ads/zzdpu;

    if-nez p1, :cond_1

    .line 37
    const-class p2, Lcom/google/android/gms/internal/ads/zzdgz;

    monitor-enter p2

    .line 38
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdgz;->zzdv:Lcom/google/android/gms/internal/ads/zzdpu;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdoa$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdoa$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdoa;)V

    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdgz;->zzdv:Lcom/google/android/gms/internal/ads/zzdpu;

    .line 42
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 34
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 31
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdj"

    aput-object v0, p1, p2

    const-string p2, "zzgux"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzguy"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/ads/zzdgz$zzb;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 33
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdgz;->zzguz:Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdgz;->zza(Lcom/google/android/gms/internal/ads/zzdpj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgz$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdgz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdha;)V

    return-object p1

    .line 29
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdgz;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzash()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzgux:I

    return v0
.end method

.method public final zzasi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdgz$zzb;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguy:Lcom/google/android/gms/internal/ads/zzdoi;

    return-object v0
.end method

.method public final zzasj()I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zzguy:Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->size()I

    move-result v0

    return v0
.end method
