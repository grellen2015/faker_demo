.class public Lcom/google/android/gms/ads/mediation/MediationConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final zzemx:Landroid/os/Bundle;

.field private final zzenb:Lcom/google/android/gms/ads/AdFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzenb:Lcom/google/android/gms/ads/AdFormat;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzemx:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/google/android/gms/ads/AdFormat;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzenb:Lcom/google/android/gms/ads/AdFormat;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzemx:Landroid/os/Bundle;

    return-object v0
.end method
