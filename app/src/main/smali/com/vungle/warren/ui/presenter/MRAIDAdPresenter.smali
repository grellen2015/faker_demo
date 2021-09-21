.class public Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_WITH_VALUE:Ljava/lang/String; = "actionWithValue"

.field private static final CANCEL_DOWNLOAD:Ljava/lang/String; = "cancelDownload"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CONSENT_ACTION:Ljava/lang/String; = "consentAction"

.field private static final EXTRA_INCENTIVIZED_SENT:Ljava/lang/String; = "incentivized_sent"

.field private static EXTRA_REPORT:Ljava/lang/String; = null

.field private static final EXTRA_WEB_READY:Ljava/lang/String; = "web_ready"

.field protected static final NINE_BY_SIXTEEN_ASPECT_RATIO:D = 0.5625

.field private static final OPEN:Ljava/lang/String; = "open"

.field private static final OPEN_APP_IN_DEVICE:Ljava/lang/String; = "openAppInDevice"

.field private static final OPEN_PRIVACY:Ljava/lang/String; = "openPrivacy"

.field private static final START_DOWNLOAD_APP_ON_DEVICE:Ljava/lang/String; = "startDownloadAppOnDevice"

.field private static final SUCCESSFUL_VIEW:Ljava/lang/String; = "successfulView"

.field private static final TAG:Ljava/lang/String;

.field private static final TPAT:Ljava/lang/String; = "tpat"

.field private static final USE_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field private static final USE_CUSTOM_PRIVACY:Ljava/lang/String; = "useCustomPrivacy"

.field private static final VIDEO_VIEWED:Ljava/lang/String; = "videoViewed"


# instance fields
.field private adStartTime:J

.field private adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final analytics:Lcom/vungle/warren/analytics/AdAnalytics;

.field private assetDir:Ljava/io/File;

.field private backEnabled:Z

.field private bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private cookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

.field private directDownloadApkEnabled:Z

.field private duration:J

.field private hasSend80Percent:Z

.field private hasSendStart:Z

.field private final ioExecutor:Ljava/util/concurrent/ExecutorService;

.field private isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private placement:Lcom/vungle/warren/model/Placement;

.field private repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field private report:Lcom/vungle/warren/model/Report;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private final scheduler:Lcom/vungle/warren/utility/Scheduler;

.field private sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;

.field private webClient:Lcom/vungle/warren/ui/view/WebViewAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v0, "saved_report"

    .line 66
    sput-object v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->EXTRA_REPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/persistence/Repository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/utility/Scheduler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/vungle/warren/analytics/AdAnalytics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/vungle/warren/ui/view/WebViewAPI;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/vungle/warren/DirectDownloadAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->hasSendStart:Z

    .line 151
    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->hasSend80Percent:Z

    .line 153
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    .line 196
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 197
    iput-object p3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 198
    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    .line 199
    iput-object p4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    .line 200
    iput-object p5, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 201
    iput-object p6, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    .line 202
    iput-object p7, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    .line 203
    iput-object p9, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    .line 204
    iput-object p10, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    .line 205
    iput-object p11, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 206
    invoke-direct {p0, p8}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->load(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/model/Placement;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return-void
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/model/Report;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/persistence/Repository$SaveCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/persistence/Repository;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method static synthetic access$602(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    return-object p0
.end method

.method private closeView()V
    .locals 5

    .line 720
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Report;->setAdDuration(I)V

    .line 721
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 722
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    .line 723
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    return-void
.end method

.method private download()V
    .locals 4

    const-string v0, "cta"

    const-string v1, ""

    .line 705
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v1}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private load(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 5

    .line 727
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v1, "incentivizedTextSetByPub"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "incentivizedTextSetByPub"

    const-class v4, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v1, "consentIsImportantToVungle"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "consentIsImportantToVungle"

    const-class v4, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v1, "configSettings"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "configSettings"

    const-class v4, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 732
    sget-object v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->EXTRA_REPORT:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Report;

    :goto_0
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    :cond_1
    return-void
.end method

.method private loadMraid(Ljava/io/File;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 367
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "index.html"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/vungle/warren/utility/AsyncFileUtils;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/utility/AsyncFileUtils;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    new-instance v1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;)V

    return-void
.end method

.method private prepare(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 9
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 277
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    .line 278
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setDownloadAdapter(Lcom/vungle/warren/DirectDownloadAdapter;)V

    .line 279
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setErrorListener(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;)V

    .line 281
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V

    .line 284
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v0, "incentivizedTextSetByPub"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const-string v0, "flexview"

    .line 285
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getFlexViewCloseTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    new-instance v1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 299
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig;->getFlexViewCloseTime()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 287
    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    const-string v1, "userID"

    .line 304
    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 306
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_2

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adStartTime:J

    .line 308
    new-instance p1, Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    iget-wide v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adStartTime:J

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    .line 309
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 312
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v1, "consentIsImportantToVungle"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const-string v2, "is_country_data_protected"

    .line 317
    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "unknown"

    const-string v3, "consent_status"

    invoke-virtual {p1, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 319
    :goto_1
    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const-string v4, "consent_title"

    .line 320
    invoke-virtual {p1, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "consent_message"

    .line 321
    invoke-virtual {p1, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "button_accept"

    .line 322
    invoke-virtual {p1, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "button_deny"

    .line 323
    invoke-virtual {p1, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v4, v2

    .line 319
    invoke-interface/range {v3 .. v8}, Lcom/vungle/warren/ui/view/WebViewAPI;->setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v2, "consent_status"

    const-string v3, "opted_out_by_timeout"

    .line 329
    invoke-virtual {p1, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "timestamp"

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "consent_source"

    const-string v3, "vungle_modal"

    .line 331
    invoke-virtual {p1, v2, v3}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v2, p1, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 338
    :cond_4
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result p1

    if-lez p1, :cond_5

    .line 341
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    new-instance v2, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;-><init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 348
    :cond_5
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    .line 351
    :goto_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flexview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow(Z)V

    .line 353
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_6

    .line 354
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const-string v1, "start"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->attach(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 5
    .param p1    # Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 236
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    .line 238
    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 240
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    if-lez v0, :cond_2

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 242
    :goto_0
    iput-boolean v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 243
    :cond_1
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadApkEnabled:Z

    :cond_2
    const/4 v0, -0x1

    .line 248
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v1

    const/16 v2, 0x10

    and-int/2addr v1, v2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_3

    .line 249
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v3, -0x1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x6

    const/4 v3, 0x6

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x7

    const/4 v3, 0x7

    .line 266
    :cond_3
    :goto_1
    :pswitch_2
    invoke-interface {p1, v3}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setOrientation(I)V

    .line 267
    invoke-direct {p0, p2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->prepare(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public detach(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->stop(ZZ)V

    .line 273
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->destroyAdView()V

    return-void
.end method

.method public generateSaveState(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 3
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 436
    sget-object v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->EXTRA_REPORT:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "incentivized_sent"

    .line 437
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public handleExit(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    if-nez v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 469
    sget-object p1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Cannot close FlexView Ad with invalid placement reference id"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p1, "flexview"

    .line 472
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 473
    sget-object p1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Cannot close a Non FlexView ad"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 476
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    const-string v0, "javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()"

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    const-string p1, "mraidCloseByApi"

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 465
    :cond_3
    :goto_0
    sget-object p1, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Unable to close advertisement"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 479
    :cond_4
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    if-eqz p1, :cond_5

    .line 481
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    const-string v1, "javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()"

    invoke-interface {p1, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    :cond_5
    return v0
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 686
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x12bedc78

    if-eq v0, v1, :cond_2

    const v1, 0x5a5ddf8

    if-eq v0, v1, :cond_1

    const v1, 0x551ac888

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :pswitch_0
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->download()V

    goto :goto_2

    .line 689
    :pswitch_1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    :goto_2
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onReceivedError(Ljava/lang/String;)V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    :cond_0
    return-void
.end method

.method public onViewConfigurationChanged()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flexview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow(Z)V

    .line 231
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    return-void
.end method

.method public processCommand(Ljava/lang/String;Lcom/google/gson/JsonObject;)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "useCustomClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "tpat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "useCustomPrivacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "cancelDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_6
    const-string v0, "openPrivacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "consentAction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "actionWithValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "startDownloadAppOnDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_a
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "openAppInDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_c
    const-string v0, "successfulView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const v0, 0x30809f

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    return v3

    .line 673
    :pswitch_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    if-eqz p1, :cond_1

    .line 674
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {p1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/SDKDownloadClient;->sendOpenPackageRequest()V

    :cond_1
    return v4

    .line 667
    :pswitch_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    if-eqz p1, :cond_2

    .line 668
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {p1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/SDKDownloadClient;->cancelDownloadRequest()V

    :cond_2
    return v4

    .line 661
    :pswitch_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    if-eqz p1, :cond_3

    .line 662
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {p1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/SDKDownloadClient;->sendDownloadRequest()V

    :cond_3
    return v4

    .line 641
    :pswitch_3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_5

    .line 642
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const-string p2, "successfulView"

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_4

    move-object v0, v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    .line 643
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    .line 642
    :goto_2
    invoke-interface {p1, p2, v5, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_5
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string p2, "configSettings"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    .line 647
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    const-string p2, "isReportIncentivizedEnabled"

    .line 648
    invoke-virtual {p1, p2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 649
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 651
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p2, "placement_reference_id"

    .line 652
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p2, "app_id"

    .line 653
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p2, "adStartTime"

    .line 654
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p2, "user"

    .line 655
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 656
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    :cond_6
    return v4

    :pswitch_4
    const-string p1, "url"

    .line 634
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 635
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;)V

    return v4

    :pswitch_5
    const-string p1, "useCustomPrivacy"

    .line 620
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    if-eq p2, v0, :cond_9

    const v0, 0x36758e

    if-eq p2, v0, :cond_8

    const v0, 0x5cb1923

    if-eq p2, v0, :cond_7

    goto :goto_3

    :cond_7
    const-string p2, "false"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_8
    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const-string p2, "gone"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v1, -0x1

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 627
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_6
    return v4

    :pswitch_7
    const-string p1, "sdkCloseButton"

    .line 608
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v5, -0x715b4053

    if-eq p2, v5, :cond_d

    if-eq p2, v0, :cond_c

    const v0, 0x1bd1f072

    if-eq p2, v0, :cond_b

    goto :goto_5

    :cond_b
    const-string p2, "visible"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_6

    :cond_c
    const-string p2, "gone"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    const-string p2, "invisible"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v1, -0x1

    :goto_6
    packed-switch v1, :pswitch_data_2

    .line 615
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_8
    return v4

    :pswitch_9
    const-string p1, "download"

    .line 595
    invoke-virtual {p0, p1, v5}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mraidOpen"

    .line 596
    invoke-virtual {p0, p1, v5}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "url"

    .line 598
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 600
    iget-boolean p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadApkEnabled:Z

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->isRequiresNonMarketInstall()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->isDirectDownloadEnabled(ZZ)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 601
    invoke-static {p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->download(Ljava/lang/String;)V

    goto :goto_7

    .line 603
    :cond_f
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;)V

    :goto_7
    return v4

    :pswitch_a
    return v4

    :pswitch_b
    const-string p1, "event"

    .line 585
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 587
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    return v4

    :pswitch_c
    const-string p1, "event"

    .line 514
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "value"

    .line 515
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    .line 516
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 517
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const-string v0, "videoViewed"

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_14

    .line 525
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 526
    iget-wide v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    goto :goto_8

    .line 528
    :catch_0
    sget-object v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v1, "value for videoViewed is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_8
    if-lez v0, :cond_14

    .line 532
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_11

    .line 533
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "percentViewed:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    if-nez v6, :cond_10

    move-object v6, v5

    goto :goto_9

    :cond_10
    iget-object v6, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    .line 534
    invoke-virtual {v6}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    .line 533
    :goto_9
    invoke-interface {v1, v2, v5, v6}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_11
    iget-boolean v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->hasSendStart:Z

    if-nez v1, :cond_12

    if-le v0, v4, :cond_12

    .line 538
    iput-boolean v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->hasSendStart:Z

    .line 539
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    if-eqz v1, :cond_12

    .line 540
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {v1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object v1

    sget-object v2, Lcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;->CPI:Lcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;

    invoke-virtual {v1, v3, v2}, Lcom/vungle/warren/SDKDownloadClient;->sendADDisplayingNotify(ZLcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;)V

    .line 545
    :cond_12
    iget-boolean v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->hasSend80Percent:Z

    if-nez v1, :cond_13

    const/16 v1, 0x50

    if-le v0, v1, :cond_13

    .line 546
    iput-boolean v4, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->hasSend80Percent:Z

    .line 547
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    if-eqz v1, :cond_13

    .line 548
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {v1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object v1

    sget-object v2, Lcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;->CPI:Lcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;

    invoke-virtual {v1, v4, v2}, Lcom/vungle/warren/SDKDownloadClient;->sendADDisplayingNotify(ZLcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;)V

    .line 553
    :cond_13
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v2, "configSettings"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    .line 554
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0x4b

    if-le v0, v2, :cond_14

    if-eqz v1, :cond_14

    const-string v0, "isReportIncentivizedEnabled"

    .line 555
    invoke-virtual {v1, v0}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 556
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 558
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "placement_reference_id"

    .line 559
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "app_id"

    .line 560
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "adStartTime"

    .line 561
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "user"

    .line 562
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 563
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v1, v0}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    :cond_14
    const-string v0, "videoLength"

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 572
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    const-string p1, "videoLength"

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, v4}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    .line 578
    :cond_15
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1, v4}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setVisibility(Z)V

    return v4

    .line 498
    :pswitch_d
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v0, "consentIsImportantToVungle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    if-nez p1, :cond_16

    .line 500
    new-instance p1, Lcom/vungle/warren/model/Cookie;

    const-string v0, "consentIsImportantToVungle"

    invoke-direct {p1, v0}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_16
    const-string v0, "event"

    .line 503
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "consent_status"

    .line 504
    invoke-virtual {p1, v0, p2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "consent_source"

    const-string v0, "vungle_modal"

    .line 505
    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "timestamp"

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p2, p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return v4

    :pswitch_e
    const-string p1, "mraidClose"

    .line 493
    invoke-virtual {p0, p1, v5}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71fc83a1 -> :sswitch_c
        -0x70b75b8e -> :sswitch_b
        -0x54d081ca -> :sswitch_a
        -0x526b8f14 -> :sswitch_9
        -0x2bd2454b -> :sswitch_8
        -0x2762d110 -> :sswitch_7
        -0x1e7a3222 -> :sswitch_6
        -0x1e01bede -> :sswitch_5
        -0x14bf8370 -> :sswitch_4
        0x34264a -> :sswitch_3
        0x366baf -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "videoLength"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    .line 220
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-wide v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 221
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 225
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void
.end method

.method public restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 2
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "incentivized_sent"

    const/4 v1, 0x0

    .line 447
    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 453
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_2

    .line 455
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    return-void

    :cond_2
    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/view/WebViewAPI;->setAdVisibility(Z)V

    return-void
.end method

.method public setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 211
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->setAdVisibility(Z)V

    .line 390
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setImmersiveMode()V

    .line 391
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->resumeWeb()V

    .line 392
    invoke-virtual {p0, v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    return-void
.end method

.method public stop(ZZ)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->pauseWeb()V

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 404
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 408
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p2}, Lcom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_2

    .line 413
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const-string v0, "end"

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "isCTAClicked"

    :cond_1
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    if-eqz p1, :cond_3

    .line 417
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {p1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/SDKDownloadClient;->cleanUp()V

    :cond_3
    return-void
.end method
