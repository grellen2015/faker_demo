.class public final Lcom/google/android/gms/internal/ads/zzdec;
.super Lcom/google/android/gms/internal/ads/zzdoa;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdec$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdoa<",
        "Lcom/google/android/gms/internal/ads/zzdec;",
        "Lcom/google/android/gms/internal/ads/zzdec$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpl;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpu<",
            "Lcom/google/android/gms/internal/ads/zzdec;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgrd:Lcom/google/android/gms/internal/ads/zzdec;


# instance fields
.field private zzgqu:I

.field private zzgrb:Lcom/google/android/gms/internal/ads/zzdee;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdec;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    .line 28
    const-class v0, Lcom/google/android/gms/internal/ads/zzdec;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoa;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdoa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoa;-><init>()V

    return-void
.end method

.method public static zzac(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzdec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdoj;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdoa;->zza(Lcom/google/android/gms/internal/ads/zzdoa;Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzdoa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdec;

    return-object p0
.end method

.method public static zzaow()Lcom/google/android/gms/internal/ads/zzdec;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    return-object v0
.end method

.method static synthetic zzaox()Lcom/google/android/gms/internal/ads/zzdec;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    return-object v0
.end method


# virtual methods
.method public final getKeySize()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzgqu:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzded;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdec;->zzdv:Lcom/google/android/gms/internal/ads/zzdpu;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzdec;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdec;->zzdv:Lcom/google/android/gms/internal/ads/zzdpu;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdoa$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdoa$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdoa;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdec;->zzdv:Lcom/google/android/gms/internal/ads/zzdpu;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzgrb"

    aput-object v0, p1, p2

    const-string p2, "zzgqu"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdec;->zzgrd:Lcom/google/android/gms/internal/ads/zzdec;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdec;->zza(Lcom/google/android/gms/internal/ads/zzdpj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdec$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdec$zza;-><init>(Lcom/google/android/gms/internal/ads/zzded;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdec;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdec;-><init>()V

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

.method public final zzaos()Lcom/google/android/gms/internal/ads/zzdee;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzgrb:Lcom/google/android/gms/internal/ads/zzdee;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdee;->zzaoz()Lcom/google/android/gms/internal/ads/zzdee;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzgrb:Lcom/google/android/gms/internal/ads/zzdee;

    return-object v0
.end method
