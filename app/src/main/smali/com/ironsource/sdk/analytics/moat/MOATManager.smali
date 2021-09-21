.class public Lcom/ironsource/sdk/analytics/moat/MOATManager;
.super Ljava/lang/Object;
.source "MOATManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
    }
.end annotation


# static fields
.field private static final autoTrackGMAInterstitials:Ljava/lang/String; = "autoTrackGMAInterstitials"

.field private static final disableAdIdCollection:Ljava/lang/String; = "disableAdIdCollection"

.field private static final disableLocationService:Ljava/lang/String; = "disableLocationServices"

.field private static final loggingEnabled:Ljava/lang/String; = "loggingEnabled"

.field private static mEventsListener:Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

.field private static moatCallbacks:Lcom/moat/analytics/mobile/iro/TrackerListener;

.field private static webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/ironsource/sdk/analytics/moat/MOATManager$1;

    invoke-direct {v0}, Lcom/ironsource/sdk/analytics/moat/MOATManager$1;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->moatCallbacks:Lcom/moat/analytics/mobile/iro/TrackerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
    .locals 1

    .line 18
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->mEventsListener:Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    return-object v0
.end method

.method public static createAdTracker(Landroid/webkit/WebView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatFactory;->create()Lcom/moat/analytics/mobile/iro/MoatFactory;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/iro/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/iro/WebAdTracker;

    move-result-object p0

    sput-object p0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    return-void
.end method

.method private static createMoatOptions(Lorg/json/JSONObject;)Lcom/moat/analytics/mobile/iro/MoatOptions;
    .locals 2

    .line 75
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/MoatOptions;-><init>()V

    const-string v1, "loggingEnabled"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->loggingEnabled:Z

    const-string v1, "autoTrackGMAInterstitials"

    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->autoTrackGMAInterstitials:Z

    const-string v1, "disableAdIdCollection"

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->disableAdIdCollection:Z

    const/4 p0, 0x1

    .line 80
    iput-boolean p0, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->disableLocationServices:Z

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-static {v0, p0}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->initWithOptions(Lorg/json/JSONObject;Landroid/app/Application;)V

    return-void
.end method

.method public static initWithOptions(Lorg/json/JSONObject;Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->createMoatOptions(Lorg/json/JSONObject;)Lcom/moat/analytics/mobile/iro/MoatOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 71
    :goto_0
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->start(Lcom/moat/analytics/mobile/iro/MoatOptions;Landroid/app/Application;)V

    return-void
.end method

.method public static setEventListener(Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;)V
    .locals 0

    .line 56
    sput-object p0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->mEventsListener:Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    return-void
.end method

.method public static startTracking()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    sget-object v1, Lcom/ironsource/sdk/analytics/moat/MOATManager;->moatCallbacks:Lcom/moat/analytics/mobile/iro/TrackerListener;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->setListener(Lcom/moat/analytics/mobile/iro/TrackerListener;)V

    .line 93
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->startTracking()V

    :cond_0
    return-void
.end method

.method public static stopTracking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->stopTracking()V

    :cond_0
    return-void
.end method
