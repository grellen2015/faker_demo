.class public Lcom/unity3d/services/banners/BannerShow;
.super Ljava/lang/Object;
.source "BannerShow.java"


# static fields
.field private static _waitShowStatus:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized show(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-class v0, Lcom/unity3d/services/banners/BannerShow;

    monitor-enter v0

    .line 15
    :try_start_0
    const-class v1, Lcom/unity3d/services/banners/BannerShow;

    const-string v2, "showCallback"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 16
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v2, Lcom/unity3d/services/banners/BannerShow;->_waitShowStatus:Landroid/os/ConditionVariable;

    .line 17
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    const-string v4, "webview"

    const-string v5, "showBanner"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v4, v5, v1, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    .line 18
    sget-object p0, Lcom/unity3d/services/banners/BannerShow;->_waitShowStatus:Landroid/os/ConditionVariable;

    invoke-static {}, Lcom/unity3d/services/ads/properties/AdsProperties;->getShowTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    const/4 v1, 0x0

    .line 19
    sput-object v1, Lcom/unity3d/services/banners/BannerShow;->_waitShowStatus:Landroid/os/ConditionVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    throw p0
.end method

.method public static showCallback(Lcom/unity3d/services/core/webview/bridge/CallbackStatus;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/unity3d/services/banners/BannerShow;->_waitShowStatus:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 25
    sget-object p0, Lcom/unity3d/services/banners/BannerShow;->_waitShowStatus:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method
