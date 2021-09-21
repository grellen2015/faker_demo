.class public Lcom/ironsource/sdk/IronSourceNetwork;
.super Ljava/lang/Object;
.source "IronSourceNetwork.java"


# static fields
.field private static ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

.field private static mConsentParams:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized applyConsentInfo(Lorg/json/JSONObject;)V
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 152
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 156
    monitor-exit v0

    return-void

    .line 158
    :cond_1
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->updateConsentInfo(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createBanner(Landroid/app/Activity;Lcom/ironsource/sdk/ISAdSize;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 226
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->createBanner(Landroid/app/Activity;Lcom/ironsource/sdk/ISAdSize;)Lcom/ironsource/sdk/ISNAdView/ISNAdView;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 224
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 201
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->getOfferWallCredits(Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 199
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/service/TokenService;->getInstance()Lcom/ironsource/sdk/service/TokenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/service/TokenService;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initBanner(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnBannerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnBannerListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 210
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->initBanner(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnBannerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 208
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 185
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->initOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 183
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    if-nez v1, :cond_0

    .line 40
    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->setInitSDKParams(Ljava/util/Map;)V

    .line 41
    invoke-static {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->createInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/IronSourceNetworkAPI;

    move-result-object p0

    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    .line 47
    sget-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->mConsentParams:Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isAdAvailableForInstance(Lcom/ironsource/sdk/IronSourceAdInstance;)Z
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 116
    monitor-exit v0

    return p0

    .line 118
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->isAdAvailable(Lcom/ironsource/sdk/IronSourceAdInstance;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 114
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-static {p0, v1}, Lcom/ironsource/sdk/IronSourceNetwork;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 84
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 71
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->loadAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadBanner(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 218
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 219
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->loadBanner(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 217
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPause(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 126
    monitor-exit v0

    return-void

    .line 129
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->onPause(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 124
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onResume(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 137
    monitor-exit v0

    return-void

    .line 139
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->onResume(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized release(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 163
    monitor-exit v0

    return-void

    .line 165
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->release(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 161
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showAd(Lcom/ironsource/sdk/IronSourceAdInstance;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    const/4 v1, 0x0

    .line 103
    :try_start_0
    invoke-static {p0, v1}, Lcom/ironsource/sdk/IronSourceNetwork;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 102
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/IronSourceAdInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 96
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->showAd(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showOfferWall(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 192
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->validateInitSDK()V

    .line 193
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;

    invoke-interface {v1, p0}, Lcom/ironsource/sdk/IronSourceNetworkAPI;->showOfferWall(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 191
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 1

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 146
    :try_start_0
    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->mConsentParams:Lorg/json/JSONObject;

    .line 147
    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized validateInitSDK()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->ironSourceNetwork:Lcom/ironsource/sdk/IronSourceNetworkAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 55
    monitor-exit v0

    return-void

    .line 53
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call initSDK first"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0

    throw v1
.end method
