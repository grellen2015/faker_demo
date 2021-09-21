.class public Lcom/vungle/warren/ui/presenter/LocalAdPresenter;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
.implements Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;


# static fields
.field static final EXTRA_INCENTIVIZED_SENT:Ljava/lang/String; = "incentivized_sent"

.field static final EXTRA_IN_POST:Ljava/lang/String; = "in_post_roll"

.field static final EXTRA_REPORT:Ljava/lang/String; = "saved_report"

.field static final EXTRA_VIDEO_POSITION:Ljava/lang/String; = "videoPosition"

.field static final HTTPS_VUNGLE_COM_PRIVACY:Ljava/lang/String; = "https://vungle.com/privacy/"

.field public static final INCENTIVIZED_TRESHOLD:I = 0x4b

.field static final TAG:Ljava/lang/String; = "LocalAdPresenter"


# instance fields
.field private adStartTime:J

.field private adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final analytics:Lcom/vungle/warren/analytics/AdAnalytics;

.field private assetDir:Ljava/io/File;

.field private bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private checkpointList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final cookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private dialogBody:Ljava/lang/String;

.field private dialogClose:Ljava/lang/String;

.field private dialogContinue:Ljava/lang/String;

.field private dialogTitle:Ljava/lang/String;

.field private directDownloadApkEnabled:Z

.field private duration:I

.field private inPost:Z

.field private final ioExecutor:Ljava/util/concurrent/ExecutorService;

.field private isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private muted:Z

.field private placement:Lcom/vungle/warren/model/Placement;

.field private progress:I

.field private repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field private report:Lcom/vungle/warren/model/Report;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private final scheduler:Lcom/vungle/warren/utility/Scheduler;

.field private sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;

.field private userExitEnabled:Z

.field private videoPosition:I

.field private final videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

.field private final webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/analytics/AnalyticsVideoTracker;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
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
    .param p6    # Lcom/vungle/warren/analytics/AnalyticsVideoTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/vungle/warren/ui/view/WebViewAPI;
        .annotation build Landroid/support/annotation/NonNull;
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

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v0, "Are you sure?"

    .line 135
    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    const-string v0, "If you exit now, you will not get your reward"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    const-string v0, "Continue"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    const-string v0, "Close"

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    .line 156
    new-instance v0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    .line 737
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 194
    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    .line 195
    iput-object p4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    .line 196
    iput-object p5, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 197
    iput-object p6, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    .line 198
    iput-object p7, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;

    .line 199
    iput-object p3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 200
    iput-object p9, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    .line 201
    iput-object p10, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    .line 202
    iput-object p11, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 203
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 204
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 208
    :cond_0
    invoke-direct {p0, p8}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->loadData(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Placement;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return-void
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AnalyticsVideoTracker;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Advertisement;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AdAnalytics;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    return p0
.end method

.method static synthetic access$702(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/persistence/Repository;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->continueWithPostroll()V

    return-void
.end method

.method private closeAndReport()V
    .locals 5

    .line 721
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    invoke-interface {v0}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->stop()V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LocalAdPresenter"

    const-string v1, "Busy with closing"

    .line 726
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "close"

    const/4 v1, 0x0

    .line 731
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 733
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Report;->setAdDuration(I)V

    .line 734
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->close()V

    return-void
.end method

.method private continueWithPostroll()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_0

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    :goto_0
    return-void
.end method

.method private download()V
    .locals 4

    const-string v0, "cta"

    const-string v1, ""

    .line 695
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const-string v2, "postroll_click"

    invoke-virtual {v1, v2}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const-string v2, "click_url"

    invoke-virtual {v1, v2}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const-string v2, "video_click"

    invoke-virtual {v1, v2}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v1}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    const-string v0, "download"

    const/4 v1, 0x0

    .line 703
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v3}, Lcom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v0

    .line 708
    iget-boolean v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->directDownloadApkEnabled:Z

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->isRequiresNonMarketInstall()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/vungle/warren/download/APKDirectDownloadManager;->isDirectDownloadEnabled(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-static {v0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->download(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LocalAdPresenter"

    const-string v1, "Unable to find destination activity"

    .line 714
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isWebPageBlank()Z
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadData(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 5

    .line 741
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v1, "consentIsImportantToVungle"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "consentIsImportantToVungle"

    const-class v4, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v1, "incentivizedTextSetByPub"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "incentivizedTextSetByPub"

    const-class v4, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v1, "consentIsImportantToVungle"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "consentIsImportantToVungle"

    const-class v4, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v1, "configSettings"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "configSettings"

    const-class v4, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v0, "saved_report"

    .line 747
    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Report;

    :goto_0
    if-eqz p1, :cond_1

    .line 751
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    :cond_1
    return-void
.end method

.method private needShowGDPR(Lcom/vungle/warren/model/Cookie;)Z
    .locals 2
    .param p1    # Lcom/vungle/warren/model/Cookie;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "is_country_data_protected"

    .line 371
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    const-string v1, "consent_status"

    .line 372
    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private playPost()V
    .locals 4

    .line 320
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "index.html"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/vungle/warren/utility/AsyncFileUtils;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v2, v3}, Lcom/vungle/warren/utility/AsyncFileUtils;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    new-instance v2, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;

    invoke-direct {v2, p0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;)V

    return-void
.end method

.method private prepare(Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 7
    .param p1    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 350
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 352
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v0, "incentivizedTextSetByPub"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    const-string v1, "userID"

    .line 353
    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 355
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez p1, :cond_1

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adStartTime:J

    .line 357
    new-instance p1, Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    iget-wide v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adStartTime:J

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    .line 358
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/view/WebViewAPI;->setErrorListener(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;)V

    .line 364
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->isCtaOverlayEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getCtaClickArea()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCTAOverlay(ZZ)V

    .line 365
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_2

    .line 366
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const-string v1, "start"

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .line 474
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    .line 475
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showGDPR(Lcom/vungle/warren/model/Cookie;)V
    .locals 6
    .param p1    # Lcom/vungle/warren/model/Cookie;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 377
    new-instance v5, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;

    invoke-direct {v5, p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Lcom/vungle/warren/model/Cookie;)V

    const-string v0, "consent_status"

    const-string v1, "opted_out_by_timeout"

    .line 400
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timestamp"

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consent_source"

    const-string v1, "vungle_modal"

    .line 402
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const-string v0, "consent_title"

    .line 406
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "consent_message"

    .line 407
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "button_accept"

    .line 408
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "button_deny"

    .line 409
    invoke-virtual {p1, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 406
    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showIncetivizedDialog()V
    .locals 11

    .line 446
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v1, "incentivizedTextSetByPub"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    .line 448
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    .line 449
    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    .line 450
    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    .line 451
    iget-object v4, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "title"

    .line 454
    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "body"

    .line 455
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, "body"

    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "continue"

    .line 456
    invoke-virtual {v0, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v3, "continue"

    invoke-virtual {v0, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v4, "close"

    .line 457
    invoke-virtual {v0, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_3
    const-string v4, "close"

    invoke-virtual {v0, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_4
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .line 460
    new-instance v10, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;

    invoke-direct {v10, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

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

    .line 57
    check-cast p1, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->attach(Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lcom/vungle/warren/ui/state/OptionsState;)V
    .locals 5
    .param p1    # Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 270
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    .line 271
    invoke-interface {p1, p0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 274
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    if-lez v0, :cond_3

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 278
    :goto_0
    iput-boolean v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    and-int/lit8 v2, v0, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 279
    :goto_1
    iput-boolean v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .line 280
    :cond_2
    iput-boolean v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->directDownloadApkEnabled:Z

    :cond_3
    const/4 v0, -0x1

    .line 285
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v1

    const/16 v2, 0x10

    and-int/2addr v1, v2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_4

    .line 286
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v3, -0x1

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x6

    const/4 v3, 0x6

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x7

    const/4 v3, 0x7

    :cond_4
    :goto_2
    :pswitch_2
    const-string v0, "LocalAdPresenter"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface {p1, v3}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setOrientation(I)V

    .line 306
    invoke-direct {p0, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->prepare(Lcom/vungle/warren/ui/state/OptionsState;)V

    return-void

    nop

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

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->stop(ZZ)V

    .line 312
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->destroyAdView()V

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

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    const-string v0, "saved_report"

    .line 650
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "incentivized_sent"

    .line 651
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    const-string v0, "in_post_roll"

    .line 652
    iget-boolean v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    const-string v0, "videoPosition"

    .line 653
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result v1

    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public handleExit(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 415
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return v0

    .line 421
    :cond_0
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 v2, 0x4b

    if-gt p1, v2, :cond_2

    .line 429
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showIncetivizedDialog()V

    return v1

    :cond_2
    const-string p1, "video_close"

    const/4 v2, 0x0

    .line 433
    invoke-virtual {p0, p1, v2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 437
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    return v1

    .line 440
    :cond_3
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return v0
.end method

.method public onDownload()V
    .locals 0

    .line 629
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->download()V

    return-void
.end method

.method public onMediaError(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 634
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 673
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

    .line 690
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

    .line 680
    :pswitch_0
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->download()V

    .line 681
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    goto :goto_2

    .line 675
    :pswitch_1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    :goto_2
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMute(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    const-string v0, "true"

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "unmute"

    const-string v0, "false"

    .line 623
    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPrivacy()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-string v1, "https://vungle.com/privacy/"

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->open(Ljava/lang/String;)V

    return-void
.end method

.method public onProgressUpdate(IF)V
    .locals 5

    int-to-float v0, p1

    div-float/2addr v0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 559
    iput p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    .line 560
    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    .line 562
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p2, :cond_0

    .line 563
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "percentViewed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "video_viewed"

    .line 566
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->onProgress(I)V

    .line 570
    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_2

    .line 573
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoTracker:Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    invoke-interface {p1}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->stop()V

    .line 575
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result p1

    if-ne p1, p2, :cond_1

    .line 576
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->continueWithPostroll()V

    .line 584
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    invoke-virtual {p1, p2}, Lcom/vungle/warren/model/Report;->recordProgress(I)V

    .line 585
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 590
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result p2

    if-le p1, p2, :cond_3

    .line 593
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 597
    :cond_3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string p2, "configSettings"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Cookie;

    .line 598
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 v0, 0x4b

    if-le p2, v0, :cond_4

    if-eqz p1, :cond_4

    const-string p2, "isReportIncentivizedEnabled"

    .line 600
    invoke-virtual {p1, p2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 601
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 604
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p2, "placement_reference_id"

    .line 605
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p2, "app_id"

    .line 606
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p2, "adStartTime"

    .line 607
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p2, "user"

    .line 608
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 609
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    :cond_4
    return-void
.end method

.method public onReceivedError(Ljava/lang/String;)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 761
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    :cond_0
    return-void
.end method

.method public onVideoStart(IF)V
    .locals 4

    const-string p1, "videoLength"

    .line 615
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewConfigurationChanged()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lcom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    return-void
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

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->duration:I

    .line 238
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->duration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 239
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x321793ce    # -4.874256E8f

    if-eq v1, v2, :cond_3

    const v2, 0x335219

    if-eq v1, v2, :cond_2

    const v2, 0x51b1cd34

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "video_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "unmute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lcom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, p1}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 256
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 217
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 220
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->close()V

    :goto_0
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

    .line 662
    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    const-string v0, "in_post_roll"

    .line 667
    iget-boolean v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const-string v0, "videoPosition"

    .line 668
    iget v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/state/OptionsState;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    return-void
.end method

.method public setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 213
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method

.method public start()V
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setImmersiveMode()V

    .line 494
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->resumeWeb()V

    .line 497
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/HashMap;

    const-string v1, "consentIsImportantToVungle"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    .line 498
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->needShowGDPR(Lcom/vungle/warren/model/Cookie;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-direct {p0, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showGDPR(Lcom/vungle/warren/model/Cookie;)V

    return-void

    .line 504
    :cond_0
    iget-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-eqz v0, :cond_1

    .line 505
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isWebPageBlank()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    invoke-direct {p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isDialogVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-boolean v2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    iget v3, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    invoke-interface {v1, v0, v2, v3}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->playVideo(Ljava/io/File;ZI)V

    .line 514
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result v0

    if-lez v0, :cond_2

    .line 517
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    new-instance v2, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;-><init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    .line 528
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCloseButton()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stop(ZZ)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseWeb()V

    .line 537
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    .line 539
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 544
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "close"

    const/4 p2, 0x0

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lcom/vungle/warren/utility/Scheduler;

    invoke-interface {p1}, Lcom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 547
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz p1, :cond_4

    .line 548
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const-string v0, "end"

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lcom/vungle/warren/model/Report;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "isCTAClicked"

    :cond_1
    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_2
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 552
    :cond_3
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-string p2, "about:blank"

    invoke-interface {p1, p2}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showWebsite(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
