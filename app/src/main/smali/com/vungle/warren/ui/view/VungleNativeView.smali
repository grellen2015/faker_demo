.class public Lcom/vungle/warren/ui/view/VungleNativeView;
.super Landroid/webkit/WebView;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
.implements Lcom/vungle/warren/VungleNativeAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.vungle.warren.ui.view.VungleNativeView"


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

.field private isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final placementID:Ljava/lang/String;

.field private presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

.field presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 2
    .param p4    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    iput-object p4, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 88
    iput-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    const/4 p1, 0x0

    .line 92
    :try_start_0
    new-instance p4, Lcom/vungle/warren/AdvertisementPresentationFactory;

    new-instance v0, Lcom/vungle/warren/ui/view/VungleNativeView$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$1;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    new-instance v1, Lcom/vungle/warren/ui/view/VungleNativeView$2;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$2;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    invoke-direct {p4, p2, p1, v0, v1}, Lcom/vungle/warren/AdvertisementPresentationFactory;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    iput-object p4, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 109
    sget-object p4, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error on creating presentation factory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/InstantiationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p2, 0x2

    .line 117
    invoke-virtual {p0, p2, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p3}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/vungle/warren/SDKDownloadClient;->setAdWebView(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/vungle/warren/ui/view/VungleNativeView;Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/view/VungleNativeView;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->prepare(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private prepare(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-static {p0}, Lcom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Landroid/webkit/WebView;)V

    .line 130
    new-instance p1, Lcom/vungle/warren/ui/JavascriptBridge;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-direct {p1, v0}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    const-string v0, "Android"

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->handleExit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAd()V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-virtual {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->destroy()V

    .line 206
    iput-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 207
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroyAdView()V
    .locals 1

    const-string v0, "Android"

    .line 213
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 214
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public finishDisplayingAd()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->stop(ZZ)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-virtual {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->destroy()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 158
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 161
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->destroyAdView()V

    return-void
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 269
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 271
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    new-instance v2, Lcom/vungle/warren/ui/view/VungleNativeView$3;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$3;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->getNativeViewPresentation(Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;)V

    .line 295
    :cond_0
    new-instance v0, Lcom/vungle/warren/ui/view/VungleNativeView$4;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$4;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 311
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->resumeWeb()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 318
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-virtual {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->destroy()V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->pauseWeb()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 67
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    const-string v1, "Resuming Flex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 225
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vungle/warren/utility/ExternalRouter;->launch(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public pauseWeb()V
    .locals 0

    .line 253
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onPause()V

    return-void
.end method

.method public renderNativeView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public resumeWeb()V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onResume()V

    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->setAdVisibility(Z)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setImmersiveMode()V
    .locals 0

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 264
    :goto_0
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setVisibility(I)V

    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VungleNativeView does not implement a close button"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 238
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "VungleNativeView does not implement a dialog."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showWebsite(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public updateWindow(Z)V
    .locals 0

    return-void
.end method
