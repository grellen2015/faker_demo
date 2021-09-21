.class public final Lcom/google/android/gms/internal/ads/zzpq;
.super Lcom/google/android/gms/internal/ads/zzpv;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzpq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final zzbhw:I

.field private final zzbhx:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzpr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "APIC"

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->mimeType:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->description:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhw:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhx:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 0

    const-string p2, "APIC"

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->mimeType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->description:Ljava/lang/String;

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhw:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhx:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzpq;

    .line 18
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhw:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzpq;->zzbhw:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzpq;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzpq;->description:Ljava/lang/String;

    .line 19
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhx:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpq;->zzbhx:[B

    .line 20
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhw:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhx:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhw:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzbhx:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
