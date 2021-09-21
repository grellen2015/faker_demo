.class public Lcom/unity3d/services/ads/properties/AdsProperties;
.super Ljava/lang/Object;
.source "AdsProperties.java"


# static fields
.field private static _listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/ads/IUnityAdsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _showTimeout:I

.field private static bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    const/16 v0, 0x1388

    .line 13
    sput v0, Lcom/unity3d/services/ads/properties/AdsProperties;->_showTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 34
    sget-object v0, Lcom/unity3d/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/unity3d/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;
    .locals 1

    .line 29
    sget-object v0, Lcom/unity3d/services/ads/properties/AdsProperties;->bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-object v0
.end method

.method public static getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/unity3d/ads/IUnityAdsListener;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/unity3d/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    return-object v0
.end method

.method public static getShowTimeout()I
    .locals 1

    .line 21
    sget v0, Lcom/unity3d/services/ads/properties/AdsProperties;->_showTimeout:I

    return v0
.end method

.method public static removeListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 1

    .line 45
    sget-object v0, Lcom/unity3d/services/ads/properties/AdsProperties;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setBannerListener(Lcom/unity3d/services/banners/IUnityBannerListener;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/unity3d/services/ads/properties/AdsProperties;->bannerListener:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-void
.end method

.method public static setShowTimeout(I)V
    .locals 0

    .line 17
    sput p0, Lcom/unity3d/services/ads/properties/AdsProperties;->_showTimeout:I

    return-void
.end method
