.class public Lcom/vungle/warren/analytics/MoatTracker;
.super Ljava/lang/Object;
.source "MoatTracker.java"

# interfaces
.implements Lcom/vungle/warren/analytics/AnalyticsVideoTracker;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoatTracker"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VUNGLE_ID:Ljava/lang/String; = "vunglenativevideo893259554489"


# instance fields
.field private adIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configured:Z

.field private isMoatEnabled:Z

.field private moatQuartileTrackers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/moat/analytics/mobile/vng/MoatAdEventType;",
            ">;>;"
        }
    .end annotation
.end field

.field private tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/widget/VideoView;Z)V
    .locals 1
    .param p1    # Landroid/widget/VideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    .line 42
    iput-boolean p2, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    .line 43
    iput-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    return-void
.end method

.method public static connect(Landroid/widget/VideoView;Z)Lcom/vungle/warren/analytics/MoatTracker;
    .locals 1
    .param p0    # Landroid/widget/VideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    new-instance v0, Lcom/vungle/warren/analytics/MoatTracker;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/analytics/MoatTracker;-><init>(Landroid/widget/VideoView;Z)V

    return-object v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatFactory;->create()Lcom/moat/analytics/mobile/vng/MoatFactory;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;

    const-string v2, "vunglenativevideo893259554489"

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/MoatFactory;->createCustomTracker(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    iput-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    .line 49
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getMoatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    .line 51
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    if-eqz v0, :cond_c

    .line 52
    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/MoatOptions;-><init>()V

    .line 53
    iput-boolean v2, v0, Lcom/moat/analytics/mobile/vng/MoatOptions;->disableAdIdCollection:Z

    .line 54
    iput-boolean v2, v0, Lcom/moat/analytics/mobile/vng/MoatOptions;->disableLocationServices:Z

    .line 55
    iput-boolean v1, v0, Lcom/moat/analytics/mobile/vng/MoatOptions;->loggingEnabled:Z

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    .line 63
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    new-instance v3, Landroid/util/Pair;

    const/16 v4, 0x4b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getMoatVastExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    const-string v3, "zMoatVASTIDs"

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getMoatVastExtra()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    .line 76
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "app_id"

    .line 77
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    const-string v3, "app_id"

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 79
    sget-object v5, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    const-string v6, "JsonException : "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x7c

    .line 86
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 88
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v2

    .line 90
    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 92
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object v7, v4

    move-object v4, p2

    move-object p2, v7

    goto :goto_2

    :cond_6
    move-object p2, v4

    .line 101
    :goto_2
    iget-object v3, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    const-string v5, "level1"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v0, "unknown"

    :cond_7
    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    const-string v3, "level2"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v4, "unknown"

    :cond_8
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    const-string v3, "level3"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string p2, "unknown"

    :cond_9
    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p2, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    const-string v0, "level4"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string p1, "unknown"

    :cond_a
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 107
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    const-string p2, "slicer1"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_b
    iput-boolean v2, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    .line 113
    :cond_c
    iget-boolean p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    iput-boolean v1, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 122
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    iget-object v2, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;)V

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    .line 127
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {p1}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->stopTracking()V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 131
    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    iget-object v1, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;)V

    .line 132
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start(I)V
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    iget-object v1, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    invoke-interface {v0, v1, p1, v2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 150
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    sget-object v1, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopViewabilityTracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    new-instance v2, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    sget-object v3, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;)V

    invoke-interface {v1, v2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    .line 156
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->stopTracking()V

    .line 157
    sget-object v0, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    const-string v1, "stopViewabilityTracker: Success !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
