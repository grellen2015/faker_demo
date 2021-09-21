.class public Lcom/applovin/impl/sdk/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/a/a$a;,
        Lcom/applovin/impl/sdk/a/a$b;
    }
.end annotation


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/i;

.field protected final b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private c:Lcom/applovin/sdk/AppLovinAd;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/applovin/sdk/AppLovinAdLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Z

.field private i:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/applovin/adview/AppLovinInterstitialAdDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/a/a;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/a/a;->h:Z

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/p;->a(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/impl/sdk/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    check-cast p2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/a;->b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/a/a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/a/a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/AppLovinAdBase;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 8

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    const-string p3, "IncentivizedAdController"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to render an ad of type "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in an Incentivized Ad interstitial."

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p3, p6}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4, p5}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/i;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->S()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/sdk/a/a$b;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/a/a$b;-><init>(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/sdk/a/a$1;)V

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    invoke-interface {p1, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/a/a;->i:Ljava/lang/ref/SoftReference;

    instance-of p1, v0, Lcom/applovin/impl/sdk/ad/f;

    if-eqz p1, :cond_2

    check-cast v0, Lcom/applovin/impl/sdk/ad/f;

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/ad/f;Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p4, p5}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/f;Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/d/ad;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/ad/f;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/sdk/d/r$a;->i:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    check-cast v0, Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    if-ne p1, v0, :cond_1

    :goto_0
    iput-object v1, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    :cond_1
    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    if-eqz p1, :cond_0

    :goto_0
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    move-object v1, p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_2

    :cond_1
    const-string p1, "IncentivizedAdController"

    const-string p2, "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded."

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/a/a;->d()V

    :goto_2
    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->L()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->j:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/a/a;->g:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/a/a;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method private b(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextIncentivizedAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/applovin/impl/sdk/a/a;->h:Z

    return p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    const/16 v1, -0x12c

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/a/a;->g:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()Lcom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/a/a$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/a/a$1;-><init>(Lcom/applovin/impl/sdk/a/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    if-nez p4, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/a/a;->f()Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object p4

    :cond_0
    move-object v3, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/sdk/AppLovinAd;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "User requested preload of incentivized ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/a/a;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IncentivizedAdController"

    const-string v1, "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden)."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/a/a$a;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/a/a$a;-><init>(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/a/a;->b(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->i:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->dismiss()V

    :cond_0
    return-void
.end method
