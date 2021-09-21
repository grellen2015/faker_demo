.class Lcom/ironsource/adapters/vungle/VungleAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "AppID"

.field private static final CONSENT_MESSAGE_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final GitHash:Ljava/lang/String; = "e4a4735e4"

.field private static final PLACEMENT_ID:Ljava/lang/String; = "PlacementId"

.field private static final VERSION:Ljava/lang/String; = "4.1.6"


# instance fields
.field private mInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

.field private mInitiatedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConsent:Ljava/lang/Boolean;

.field private mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
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

    .line 58
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mIsConsent:Ljava/lang/Boolean;

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/lang/Boolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mIsConsent:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/Set;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/adapters/vungle/VungleAdapter;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->loadRewardedVideoAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ironsource/adapters/vungle/VungleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    return-void
.end method

.method private addInitiatedAdUnit(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.4.11"

    return-object v0
.end method

.method private getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    return-object v0
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .locals 2

    .line 66
    new-instance p0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v0, "Vungle"

    const-string v1, "4.1.6"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->validateWriteExternalStorage:Z

    return-object p0
.end method

.method private initVungleSdk(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    .line 353
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$4;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter$4;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;)V

    invoke-static {p2, p1, v0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V

    :cond_0
    return-void
.end method

.method private loadRewardedVideoAd(Ljava/lang/String;)V
    .locals 3

    .line 434
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": loadRewardedVideoAd placementId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 436
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$5;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter$5;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;)V

    invoke-static {p1, v0}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method private setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V
    .locals 3

    .line 332
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":init state changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 334
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    return-void
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/vungle/VungleAdapter;
    .locals 1

    .line 54
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "PlacementId"

    .line 145
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": in fetchRewardedVideo for placementId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->loadRewardedVideoAd(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.1.6"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 0

    const-string p2, "AppID"

    .line 219
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "PlacementId"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "PlacementId"

    .line 225
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p5, :cond_1

    .line 226
    iget-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p3, "PlacementId"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "Interstitial"

    .line 228
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->addInitiatedAdUnit(Ljava/lang/String;)V

    .line 229
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 231
    sget-object p2, Lcom/ironsource/adapters/vungle/VungleAdapter$6;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p5, :cond_2

    const-string p1, "Init Failed"

    const-string p2, "Interstitial"

    .line 245
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :pswitch_1
    if-eqz p5, :cond_2

    .line 240
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_0

    :pswitch_2
    const-string p2, "AppID"

    .line 233
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initVungleSdk(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    :pswitch_3
    return-void

    :cond_3
    :goto_1
    if-eqz p5, :cond_4

    const-string p1, "Missing params"

    const-string p2, "Interstitial"

    .line 221
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 1

    const-string p2, "AppID"

    .line 109
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_4

    const-string p2, "PlacementId"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "PlacementId"

    .line 115
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p5, :cond_1

    .line 116
    iget-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mPlacementIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "PlacementId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "Rewarded Video"

    .line 118
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->addInitiatedAdUnit(Ljava/lang/String;)V

    .line 119
    sget-object p2, Lcom/ironsource/adapters/vungle/VungleAdapter$6;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p5, :cond_3

    .line 137
    invoke-interface {p5, p3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "PlacementId"

    .line 127
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p5, :cond_3

    const/4 p1, 0x1

    .line 129
    invoke-interface {p5, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "PlacementId"

    .line 131
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->loadRewardedVideoAd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p2, "AppID"

    .line 121
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initVungleSdk(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    :pswitch_3
    return-void

    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    .line 111
    invoke-interface {p5, p3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .locals 1

    .line 324
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlacementId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

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

    .line 212
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlacementId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 1

    .line 254
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PlacementId"

    .line 255
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {p1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 258
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter$2;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-static {p1, v0}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected setConsent(Z)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 89
    sget-object p1, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    :goto_0
    const-string v0, "1.0.0"

    invoke-static {p1, v0}, Lcom/vungle/warren/Vungle;->updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mIsConsent:Ljava/lang/Boolean;

    :goto_1
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .locals 2

    const-string v0, "PlacementId"

    .line 284
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlacementId"

    .line 285
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter$3;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "Interstitial"

    .line 318
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .locals 3

    .line 160
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    const-string v1, "PlacementId"

    .line 161
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2, v2}, Lcom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "PlacementId"

    .line 166
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/adapters/vungle/VungleAdapter$1;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    :cond_1
    return-void
.end method
