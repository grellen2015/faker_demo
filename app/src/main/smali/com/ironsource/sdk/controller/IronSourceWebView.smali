.class public Lcom/ironsource/sdk/controller/IronSourceWebView;
.super Landroid/webkit/WebView;
.source "IronSourceWebView.java"

# interfaces
.implements Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/IronSourceWebView$State;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$Result;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field public static APP_IDS:Ljava/lang/String; = "appIds"

.field public static DISPLAY_WEB_VIEW_INTENT:I = 0x0

.field public static EXTERNAL_URL:Ljava/lang/String; = "external_url"

.field public static IS_INSTALLED:Ljava/lang/String; = "isInstalled"

.field public static IS_STORE:Ljava/lang/String; = "is_store"

.field public static IS_STORE_CLOSE:Ljava/lang/String; = "is_store_close"

.field private static JSON_KEY_FAIL:Ljava/lang/String; = "fail"

.field private static JSON_KEY_SUCCESS:Ljava/lang/String; = "success"

.field public static OPEN_URL_INTENT:I = 0x1

.field public static REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static RESULT:Ljava/lang/String; = "result"

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String; = "secondary_web_view"

.field public static WEBVIEW_TYPE:Ljava/lang/String; = "webview_type"

.field public static mDebugMode:I


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mApplicationKey:Ljava/lang/String;

.field private mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerAdapter:Lcom/ironsource/sdk/controller/ControllerAdapter;

.field private mControllerCommandsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControllerKeyPressed:Ljava/lang/String;

.field private mControllerLayout:Landroid/widget/FrameLayout;

.field private mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field mCurrentActivityContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

.field private mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

.field private mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

.field private mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

.field private mGlobalControllerTimeFinish:Z

.field private mGlobalControllerTimer:Landroid/os/CountDownTimer;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mIsImmersive:Z

.field private mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mMoatJsAdapter:Lcom/ironsource/sdk/controller/MOATJSAdapter;

.field private mOWCreditsMiss:Z

.field private mOWExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOWmiss:Z

.field private mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

.field private mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

.field private mOrientationState:Ljava/lang/String;

.field private mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

.field private mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

.field private mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

.field mUiHandler:Landroid/os/Handler;

.field private mUserId:Ljava/lang/String;

.field private mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

.field private mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/sdk/controller/DemandSourceManager;)V
    .locals 3

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 99
    const-class v0, Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v0, "IronSource"

    .line 100
    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->PUB_TAG:Ljava/lang/String;

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 104
    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->GENERIC_MESSAGE:Ljava/lang/String;

    const-string v0, "interrupt"

    .line 136
    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    const/16 v0, 0x32

    .line 143
    iput v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    .line 144
    iput v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    const-string v0, "top-right"

    .line 145
    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->None:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 175
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedStateLocker:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    .line 4043
    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$13;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$13;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v2, "C\'tor"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    .line 211
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initLayout(Landroid/content/Context;)V

    .line 213
    new-instance p1, Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-direct {p1}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 215
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 216
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {p1, p0}, Lcom/ironsource/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 218
    new-instance p1, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-direct {p1, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    .line 220
    new-instance p1, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;

    invoke-direct {p1, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 221
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 223
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebViewSettings()V

    .line 225
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createSecuredCommunication()V

    .line 227
    invoke-virtual {p0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 229
    new-instance p1, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    invoke-direct {p1, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimeFinish:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->invokePendingCommands()V

    return-void
.end method

.method static synthetic access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/TokenJSAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->closeWebView()V

    return-void
.end method

.method static synthetic access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->PUB_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSBannerListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-object p0
.end method

.method static synthetic access$5600()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/BannerJSAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getWebview()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/MOATJSAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mMoatJsAdapter:Lcom/ironsource/sdk/controller/MOATJSAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    return p0
.end method

.method static synthetic access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$6202(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/controller/IronSourceWebView;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isRemoveCloseEventHandler:Z

    return p0
.end method

.method static synthetic access$902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method private closeWebView()V
    .locals 1

    .line 3438
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    if-eqz v0, :cond_0

    .line 3439
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onCloseRequested()V

    :cond_0
    return-void
.end method

.method private createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/controller/IronSourceWebView$Result;
    .locals 12

    .line 3079
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;-><init>()V

    .line 3082
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3108
    :cond_0
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p2, :cond_5

    const-string v2, "productType"

    const-string v3, "OfferWall"

    const-string v4, "applicationKey"

    .line 3109
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    const-string v6, "applicationUserId"

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getUserCredits"

    const-string v1, "null"

    const-string v2, "onGetUserCreditsFail"

    .line 3113
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getUserCredits"

    .line 3114
    iput-object p2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;->methodName:Ljava/lang/String;

    .line 3115
    iput-object p1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;->script:Ljava/lang/String;

    goto :goto_1

    .line 3083
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "applicationKey"

    .line 3084
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "applicationUserId"

    .line 3085
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 3088
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3089
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    const-string v2, "demandSourceName"

    .line 3091
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "demandSourceId"

    .line 3092
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    :cond_3
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3097
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3100
    :cond_4
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 3102
    invoke-static {p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getInitMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object p1

    .line 3103
    iget-object v1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v2, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3105
    iget-object p1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iput-object p1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;->methodName:Ljava/lang/String;

    .line 3106
    iput-object p2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;->script:Ljava/lang/String;

    :cond_5
    :goto_1
    return-object v0
.end method

.method private createSecuredCommunication()V
    .locals 3

    .line 234
    invoke-static {}, Lcom/ironsource/sdk/controller/SecureMessagingService;->generateToken()Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/ironsource/sdk/controller/SecureMessagingService;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/SecureMessagingService;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createControllerMessageHandler(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/ControllerMessageHandler;

    move-result-object v0

    const-string v2, "Android"

    .line 237
    invoke-virtual {p0, v0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createSecureMessagingInterface(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/SecureMessagingInterface;

    move-result-object v0

    const-string v1, "GenerateTokenForMessaging"

    .line 242
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 3123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sessionDepth"

    .line 3124
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionDepth"

    .line 3125
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "demandSourceName"

    .line 3127
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3128
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 3130
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v2, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3133
    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3134
    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3137
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "demandSourceName"

    .line 3138
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3140
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "demandSourceId"

    .line 3141
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3145
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3147
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3150
    :cond_3
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 3151
    invoke-static {p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getShowMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object p1

    .line 3152
    iget-object v0, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3356
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3506
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3507
    sget-object p1, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3498
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3499
    sget-object p1, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 4219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 4226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?parameters="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 4234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4235
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 4243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4244
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?parameters="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .locals 1

    .line 2652
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 2653
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    return-object p1

    .line 2654
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 2655
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    return-object p1

    .line 2656
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 2657
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6

    .line 3776
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3782
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 3784
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v1

    .line 3785
    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v5, :cond_0

    .line 3786
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    move-object v4, p2

    goto :goto_0

    .line 3788
    :cond_0
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v5, v1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3790
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v1

    const-string v4, "demandSourceName"

    .line 3791
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "demandSourceId"

    .line 3792
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    :cond_1
    :goto_0
    :try_start_0
    const-string p2, "productType"

    .line 3797
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3799
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3803
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3805
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3806
    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 3809
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_3
    const/4 p1, 0x1

    .line 3817
    :goto_4
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    :try_start_2
    const-string p2, "applicationUserId"

    .line 3820
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    .line 3821
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3819
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    .line 3824
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 3831
    :goto_5
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    :try_start_3
    const-string p2, "applicationKey"

    .line 3834
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    .line 3835
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3833
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p2

    .line 3837
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_5
    const/4 p1, 0x1

    :goto_6
    if-eqz v4, :cond_7

    .line 3844
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 3846
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3848
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "sdkWebViewCache"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3849
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebviewCache(Ljava/lang/String;)V

    .line 3853
    :cond_6
    :try_start_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v1

    .line 3855
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    :cond_7
    const/4 p2, 0x2

    .line 3861
    new-array p2, p2, [Ljava/lang/Object;

    .line 3862
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    .line 3863
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    return-object p2
.end method

.method private getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 10

    .line 3872
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3875
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3876
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3877
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3878
    invoke-static {v3}, Lcom/ironsource/environment/DeviceStatus;->getInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 3881
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3883
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    .line 3885
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 3886
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3888
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3889
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 3892
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 3893
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3894
    sget-object v8, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3895
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_2

    .line 3901
    sget-object v8, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3902
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3907
    :cond_3
    sget-object v3, Lcom/ironsource/sdk/controller/IronSourceWebView;->RESULT:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3908
    sget-object p1, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    const-string p1, "error"

    const-string p2, "requestId is null or empty"

    .line 3912
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    const-string p1, "error"

    const-string p2, "appIds is null or empty"

    .line 3916
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    const/4 p1, 0x1

    :goto_3
    const/4 p2, 0x2

    .line 3922
    new-array p2, p2, [Ljava/lang/Object;

    .line 3923
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 3924
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v2

    return-object p2
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 9

    .line 3570
    invoke-static {p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 3572
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "appOrientation"

    .line 3577
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3580
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "deviceOEM"

    .line 3582
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3586
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "deviceModel"

    .line 3588
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 3594
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 3595
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v5

    .line 3596
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 3598
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3600
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v8, "add AID and LAT"

    invoke-static {v7, v8}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "isLimitAdTrackingEnabled"

    .line 3603
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceIds"

    .line 3607
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    .line 3608
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AID"

    .line 3609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    .line 3610
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3616
    :cond_2
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "deviceOs"

    .line 3618
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    .line 3624
    :goto_1
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "[^0-9/.]"

    const-string v7, ""

    .line 3626
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceOSVersion"

    .line 3627
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    .line 3632
    :goto_2
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "deviceOSVersionFull"

    .line 3634
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3638
    :cond_5
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceApiLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "deviceApiLevel"

    .line 3640
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    .line 3646
    :goto_3
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "SDKVersion"

    .line 3648
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3652
    :cond_7
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    const-string v5, "mobileCarrier"

    .line 3653
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3657
    :cond_8
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3658
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "connectionType"

    .line 3659
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    .line 3665
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3666
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "deviceLanguage"

    .line 3667
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3671
    :cond_a
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3672
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "diskFreeSize"

    .line 3674
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3675
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3673
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_b
    const/4 v4, 0x1

    .line 3681
    :goto_5
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceWidth()I

    move-result v0

    .line 3682
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3683
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceScreenSize"

    .line 3686
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    .line 3687
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "width"

    .line 3688
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    .line 3689
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3691
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3692
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3691
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_c
    const/4 v4, 0x1

    .line 3698
    :goto_6
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceHeight()I

    move-result v0

    .line 3699
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceScreenSize"

    .line 3702
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    .line 3703
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "height"

    .line 3704
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    .line 3705
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3707
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3708
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3707
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3710
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/environment/ApplicationContext;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "bundleId"

    .line 3712
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3715
    :cond_d
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceDensity()F

    move-result v0

    .line 3716
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 3717
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "deviceScreenScale"

    .line 3718
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3721
    :cond_e
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v0

    .line 3722
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 3723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "unLocked"

    .line 3724
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3727
    :cond_f
    invoke-static {p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result p1

    const-string v0, "deviceVolume"

    .line 3728
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    float-to-double v5, p1

    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3729
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object p1

    .line 3730
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_10

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_10

    const-string v0, "immersiveMode"

    .line 3731
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    .line 3732
    invoke-static {v5}, Lcom/ironsource/environment/DeviceStatus;->isImmersiveSupported(Landroid/app/Activity;)Z

    move-result v5

    .line 3731
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_10
    const-string v0, "batteryLevel"

    .line 3735
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getBatteryLevel(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mcc"

    .line 3737
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3738
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->getNetworkMCC(Landroid/content/Context;)I

    move-result v5

    .line 3737
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mnc"

    .line 3739
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3740
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->getNetworkMNC(Landroid/content/Context;)I

    move-result v5

    .line 3739
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "phoneType"

    .line 3742
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3743
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->getPhoneType(Landroid/content/Context;)I

    move-result v5

    .line 3742
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "simOperator"

    .line 3744
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3745
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3744
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lastUpdateTime"

    .line 3747
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3748
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 3747
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "firstInstallTime"

    .line 3749
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3750
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 3749
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "appVersion"

    .line 3751
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3752
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3751
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3754
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 3755
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "installerPackageName"

    .line 3756
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3757
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3756
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    const/4 v4, 0x0

    .line 3761
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3762
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v0, v5}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_11
    :goto_8
    const/4 p1, 0x2

    .line 3765
    new-array p1, p1, [Ljava/lang/Object;

    .line 3766
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 3767
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1
.end method

.method private getErrorCodeByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 4180
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$14;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Init BN"

    goto :goto_0

    :pswitch_1
    const-string v0, "Show OW Credits"

    goto :goto_0

    :pswitch_2
    const-string v0, "Init OW"

    goto :goto_0

    :pswitch_3
    const-string v0, "Init IS"

    goto :goto_0

    :pswitch_4
    const-string v0, "Init RV"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 3367
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 3369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3371
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v2

    .line 3372
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SDKVersion"

    .line 3373
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 3374
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    .line 3376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3379
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v0

    .line 3380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "deviceOs"

    .line 3381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 3382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3383
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3386
    :cond_1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v0

    .line 3387
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3391
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 3392
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 3394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v0, "&"

    .line 3397
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "protocol"

    .line 3398
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 3399
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    .line 3402
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "domain"

    .line 3403
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 3404
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3407
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3410
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "isSecured"

    const-string v3, "applicationKey"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 3415
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "&"

    .line 3417
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "controllerConfig"

    .line 3418
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 3419
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3420
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3424
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    const-string p1, "&"

    .line 3428
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "debug"

    .line 3429
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 3430
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3434
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .locals 2

    .line 2664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2668
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2669
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    .line 2670
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2671
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    .line 2672
    :cond_2
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2673
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    .line 2674
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2675
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object p1

    :cond_4
    return-object v1
.end method

.method private getWebview()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method private handleLoadAd(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2939
    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2941
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->convertToMap()Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2939
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 2947
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Ljava/lang/String;Z)V

    .line 2949
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadInterstitial"

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "onLoadInterstitialFail"

    .line 2950
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadInterstitial"

    .line 2951
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleLoadDuringControllerFailed(Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2927
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2931
    :cond_0
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$6;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 4

    .line 396
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 401
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    .line 405
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 406
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 407
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 411
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 412
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 413
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 416
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;)V
    .locals 1

    .line 2830
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2835
    :cond_0
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne p2, v0, :cond_1

    .line 2836
    invoke-direct {p0, p3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getErrorCodeByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Initiating Controller"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2837
    invoke-interface {p5, p1, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;->handleInitProductFailed(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void

    .line 2841
    :cond_1
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setApplicationKey(Ljava/lang/String;)V

    .line 2842
    invoke-direct {p0, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/controller/IronSourceWebView$Result;

    move-result-object p1

    .line 2844
    iget-object p2, p1, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;->methodName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/sdk/controller/IronSourceWebView$Result;->script:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->isControllerStateReady()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2846
    invoke-virtual {p0, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setMissProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    .line 2847
    iget-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimeFinish:Z

    if-eqz p1, :cond_2

    .line 2848
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadController()V

    .line 2849
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string p2, "initProduct | downloadController"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "User id or Application key are missing"

    .line 2831
    invoke-interface {p5, p1, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;->handleInitProductFailed(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .locals 3

    .line 3283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "empty"

    .line 3289
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    goto :goto_0

    .line 3293
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 3294
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v2

    if-gt v1, v2, :cond_2

    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    .line 3304
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try{"

    .line 3306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3307
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}catch(e){"

    .line 3308
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    .line 3310
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3314
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$11;

    invoke-direct {v0, p0, p1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$11;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private injectJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3269
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->isControllerStateReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3270
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectJavascript | ControllerCommandsQueue | adding command to queue | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3273
    :cond_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private invokePendingCommands()V
    .locals 2

    .line 2643
    :goto_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2644
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2645
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2646
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isControllerStateReady()Z
    .locals 2

    .line 3278
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mapToJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3549
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 3551
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3553
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3554
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3556
    :try_start_0
    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3558
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3563
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 3515
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3519
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3520
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3523
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3524
    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3527
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3528
    invoke-static {p6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3531
    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3532
    invoke-static {p8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3535
    :cond_3
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3536
    invoke-virtual {v0, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3540
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3541
    new-instance p2, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {p2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 p5, 0x0

    aget-object p1, p1, p5

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p5

    invoke-virtual {p2, p3}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3544
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3455
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3456
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3457
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3463
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 3467
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3473
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3475
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3477
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errMsg"

    .line 3478
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    .line 3483
    :catch_0
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3485
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "errCode"

    .line 3486
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, p2

    .line 3491
    :catch_1
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3492
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 2

    .line 4174
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getErrorCodeByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initiating Controller"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4173
    invoke-direct {p0, v0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method private setDisplayZoomControls(Landroid/webkit/WebSettings;)V
    .locals 2

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_0
    return-void
.end method

.method public static setEXTERNAL_URL(Ljava/lang/String;)V
    .locals 0

    .line 2682
    sput-object p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    return-void
.end method

.method private setWebDebuggingEnabled()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 482
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setWebDebuggingEnabled(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "inspectWebview"

    .line 2814
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2815
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebDebuggingEnabled()V

    :cond_0
    return-void
.end method

.method private setWebViewSettings()V
    .locals 5

    .line 421
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 423
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    .line 425
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVerticalScrollBarEnabled(Z)V

    .line 426
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 428
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 432
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 439
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 441
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 442
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v2, "/data/data/org.itri.html5webview/databases/"

    .line 446
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 453
    :try_start_1
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDisplayZoomControls(Landroid/webkit/WebSettings;)V

    .line 454
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 456
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWebSettings - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .locals 1

    .line 2697
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "color"

    .line 2698
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transparent"

    .line 2702
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2703
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2706
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setBackgroundColor(I)V

    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 4136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4138
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 4141
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    return-void
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .locals 4

    .line 535
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 536
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v0, "Trying to trigger a listener - no product was found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 540
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    if-eqz v0, :cond_5

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 542
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 544
    :cond_2
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 546
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 547
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 551
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3998
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p2}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p2, "errMsg"

    .line 3999
    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4001
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4002
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView$12;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 1

    .line 3169
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3170
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$10;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addBannerJSInterface(Lcom/ironsource/sdk/controller/BannerJSAdapter;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;

    return-void
.end method

.method public addMoatJSInterface(Lcom/ironsource/sdk/controller/MOATJSAdapter;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mMoatJsAdapter:Lcom/ironsource/sdk/controller/MOATJSAdapter;

    return-void
.end method

.method public addPermissionsJSInterface(Lcom/ironsource/sdk/controller/PermissionsJSAdapter;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    return-void
.end method

.method public addTokenJSInterface(Lcom/ironsource/sdk/controller/TokenJSAdapter;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

    return-void
.end method

.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v1, "file"

    const-string v3, "path"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 3199
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assetCached"

    .line 3200
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3201
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    .line 3205
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assetCachedFailed"

    .line 3206
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3207
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method createControllerMessageHandler(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/ControllerMessageHandler;
    .locals 2

    .line 252
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    .line 253
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerAdapter;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/ControllerAdapter;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    .line 254
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerMessageHandler;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/sdk/controller/ControllerMessageHandler;-><init>(Lcom/ironsource/sdk/controller/ControllerAdapter;Lcom/ironsource/sdk/controller/SecureMessagingService;)V

    return-object v0
.end method

.method createMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method createSecureMessagingInterface(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/SecureMessagingInterface;
    .locals 1

    .line 258
    new-instance v0, Lcom/ironsource/sdk/controller/SecureMessagingInterface;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/SecureMessagingInterface;-><init>(Lcom/ironsource/sdk/controller/SecureMessagingService;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 4204
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 4206
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-eqz v0, :cond_0

    .line 4207
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->release()V

    .line 4209
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4210
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 4212
    :cond_1
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    .line 4213
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    return-void
.end method

.method public deviceStatusChanged(Ljava/lang/String;)V
    .locals 11

    const-string v1, "connectionType"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 4028
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "deviceStatusChanged"

    .line 4029
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4030
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public downloadController()V
    .locals 9

    .line 489
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "mobileController.html"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, ""

    .line 492
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v1

    .line 493
    new-instance v2, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v2, v1, v0}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;

    const-wide/32 v5, 0x30d40

    const-wide/16 v7, 0x3e8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ironsource/sdk/controller/IronSourceWebView$2;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJ)V

    .line 511
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    .line 513
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download Mobile Controller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v1, "Download Mobile Controller: already alive"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public engageEnd(Ljava/lang/String;)V
    .locals 12

    const-string v0, "forceClose"

    .line 4034
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4035
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->closeWebView()V

    :cond_0
    const-string v2, "action"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 4038
    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "engageEnd"

    .line 4039
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4040
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public enterBackground()V
    .locals 2

    .line 3212
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_0

    const-string v0, "enterBackground"

    .line 3213
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3214
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enterForeground()V
    .locals 2

    .line 3220
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_0

    const-string v0, "enterForeground"

    .line 3221
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3222
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public failedToStartStoreActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3255
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown url"

    :cond_0
    move-object v4, p2

    .line 3256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "activity failed to open with unspecified reason"

    :cond_1
    move-object v2, p1

    const-string v1, "errMsg"

    const-string v3, "url"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 3257
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "failedToStartStoreActivity"

    .line 3260
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public getControllerDelegate()Lcom/ironsource/sdk/controller/WebViewMessagingMediator;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    return-object v0
.end method

.method public getControllerKeyPressed()Ljava/lang/String;
    .locals 2

    .line 4019
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    const-string v1, "interrupt"

    .line 4022
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setControllerKeyPressed(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentActivityContext()Landroid/content/Context;
    .locals 1

    .line 3361
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/content/MutableContextWrapper;

    .line 3362
    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDebugMode()I
    .locals 1

    .line 526
    sget v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    return v0
.end method

.method getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 4118
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 6

    .line 3018
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    .line 3019
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    .line 3021
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 3023
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$8;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$8;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;)V

    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;
    .locals 1

    .line 4250
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .locals 1

    .line 4169
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .locals 2

    .line 4146
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4148
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4151
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4152
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 4158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hideCustomView()V
    .locals 1

    .line 4126
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->onHideCustomView()V

    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .line 4122
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initBanner(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 6

    .line 3041
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    .line 3042
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    .line 3044
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    .line 3046
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$9;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$9;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 6

    .line 2885
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    .line 2886
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    .line 2887
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    .line 2890
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2891
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2893
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$5;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$5;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;)V

    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 2989
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    .line 2990
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    .line 2991
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 2992
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2994
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferWallExtraParams(Ljava/util/Map;)V

    .line 2996
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 2998
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$7;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$7;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 6

    .line 2859
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mApplicationKey:Ljava/lang/String;

    .line 2860
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUserId:Ljava/lang/String;

    .line 2861
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    .line 2862
    iget-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p4, p1}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVAppKey(Ljava/lang/String;)V

    .line 2863
    iget-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p4, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVUserId(Ljava/lang/String;)V

    .line 2865
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$4;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$4;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;)V

    return-void
.end method

.method initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public interceptedUrlToStore()V
    .locals 1

    const-string v0, "interceptedUrlToStore"

    .line 3247
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3248
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 2976
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2977
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getAvailabilityState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public load(I)V
    .locals 9

    :try_start_0
    const-string v0, "about:blank"

    .line 2715
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2717
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController:: load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2722
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2724
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mobileController.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2728
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 2731
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebDebuggingEnabled(Lorg/json/JSONObject;)V

    .line 2734
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 2737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2740
    new-instance v8, Lcom/ironsource/sdk/controller/IronSourceWebView$3;

    const-wide/32 v3, 0xc350

    const-wide/16 v5, 0x3e8

    move-object v1, v8

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/sdk/controller/IronSourceWebView$3;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJI)V

    .line 2795
    invoke-virtual {v8}, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    .line 2799
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2801
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController:: load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    new-instance p1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {p1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2805
    :goto_1
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2808
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v0, "load(): Mobile Controller HTML Does not exist"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    new-instance p1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {p1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v0, "https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    return-void
.end method

.method public loadBanner(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3058
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadBanner"

    const-string v1, "onLoadBannerSuccess"

    const-string v2, "onLoadBannerFail"

    .line 3059
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3060
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2919
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_0

    .line 2920
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->handleLoadDuringControllerFailed(Lcom/ironsource/sdk/data/DemandSource;)V

    return-void

    .line 2923
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->handleLoadAd(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V

    return-void
.end method

.method public loadInterstitial(Ljava/lang/String;)V
    .locals 3

    .line 2908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "demandSourceName"

    .line 2909
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2912
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Ljava/lang/String;Z)V

    const-string p1, "loadInterstitial"

    const-string v1, "onLoadInterstitialSuccess"

    const-string v2, "onLoadInterstitialFail"

    .line 2914
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2915
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .locals 11

    const-string v1, "action"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 3236
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nativeNavigationPressed"

    .line 3237
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3238
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v1, "lifeCycleEvent"

    const-string v3, "productType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    .line 290
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNativeLifeCycleEvent"

    .line 296
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 3992
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V
    .locals 3

    .line 3948
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3950
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 3954
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object p1

    .line 3955
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 3956
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 3957
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_0

    .line 3961
    :cond_1
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object p1

    .line 3962
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 3963
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 3964
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v2, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_1

    .line 3968
    :cond_3
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object p1

    .line 3969
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 3970
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 3971
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v2, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_2

    .line 3975
    :cond_5
    iget-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 3976
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    .line 3979
    :cond_6
    iget-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    if-eqz p1, :cond_8

    .line 3980
    sget-object p1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_3

    .line 3984
    :cond_7
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V
    .locals 2

    .line 3936
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3938
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V

    goto :goto_0

    .line 3940
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 4344
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onBackButtonPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4345
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 4351
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public pageFinished()V
    .locals 1

    const-string v0, "pageFinished"

    .line 3242
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3243
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 4

    .line 4086
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 4088
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4090
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: pause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 3

    .line 4063
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4066
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeVideoEventsListener()V
    .locals 1

    const/4 v0, 0x0

    .line 2692
    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-void
.end method

.method public restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V
    .locals 10

    .line 4255
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 4257
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4259
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreState(state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 4267
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 4268
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v3, "onRVAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 4270
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceId()Ljava/lang/String;

    move-result-object v3

    .line 4271
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4272
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4273
    invoke-interface {v4, v1, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 4277
    :cond_0
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 4278
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v3, "onInterstitialAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 4280
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceId()Ljava/lang/String;

    move-result-object v3

    .line 4281
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4282
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4283
    invoke-interface {v4, v1, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 4287
    :cond_1
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 4288
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v3, "onOWAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v1, :cond_2

    .line 4290
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    .line 4294
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    const/4 v1, 0x0

    .line 4295
    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    goto :goto_1

    .line 4297
    :cond_3
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v2, "No ad was opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    :goto_1
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v1

    .line 4305
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v2

    .line 4307
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 4308
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/sdk/data/DemandSource;

    .line 4309
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 4310
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initInterstitial(appKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", demandSource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    goto :goto_2

    .line 4317
    :cond_5
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVAppKey()Ljava/lang/String;

    move-result-object v1

    .line 4318
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVUserId()Ljava/lang/String;

    move-result-object v2

    .line 4320
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 4321
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/sdk/data/DemandSource;

    .line 4322
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 4323
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v6

    .line 4324
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v8, "onRVNoMoreOffers()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-interface {v7, v6}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    .line 4326
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initRewardedVideo(appKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", demandSource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 4331
    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 4334
    :cond_8
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 4336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 4

    .line 4100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 4102
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4104
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4105
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 4355
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 0

    .line 469
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public setControllerKeyPressed(Ljava/lang/String;)V
    .locals 0

    .line 4013
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 522
    sput p1, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    return-void
.end method

.method setMissProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 2

    .line 3156
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3160
    :cond_0
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p2, :cond_1

    .line 3161
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    goto :goto_1

    .line 3162
    :cond_1
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, p2, :cond_3

    .line 3163
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 3158
    invoke-virtual {p2, v1}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 3165
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMissProduct("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V
    .locals 0

    .line 4114
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOrientationState:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V
    .locals 0

    .line 4165
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-void
.end method

.method public setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V
    .locals 0

    .line 2687
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-void
.end method

.method public showInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2965
    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2967
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->convertToMap()Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 2965
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 2971
    sget-object p2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p2, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 2972
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;)V
    .locals 1

    .line 2960
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 2961
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
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

    .line 3008
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    const-string p1, "showOfferWall"

    const-string v0, "onShowOfferWallSuccess"

    const-string v1, "onShowOfferWallFail"

    .line 3009
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3010
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;)V
    .locals 1

    .line 3194
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 3195
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 4

    .line 4073
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4079
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterConnectionReceiver - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :catch_1
    :goto_0
    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "updateConsentInfo"

    if-eqz p1, :cond_0

    .line 3068
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "updateConsentInfo"

    .line 3069
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .locals 11

    const-string v1, "webview"

    const-string v9, "isViewable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move v10, p1

    .line 3227
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "viewableChange"

    .line 3231
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3232
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method
