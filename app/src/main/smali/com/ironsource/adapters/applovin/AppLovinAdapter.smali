.class Lcom/ironsource/adapters/applovin/AppLovinAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "AppLovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;
    }
.end annotation


# static fields
.field private static final GitHash:Ljava/lang/String; = "392208f58"

.field private static final SDK_KEY:Ljava/lang/String; = "sdkKey"

.field private static final VERSION:Ljava/lang/String; = "4.3.6"

.field private static final ZONE_ID:Ljava/lang/String; = "zoneId"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

.field private volatile mConsentCollectingUserData:Ljava/lang/Boolean;

.field private mDidInitSdkFinished:Ljava/lang/Boolean;

.field private mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mZoneIdToAppLovinListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/adview/AppLovinAdView;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToIsAdDialog:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/adview/AppLovinInterstitialAdDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToIsAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/applovin/adview/AppLovinIncentivizedInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    .line 89
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAllBannerSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdDialog:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createInterstitialAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->calcLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createRewardedAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/lang/Boolean;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkFinished:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/applovin/AppLovinAdapter;I)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private calcLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 664
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x12c

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2d8

    goto :goto_0

    :cond_1
    const/16 p1, 0x140

    .line 670
    :goto_0
    invoke-static {p3, p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p1

    .line 671
    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p2

    invoke-static {p3, p2}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/app/Activity;I)I

    move-result p2

    .line 672
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p3, p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p3
.end method

.method private calculateBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 2

    .line 642
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "SMART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "LARGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 654
    :pswitch_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p2

    const/16 v0, 0x28

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    const/16 p2, 0x3c

    if-gt p1, p2, :cond_2

    .line 655
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :pswitch_1
    if-eqz p2, :cond_1

    .line 651
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :goto_2
    return-object p1

    .line 648
    :pswitch_2
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 645
    :pswitch_3
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :cond_2
    :goto_3
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_4
        0x44dc31b -> :sswitch_3
        0x4b59da9 -> :sswitch_2
        0x7458732c -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createAdLoadListener(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    .line 370
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private createInterstitialAd(Ljava/lang/String;)V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdDialog:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$9;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$9;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 457
    new-instance v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$10;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 475
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    :cond_0
    return-void
.end method

.method private createRewardedAd(Ljava/lang/String;)V
    .locals 2

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {p1, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .locals 1

    .line 113
    :try_start_0
    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x258

    if-eq p1, v0, :cond_6

    const/16 v0, -0x1f4

    if-eq p1, v0, :cond_5

    const/16 v0, -0x190

    if-eq p1, v0, :cond_4

    const/16 v0, -0x12c

    if-eq p1, v0, :cond_3

    const/4 v0, -0x6

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown error"

    return-object p1

    :pswitch_0
    const-string p1, "Ad fetch timeout"

    return-object p1

    :pswitch_1
    const-string p1, "No network available"

    return-object p1

    :cond_0
    const-string p1, "No fill"

    return-object p1

    :cond_1
    const-string p1, "Unspecified error"

    return-object p1

    :cond_2
    const-string p1, "Unable to render ad"

    return-object p1

    :cond_3
    const-string p1, "No ad pre-loaded"

    return-object p1

    :cond_4
    const-string p1, "Unknown server error"

    return-object p1

    :cond_5
    const-string p1, "Server timeout"

    return-object p1

    :cond_6
    const-string p1, "User closed video before reward"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .locals 2

    .line 105
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "AppLovin"

    const-string v1, "4.3.6"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.applovin.adview.AppLovinInterstitialActivity"

    const-string v1, "com.applovin.sdk.AppLovinWebViewActivity"

    .line 106
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    return-object p0
.end method

.method private getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .locals 1

    .line 842
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getZoneId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "zoneId"

    .line 838
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private initSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->isAdaptersDebugEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 154
    :catch_0
    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 156
    invoke-static {p2, v0, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 157
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p1, p3}, Lcom/applovin/sdk/AppLovinSdk;->setUserIdentifier(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    new-instance p2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;

    invoke-direct {p2, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    invoke-virtual {p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    .line 184
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->setConsent(Z)V

    :cond_0
    return-void
.end method

.method private loadRewardedVideo(Ljava/lang/String;)V
    .locals 3

    .line 248
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": in loadRewardedVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAdLoadListener(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/applovin/AppLovinAdapter;
    .locals 1

    .line 83
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroyBanner(Lorg/json/JSONObject;)V
    .locals 1

    .line 678
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 679
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 3

    .line 240
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": in fetchRewardedVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 241
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadRewardedVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .line 127
    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.3.6"

    return-object v0
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 6

    if-nez p5, :cond_0

    .line 548
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " initBanners listener == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    if-eqz p4, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "sdkKey"

    .line 557
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "Missing params"

    const-string p2, "Banner"

    .line 559
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 563
    :cond_2
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 564
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mActivity:Landroid/app/Activity;

    .line 565
    iget-object p4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p2, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance p2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "null parameters"

    const-string p2, "Banner"

    .line 553
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 6

    if-nez p5, :cond_0

    .line 410
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " IS init failed: InterstitialSmashListener is empty"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p2, "sdkKey"

    .line 414
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 416
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " initInterstitial empty sdkKey"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "initInterstitial empty sdkKey"

    const-string p2, "Interstitial"

    .line 417
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 421
    :cond_1
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 422
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mActivity:Landroid/app/Activity;

    .line 423
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v5, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance p2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 6

    if-nez p5, :cond_0

    .line 195
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " RV init failed: RewardedVideoSmashListener is empty"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p2, "sdkKey"

    .line 199
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 201
    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void

    .line 205
    :cond_1
    invoke-direct {p0, p4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 206
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mActivity:Landroid/app/Activity;

    .line 207
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v5, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance p2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$2;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$2;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 1

    .line 540
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdDialog:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .locals 1

    .line 400
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 401
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 8

    const/4 v0, 0x3

    if-nez p3, :cond_0

    .line 582
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadBanner listener == null"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 587
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadBanner banner == null"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 591
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->calculateBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v6

    if-nez v6, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 597
    :cond_2
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 598
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loadBanner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", zoneID <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 599
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 600
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$14;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$14;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 4

    if-nez p2, :cond_0

    .line 483
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS load failed: InterstitialSmashListener is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loadInterstitial <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$11;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;

    invoke-direct {v2, p0, p2, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public reloadBanner(Lorg/json/JSONObject;)V
    .locals 6

    .line 690
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 691
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    .line 692
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;

    .line 693
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Banner reloadBanner: <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 701
    new-instance v3, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Lcom/applovin/adview/AppLovinAdView;Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 695
    :cond_1
    :goto_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":reloadBanner() failed, null parameters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method protected setConsent(Z)V
    .locals 1

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mConsentCollectingUserData:Ljava/lang/Boolean;

    .line 137
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mDidInitSdkStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 4

    .line 528
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " showInterstitial <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    .line 530
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdDialog:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "Interstitial"

    .line 531
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 534
    :cond_1
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdDialog:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p2, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 535
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToIsAdReadyStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 6

    .line 255
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 257
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "Rewarded Video"

    .line 258
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 p1, 0x0

    .line 259
    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 264
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/sdk/AppLovinSdk;->setUserIdentifier(Ljava/lang/String;)V

    .line 267
    :cond_2
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRvAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;

    invoke-direct {v2, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    new-instance v3, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;

    invoke-direct {v3, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$4;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    new-instance v4, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;

    invoke-direct {v4, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    new-instance v5, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;

    invoke-direct {v5, p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method
