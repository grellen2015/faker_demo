.class abstract Lcom/moat/analytics/mobile/cha/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ʻ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ʼ:Z

.field final ʽ:Z

.field ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

.field private ˊॱ:Z

.field final ˋ:Ljava/lang/String;

.field ˎ:Lcom/moat/analytics/mobile/cha/j;

.field ˏ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private ͺ:Z

.field ॱ:Lcom/moat/analytics/mobile/cha/o;

.field private final ᐝ:Lcom/moat/analytics/mobile/cha/u;


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    const-string v0, "BaseTracker"

    const-string v1, "Initializing."

    const/4 v2, 0x3

    .line 56
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˋ:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    .line 59
    iput-boolean p2, p0, Lcom/moat/analytics/mobile/cha/d;->ʼ:Z

    .line 60
    iput-boolean p3, p0, Lcom/moat/analytics/mobile/cha/d;->ʽ:Z

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˊॱ:Z

    .line 62
    iput-boolean p1, p0, Lcom/moat/analytics/mobile/cha/d;->ͺ:Z

    .line 63
    new-instance p1, Lcom/moat/analytics/mobile/cha/u;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/cha/u;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ᐝ:Lcom/moat/analytics/mobile/cha/u;

    return-void
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string v0, "BaseTracker"

    .line 116
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

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setListener(Lcom/moat/analytics/mobile/cha/TrackerListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    return-void
.end method

.method public startTracking()V
    .locals 4

    :try_start_0
    const-string v0, "BaseTracker"

    const-string v1, "In startTracking method."

    const/4 v2, 0x3

    .line 79
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/d;->ˏ()V

    .line 81
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Tracking started on "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2221
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1225
    invoke-static {v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/cha/TrackerListener;->onTrackingStarted(Ljava/lang/String;)V

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startTracking succeeded for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3221
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2225
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseTracker"

    .line 85
    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[SUCCESS] "

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/d;->ˋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "startTracking"

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/moat/analytics/mobile/cha/d;->ॱ(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public stopTracking()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "BaseTracker"

    const-string v3, "In stopTracking method."

    .line 96
    invoke-static {v0, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 97
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/cha/d;->ͺ:Z

    .line 98
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    invoke-virtual {v3, p0}, Lcom/moat/analytics/mobile/cha/j;->ˋ(Lcom/moat/analytics/mobile/cha/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 103
    invoke-static {v2}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const-string v2, "BaseTracker"

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attempt to stop tracking ad impression was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "un"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "successful."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, p0, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v0, "[SUCCESS] "

    goto :goto_2

    :cond_2
    const-string v0, "[ERROR] "

    .line 106
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/d;->ˋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stopTracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v1, "succeeded"

    goto :goto_3

    :cond_3
    const-string v1, "failed"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4221
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3225
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/cha/TrackerListener;->onTrackingStopped(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    :cond_4
    return-void
.end method

.method final ʻ()Ljava/lang/String;
    .locals 1

    .line 7221
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 225
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final ʼ()Landroid/view/View;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method final ʽ()Ljava/lang/String;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ᐝ:Lcom/moat/analytics/mobile/cha/u;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/d;->ˋ:Ljava/lang/String;

    .line 8221
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Ljava/lang/String;Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ᐝ:Lcom/moat/analytics/mobile/cha/u;

    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/u;->ॱ:Ljava/lang/String;

    return-object v0
.end method

.method final ˊ()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊॱ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ͺ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method abstract ˋ()Ljava/lang/String;
.end method

.method ˋ(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

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

    .line 6221
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ʻ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 201
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ʽ:Z

    if-nez v0, :cond_0

    const-string v0, "Tracker\'s target view is null"

    .line 202
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, " and "

    .line 206
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 207
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final ˎ()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tracker initialization failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/d;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/cha/o;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ˏ()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    const-string v0, "BaseTracker"

    const-string v1, "Attempting to start impression."

    const/4 v2, 0x3

    .line 127
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/d;->ˎ()V

    .line 5187
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊॱ:Z

    if-nez v0, :cond_2

    .line 5193
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ͺ:Z

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/cha/d;->ˋ(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/cha/j;->ˎ(Lcom/moat/analytics/mobile/cha/d;)V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊॱ:Z

    const-string v0, "BaseTracker"

    const-string v1, "Impression started."

    .line 136
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "BaseTracker"

    const-string v1, "Bridge is null, won\'t start tracking"

    .line 139
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    const-string v1, "Bridge is null"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5194
    :cond_1
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    const-string v1, "Tracker already stopped"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5188
    :cond_2
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    const-string v1, "Tracker already started"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final ॱ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 6187
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˊॱ:Z

    if-nez v0, :cond_1

    .line 6193
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/cha/d;->ͺ:Z

    if-nez v0, :cond_0

    return-void

    .line 6194
    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    const-string v1, "Tracker already stopped"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6188
    :cond_1
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    const-string v1, "Tracker already started"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final ॱ(Landroid/webkit/WebView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˏ:Ljava/lang/ref/WeakReference;

    .line 152
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-nez p1, :cond_3

    .line 5217
    iget-boolean p1, p0, Lcom/moat/analytics/mobile/cha/d;->ʼ:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/moat/analytics/mobile/cha/d;->ʽ:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "BaseTracker"

    const-string v0, "Attempting bridge installation."

    const/4 v1, 0x3

    .line 6162
    invoke-static {v1, p1, p0, v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6164
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6165
    new-instance p1, Lcom/moat/analytics/mobile/cha/j;

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/d;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    sget v2, Lcom/moat/analytics/mobile/cha/j$e;->ˏ:I

    invoke-direct {p1, v0, v2}, Lcom/moat/analytics/mobile/cha/j;-><init>(Landroid/webkit/WebView;I)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    const-string p1, "BaseTracker"

    const-string v0, "Bridge installed."

    .line 6166
    invoke-static {v1, p1, p0, v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 6169
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    const-string p1, "BaseTracker"

    const-string v0, "Bridge not installed, WebView is null."

    .line 6170
    invoke-static {v1, p1, p0, v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    if-eqz p1, :cond_4

    .line 156
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/d;->ˎ:Lcom/moat/analytics/mobile/cha/j;

    invoke-virtual {p1, p0}, Lcom/moat/analytics/mobile/cha/j;->ˊ(Lcom/moat/analytics/mobile/cha/d;)V

    :cond_4
    return-void
.end method

.method final ॱ(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 235
    :try_start_0
    invoke-static {p2}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 236
    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    if-eqz p2, :cond_0

    .line 238
    iget-object p2, p0, Lcom/moat/analytics/mobile/cha/d;->ˊ:Lcom/moat/analytics/mobile/cha/TrackerListener;

    invoke-interface {p2, p1}, Lcom/moat/analytics/mobile/cha/TrackerListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x3

    const-string v0, "BaseTracker"

    .line 240
    invoke-static {p2, v0, p0, p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "[ERROR] "

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/d;->ˋ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method
