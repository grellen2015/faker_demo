.class public Lcom/chartboost/sdk/impl/as;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 14
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 18
    check-cast p0, Landroid/app/Activity;

    const/16 v3, 0x2328

    invoke-virtual {v0, p0, v1, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method
