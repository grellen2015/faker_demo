.class final Lcom/unity3d/services/banners/api/BannerListener$5;
.super Ljava/lang/Object;
.source "BannerListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/api/BannerListener;->sendLoadEvent(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/unity3d/services/banners/api/BannerListener$5;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/api/BannerListener$5;->val$placementId:Ljava/lang/String;

    invoke-static {}, Lcom/unity3d/services/banners/view/BannerView;->getInstance()Lcom/unity3d/services/banners/view/BannerView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unity3d/services/banners/IUnityBannerListener;->onUnityBannerLoaded(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
