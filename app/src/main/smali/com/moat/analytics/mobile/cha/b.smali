.class abstract Lcom/moat/analytics/mobile/cha/b;
.super Lcom/moat/analytics/mobile/cha/d;
.source "SourceFile"


# static fields
.field static final ʻ:[Lcom/moat/analytics/mobile/cha/MoatAdEventType;


# instance fields
.field final ʼ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moat/analytics/mobile/cha/MoatAdEventType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ʼॱ:Ljava/lang/String;

.field ˊॱ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ˋॱ:Z

.field private ˏॱ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ͺ:Ljava/lang/Double;

.field private ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

.field private final ॱˋ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/moat/analytics/mobile/cha/MoatAdEventType;",
            ">;"
        }
    .end annotation
.end field

.field private final ॱˎ:Lcom/moat/analytics/mobile/cha/a;

.field final ᐝ:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/moat/analytics/mobile/cha/b;->ʻ:[Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    invoke-direct {p0, v1, v0, v2}, Lcom/moat/analytics/mobile/cha/d;-><init>(Landroid/view/View;ZZ)V

    const-string v1, "BaseVideoTracker"

    const-string v2, "Initializing."

    const/4 v3, 0x3

    .line 70
    invoke-static {v3, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ʼॱ:Ljava/lang/String;

    .line 73
    new-instance p1, Lcom/moat/analytics/mobile/cha/a;

    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˏ()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/moat/analytics/mobile/cha/a$d;->ˋ:I

    invoke-direct {p1, v1, v2}, Lcom/moat/analytics/mobile/cha/a;-><init>(Landroid/app/Application;I)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    .line 75
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object p1, p1, Lcom/moat/analytics/mobile/cha/a;->ˏ:Lcom/moat/analytics/mobile/cha/j;

    .line 1146
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    .line 77
    :try_start_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object p1, p1, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->ॱ(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Lcom/moat/analytics/mobile/cha/o; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    .line 82
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    .line 83
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˋ:Ljava/util/HashSet;

    .line 84
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ᐝ:Landroid/os/Handler;

    .line 85
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˋॱ:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    return-void
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/cha/b;)Lcom/moat/analytics/mobile/cha/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    return-object p0
.end method

.method static ˋ(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 4

    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 275
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double v0, v0, v2

    const-wide v2, 0x4087700000000000L    # 750.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    int-to-double p0, p0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic ˏ(Lcom/moat/analytics/mobile/cha/b;)Lcom/moat/analytics/mobile/cha/VideoTrackerListener;
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    return-object v0
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .locals 3

    const-string v0, "BaseVideoTracker"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changing view to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˊॱ:Ljava/lang/ref/WeakReference;

    .line 144
    :try_start_0
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->changeTargetView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 146
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V
    .locals 8

    .line 2217
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "BaseVideoTracker"

    const-string v3, "Received event: %s"

    const/4 v4, 0x1

    .line 2218
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[SUCCESS] "

    .line 2219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Received event: %s"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˊ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2221
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz v1, :cond_0

    .line 2222
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object v2, v2, Lcom/moat/analytics/mobile/cha/a;->ˊ:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/moat/analytics/mobile/cha/j;->ॱ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2223
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˋ:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˋ:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    iget-object v1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/cha/VideoTrackerListener;->onVideoEventReported(Lcom/moat/analytics/mobile/cha/MoatAdEventType;)V

    .line 2232
    :cond_0
    iget-object p1, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 2262
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    if-eqz v7, :cond_4

    .line 2234
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    invoke-virtual {p1, p0}, Lcom/moat/analytics/mobile/cha/j;->ˋ(Lcom/moat/analytics/mobile/cha/d;)V

    .line 2236
    :cond_3
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˏॱ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 179
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method public removeVideoListener()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    return-void
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .locals 7

    .line 1191
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    const-string v2, "BaseVideoTracker"

    .line 132
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "player volume changed to %f "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 2191
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 2187
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;

    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˋ:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    invoke-direct {p1, v0, v1, v2}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/cha/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->dispatchEvent(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)V

    :cond_0
    return-void
.end method

.method public setVideoListener(Lcom/moat/analytics/mobile/cha/VideoTrackerListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    return-void
.end method

.method public stopTracking()V
    .locals 1

    .line 165
    :try_start_0
    invoke-super {p0}, Lcom/moat/analytics/mobile/cha/d;->stopTracking()V

    .line 166
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˏॱ()V

    .line 167
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˊ:Lcom/moat/analytics/mobile/cha/VideoTrackerListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method final ˊॱ()Ljava/lang/Double;
    .locals 4

    .line 3191
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method ˋ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˏॱ:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "Null adIds object"

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->ˋ(Ljava/util/List;)V

    return-void

    :cond_1
    const-string v0, " and "

    .line 156
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final ˋॱ()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 269
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ʼ:Ljava/util/HashMap;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 270
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;
    .locals 2

    .line 210
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˊ:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˊ:Ljava/lang/Double;

    .line 213
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ()Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method final ˏ()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˊॱ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/moat/analytics/mobile/cha/d;->changeTargetView(Landroid/view/View;)V

    .line 197
    invoke-super {p0}, Lcom/moat/analytics/mobile/cha/d;->ˏ()V

    .line 199
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ᐝ()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "width"

    .line 200
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    const-string v1, "height"

    .line 201
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    const-string v1, "duration"

    .line 202
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    const-string v0, "BaseVideoTracker"

    .line 204
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Player metadata: height = %d, width = %d, duration = %d"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v4, v8

    const/4 v8, 0x1

    aput-object v5, v4, v8

    const/4 v8, 0x2

    aput-object v7, v4, v8

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ॱˎ:Lcom/moat/analytics/mobile/cha/a;

    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/b;->ʼॱ:Ljava/lang/String;

    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/b;->ˏॱ:Ljava/util/Map;

    invoke-virtual/range {v2 .. v7}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method final ˏॱ()V
    .locals 4

    .line 241
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˋॱ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/b;->ˋॱ:Z

    .line 243
    new-instance v0, Lcom/moat/analytics/mobile/cha/b$5;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/cha/b$5;-><init>(Lcom/moat/analytics/mobile/cha/b;)V

    .line 257
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/b;->ᐝ:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public ॱ(Ljava/util/Map;Landroid/view/View;)Z
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˎ()V

    .line 102
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ॱ()V

    const/4 v1, 0x3

    if-nez p2, :cond_0

    const-string v2, "BaseVideoTracker"

    const-string v3, "trackVideoAd received null video view instance"

    .line 106
    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ˏॱ:Ljava/util/Map;

    .line 110
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/moat/analytics/mobile/cha/b;->ˊॱ:Ljava/lang/ref/WeakReference;

    .line 112
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˏ()V

    const-string v2, "trackVideoAd tracking ids: %s | view: %s"

    const/4 v3, 0x2

    .line 114
    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 115
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 116
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    .line 114
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "BaseVideoTracker"

    .line 117
    invoke-static {v1, v2, p0, p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[SUCCESS] "

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ˋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/b;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/b;->ʻ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/moat/analytics/mobile/cha/TrackerListener;->onTrackingStarted(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p2

    :catch_0
    move-exception p1

    const-string p2, "trackVideoAd"

    .line 124
    invoke-virtual {p0, p2, p1}, Lcom/moat/analytics/mobile/cha/b;->ॱ(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method final ॱˊ()Ljava/lang/Double;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/b;->ͺ:Ljava/lang/Double;

    return-object v0
.end method

.method abstract ᐝ()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation
.end method
