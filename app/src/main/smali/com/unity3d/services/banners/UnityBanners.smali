.class public final Lcom/unity3d/services/banners/UnityBanners;
.super Ljava/lang/Object;
.source "UnityBanners.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method public static destroy()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/services/banners/UnityBanners$2;

    invoke-direct {v1}, Lcom/unity3d/services/banners/UnityBanners$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;
    .locals 1

    .line 87
    invoke-static {}, Lcom/unity3d/services/ads/properties/AdsProperties;->getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    return-object v0
.end method

.method public static loadBanner(Landroid/app/Activity;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/unity3d/services/ads/placement/Placement;->getDefaultBannerPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/services/banners/UnityBanners;->loadBanner(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static loadBanner(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 26
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unity Ads is not supported on this device."

    .line 27
    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "UnityAds is not initialized."

    .line 30
    invoke-static {p0}, Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_1
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Banner placement "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not ready"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/services/banners/UnityBanners;->sendError(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/services/banners/UnityBanners$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/banners/UnityBanners$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static sendError(Ljava/lang/String;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$3;

    invoke-direct {v0, p0}, Lcom/unity3d/services/banners/UnityBanners$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setBannerListener(Lcom/unity3d/services/banners/IUnityBannerListener;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/unity3d/services/ads/properties/AdsProperties;->setBannerListener(Lcom/unity3d/services/banners/IUnityBannerListener;)V

    return-void
.end method

.method public static setBannerPosition(Lcom/unity3d/services/banners/view/BannerPosition;)V
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/unity3d/services/core/properties/ClientProperties;->setBannerDefaultPosition(Lcom/unity3d/services/banners/view/BannerPosition;)V

    return-void
.end method
