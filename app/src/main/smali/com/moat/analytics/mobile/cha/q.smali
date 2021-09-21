.class final Lcom/moat/analytics/mobile/cha/q;
.super Lcom/moat/analytics/mobile/cha/d;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/NativeDisplayTracker;


# instance fields
.field private final ˊॱ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ᐝ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/moat/analytics/mobile/cha/d;-><init>(Landroid/view/View;ZZ)V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/q;->ᐝ:Ljava/util/HashSet;

    const-string v0, "NativeDisplayTracker"

    const-string v1, "Initializing."

    const/4 v2, 0x3

    .line 36
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/q;->ˊॱ:Ljava/util/Map;

    if-nez p1, :cond_0

    const-string p1, "Target view is null"

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NativeDisplayTracker initialization not successful, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[ERROR] "

    const-string v1, "NativeDisplayTracker"

    .line 1055
    invoke-static {v2, v1, p0, p2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v0, p2}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance p2, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {p2, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/q;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    return-void

    :cond_0
    if-eqz p2, :cond_4

    .line 45
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lcom/moat/analytics/mobile/cha/f;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/cha/f;

    iget-object p1, p1, Lcom/moat/analytics/mobile/cha/f;->ॱ:Lcom/moat/analytics/mobile/cha/a;

    if-nez p1, :cond_2

    const-string p1, "prepareNativeDisplayTracking was not called successfully"

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NativeDisplayTracker initialization not successful, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[ERROR] "

    const-string v1, "NativeDisplayTracker"

    .line 3055
    invoke-static {v2, v1, p0, p2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3056
    invoke-static {v0, p2}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p2, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {p2, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/q;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    return-void

    .line 60
    :cond_2
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/a;->ˏ:Lcom/moat/analytics/mobile/cha/j;

    .line 3146
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    .line 62
    :try_start_0
    iget-object p1, p1, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->ॱ(Landroid/webkit/WebView;)V

    .line 4101
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/q;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz p1, :cond_3

    .line 4102
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/q;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/q;->ˊॱ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/moat/analytics/mobile/cha/j;->ˏ(Ljava/lang/String;)V

    :cond_3
    const-string p1, "[SUCCESS] "

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeDisplayTracker created for "

    .line 5075
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/q;->ʻ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", with adIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/moat/analytics/mobile/cha/o; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/q;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    return-void

    :cond_4
    :goto_0
    const-string p1, "AdIds is null or empty"

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NativeDisplayTracker initialization not successful, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[ERROR] "

    const-string v0, "NativeDisplayTracker"

    .line 2055
    invoke-static {v2, v0, p0, p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/moat/analytics/mobile/cha/o;

    const-string p2, "AdIds is null or empty"

    invoke-direct {p1, p2}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/q;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    return-void
.end method

.method private ˊॱ()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/q;->ˊॱ:Ljava/util/Map;

    .line 5135
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 5137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moatClientLevel"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5138
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5139
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v5, :cond_3

    .line 5143
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "moatClientSlicer"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5144
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5145
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5148
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5149
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5150
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5151
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5154
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "NativeDisplayTracker"

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parsed ad ids = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"adIds\":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"adKey\":\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/q;->ˋ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"adSize\":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/q;->ᐝ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 113
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    :goto_3
    return-object v0
.end method

.method private ᐝ()Ljava/lang/String;
    .locals 4

    .line 121
    :try_start_0
    invoke-super {p0}, Lcom/moat/analytics/mobile/cha/d;->ʼ()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "width"

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 129
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final reportUserInteractionEvent(Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;)V
    .locals 4

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "NativeDisplayTracker"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportUserInteractionEvent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/q;->ᐝ:Ljava/util/HashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/q;->ᐝ:Ljava/util/HashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adKey"

    .line 85
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/q;->ˋ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    .line 86
    invoke-virtual {p1}, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker$MoatUserInteractionType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/q;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/q;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/moat/analytics/mobile/cha/j;->ॱ(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    const-string v0, "NativeDisplayTracker"

    const-string v1, "Got JSON exception"

    .line 92
    invoke-static {v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method final ˋ()Ljava/lang/String;
    .locals 1

    const-string v0, "NativeDisplayTracker"

    return-object v0
.end method
