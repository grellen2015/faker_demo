.class final Lcom/unity3d/services/banners/api/Banner$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/api/Banner;->destroy(Lcom/unity3d/services/core/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/unity3d/services/banners/view/BannerView;->getInstance()Lcom/unity3d/services/banners/view/BannerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/unity3d/services/banners/view/BannerView;->destroy()V

    .line 59
    invoke-static {}, Lcom/unity3d/services/banners/properties/BannerProperties;->getBannerParent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/unity3d/services/banners/properties/BannerProperties;->getBannerParent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/unity3d/services/banners/properties/BannerProperties;->getBannerParent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Lcom/unity3d/services/banners/properties/BannerProperties;->setBannerParent(Landroid/view/View;)V

    .line 67
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/banners/view/BannerEvent;->BANNER_DESTROYED:Lcom/unity3d/services/banners/view/BannerEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 54
    monitor-exit p0

    throw v0
.end method
