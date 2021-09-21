.class final Lcom/facebook/applinks/AppLinkData$2;
.super Ljava/lang/Object;
.source "AppLinkData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/applinks/AppLinkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/applinks/AppLinkData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/applinks/AppLinkData;
    .locals 2

    .line 482
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/applinks/AppLinkData;-><init>(Landroid/os/Parcel;Lcom/facebook/applinks/AppLinkData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/facebook/applinks/AppLinkData$2;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/applinks/AppLinkData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/applinks/AppLinkData;
    .locals 0

    .line 486
    new-array p1, p1, [Lcom/facebook/applinks/AppLinkData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 480
    invoke-virtual {p0, p1}, Lcom/facebook/applinks/AppLinkData$2;->newArray(I)[Lcom/facebook/applinks/AppLinkData;

    move-result-object p1

    return-object p1
.end method
