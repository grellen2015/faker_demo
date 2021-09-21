.class public Lcom/ironsource/sdk/controller/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
.implements Lcom/ironsource/sdk/controller/VideoEventsListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ControllerActivity"

.field private static final WEB_VIEW_VIEW_ID:I = 0x1


# instance fields
.field final MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field private calledFromOnCreate:Z

.field public currentRequestedRotation:I

.field private final decorViewSettings:Ljava/lang/Runnable;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mControllerClearedFromOnPause:Z

.field private mIsImmersive:Z

.field private mProductType:Ljava/lang/String;

.field private mState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field private mWebViewFrameContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 53
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 58
    new-instance v2, Lcom/ironsource/sdk/controller/ControllerActivity$1;

    invoke-direct {v2, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$1;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    .line 64
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelScreenOn()V
    .locals 1

    .line 347
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$4;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$4;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearWebviewController()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "clearWebviewController"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 276
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->removeVideoEventsListener()V

    .line 277
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleOrientationState(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_3

    const-string p2, "landscape"

    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiateLandscapeOrientation()V

    goto :goto_0

    :cond_0
    const-string p2, "portrait"

    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiatePortraitOrientation()V

    goto :goto_0

    :cond_1
    const-string p2, "device"

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->isDeviceOrientationLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 191
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getRequestedOrientation()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x4

    .line 195
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private hideActivityTitle()V
    .locals 1

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->requestWindowFeature(I)Z

    return-void
.end method

.method private hideActivtiyStatusBar()V
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private initOrientationState()V
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation_set_flag"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rotation_set_flag"

    const/4 v3, 0x0

    .line 164
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 167
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    return-void
.end method

.method private keepScreenOn()V
    .locals 1

    .line 337
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$3;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$3;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeWebViewContainerView()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setInitiateLandscapeOrientation()V
    .locals 4

    .line 361
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 363
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiateLandscapeOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 366
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v0, v2, :cond_1

    .line 369
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_180"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 372
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_270 Right Landscape"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 375
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 378
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No Rotation"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setInitiatePortraitOrientation()V
    .locals 3

    .line 387
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 389
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiatePortraitOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 392
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 395
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_180"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 396
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 398
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 401
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 404
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No Rotation"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackButtonPressed()Z
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 311
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCloseRequested()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    :try_start_0
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivityTitle()V

    .line 88
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivtiyStatusBar()V

    .line 91
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 93
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setId(I)V

    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "productType"

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "immersive"

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 102
    iput-boolean v3, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mControllerClearedFromOnPause:Z

    .line 104
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ironsource/sdk/controller/ControllerActivity$2;

    invoke-direct {v2, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$2;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "state"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/data/AdUnitsState;

    if-eqz p1, :cond_1

    .line 124
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 125
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 134
    :cond_3
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 135
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    .line 141
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    .line 144
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 145
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    .line 146
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 150
    :cond_4
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->initOrientationState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 258
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mControllerClearedFromOnPause:Z

    if-nez v0, :cond_1

    .line 267
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy | destroyedFromBackground"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->clearWebviewController()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->inCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->hideCustomView()V

    const/4 p1, 0x1

    return p1

    .line 416
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 420
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 233
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio"

    .line 235
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 238
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->pause()V

    .line 241
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 246
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mControllerClearedFromOnPause:Z

    .line 250
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause | isFinishing"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->clearWebviewController()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->resume()V

    .line 221
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    :cond_0
    const-string v0, "audio"

    .line 224
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 225
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    const-string v0, "state"

    .line 207
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 324
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 453
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 434
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 436
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    .line 425
    iget v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    if-eq v0, p1, :cond_0

    .line 426
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation: Req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iput p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 428
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public toggleKeepScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->keepScreenOn()V

    goto :goto_0

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->cancelScreenOn()V

    :goto_0
    return-void
.end method
