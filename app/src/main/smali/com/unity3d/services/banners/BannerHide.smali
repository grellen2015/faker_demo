.class public Lcom/unity3d/services/banners/BannerHide;
.super Ljava/lang/Object;
.source "BannerHide.java"


# static fields
.field private static _waitHideStatus:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized hide()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-class v0, Lcom/unity3d/services/banners/BannerHide;

    monitor-enter v0

    .line 15
    :try_start_0
    const-class v1, Lcom/unity3d/services/banners/BannerHide;

    const-string v2, "showCallback"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 16
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v2, Lcom/unity3d/services/banners/BannerHide;->_waitHideStatus:Landroid/os/ConditionVariable;

    .line 17
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    const-string v3, "webview"

    const-string v4, "hideBanner"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Lcom/unity3d/services/banners/BannerHide;->_waitHideStatus:Landroid/os/ConditionVariable;

    invoke-static {}, Lcom/unity3d/services/ads/properties/AdsProperties;->getShowTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    const/4 v2, 0x0

    .line 19
    sput-object v2, Lcom/unity3d/services/banners/BannerHide;->_waitHideStatus:Landroid/os/ConditionVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1
.end method

.method public static showCallback(Lcom/unity3d/services/core/webview/bridge/CallbackStatus;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/unity3d/services/banners/BannerHide;->_waitHideStatus:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 25
    sget-object p0, Lcom/unity3d/services/banners/BannerHide;->_waitHideStatus:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method
