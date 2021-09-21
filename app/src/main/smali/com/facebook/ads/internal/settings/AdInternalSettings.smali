.class public Lcom/facebook/ads/internal/settings/AdInternalSettings;
.super Ljava/lang/Object;
.source "AdInternalSettings.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final BOOL_AUTOPLAY_ON_MOBILE_KEY:Ljava/lang/String; = "BOOL_AUTOPLAY_ON_MOBILE_KEY"

.field public static final BOOL_CHILD_DIRECTED_KEY:Ljava/lang/String; = "BOOL_CHILD_DIRECTED_KEY"

.field private static final BOOL_DEBUGGER_STATE_KEY:Ljava/lang/String; = "BOOL_DEBUGGER_STATE_KEY"

.field private static final BOOL_DEBUG_BUILD_KEY:Ljava/lang/String; = "BOOL_DEBUG_BUILD_KEY"

.field private static final BOOL_EXPLICIT_TEST_MODE_KEY:Ljava/lang/String; = "BOOL_EXPLICIT_TEST_MODE_KEY"

.field public static final BOOL_MIXED_AUDIENCE_KEY:Ljava/lang/String; = "BOOL_MIXED_AUDIENCE_KEY"

.field private static final BOOL_VIDEO_AUTOPLAY_KEY:Ljava/lang/String; = "BOOL_VIDEO_AUTOPLAY_KEY"

.field private static final BOOL_VISIBLE_ANIMATION_KEY:Ljava/lang/String; = "BOOL_VISIBLE_ANIMATION_KEY"

.field private static final LIST_TEST_DEVICES_KEY:Ljava/lang/String; = "LIST_TEST_DEVICES_KEY"

.field public static final SRL_INTEGRATION_ERROR_MODE_KEY:Ljava/lang/String; = "SRL_INTEGRATION_ERROR_MODE_KEY"

.field private static final STR_MEDIATION_SERVICE_KEY:Ljava/lang/String; = "STR_MEDIATION_SERVICE_KEY"

.field private static final STR_URL_PREFIX_KEY:Ljava/lang/String; = "STR_URL_PREFIX_KEY"

.field public static final TEST_AD_TYPE_KEY:Ljava/lang/String; = "TEST_AD_TYPE_KEY"

.field public static sForceIpc:Z

.field public static sMultiprocessSupportMode:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

.field public static sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    invoke-direct {v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    .line 27
    sget-object v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->MULTIPROCESS_SUPPORT_MODE_AUTO:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    sput-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sMultiprocessSupportMode:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sForceIpc:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTestDevice(Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getTestDevicesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addTestDevices(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getTestDevicesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static clearTestDevices()V
    .locals 1

    .line 101
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getTestDevicesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getMediationService()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 89
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "STR_MEDIATION_SERVICE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTestDevicesList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "LIST_TEST_DEVICES_KEY"

    .line 147
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    sget-object v1, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v2, "LIST_TEST_DEVICES_KEY"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-object v0
.end method

.method public static getUrlPrefix()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 84
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "STR_URL_PREFIX_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebugBuild()Z
    .locals 3

    .line 138
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_DEBUG_BUILD_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDebuggerOn()Z
    .locals 3

    .line 142
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_DEBUGGER_STATE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExplicitTestMode()Z
    .locals 3

    .line 71
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_EXPLICIT_TEST_MODE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .locals 1

    .line 75
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdSettingsApi()Lcom/facebook/ads/internal/api/AdSettingsApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/api/AdSettingsApi;->isTestMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isVideoAutoplay()Z
    .locals 2

    .line 122
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_VIDEO_AUTOPLAY_KEY"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVideoAutoplayOnMobile()Z
    .locals 3

    .line 134
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_AUTOPLAY_ON_MOBILE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVisibleAnimation()Z
    .locals 3

    .line 79
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_VISIBLE_ANIMATION_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDebugBuild(Z)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdSettingsApi()Lcom/facebook/ads/internal/api/AdSettingsApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdSettingsApi;->turnOnDebugger()V

    .line 118
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_DEBUG_BUILD_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setForceIpc(Z)V
    .locals 0

    .line 161
    sput-boolean p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sForceIpc:Z

    return-void
.end method

.method public static setMediationService(Ljava/lang/String;)V
    .locals 2

    .line 67
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "STR_MEDIATION_SERVICE_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMultiprocessSupportMode(Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;)V
    .locals 0

    .line 157
    sput-object p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sMultiprocessSupportMode:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 2

    .line 55
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_EXPLICIT_TEST_MODE_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUrlPrefix(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "STR_URL_PREFIX_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setVideoAutoplay(Z)V
    .locals 2

    .line 126
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_VIDEO_AUTOPLAY_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setVideoAutoplayOnMobile(Z)V
    .locals 2

    .line 130
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_AUTOPLAY_ON_MOBILE_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setVisibleAnimation(Z)V
    .locals 2

    .line 59
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v1, "BOOL_VISIBLE_ANIMATION_KEY"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static turnOnSDKDebugger(Landroid/content/Context;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-interface {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdSettingsApi()Lcom/facebook/ads/internal/api/AdSettingsApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/ads/internal/api/AdSettingsApi;->turnOnDebugger()V

    goto :goto_0

    .line 109
    :cond_0
    sget-object p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const-string v0, "BOOL_DEBUGGER_STATE_KEY"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
