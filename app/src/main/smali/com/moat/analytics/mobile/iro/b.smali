.class abstract Lcom/moat/analytics/mobile/iro/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/moat/analytics/mobile/iro/n;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/moat/analytics/mobile/iro/j;

.field d:Lcom/moat/analytics/mobile/iro/TrackerListener;

.field final e:Ljava/lang/String;

.field final f:Z

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/moat/analytics/mobile/iro/z;

.field private final i:Z

.field private j:Z

.field private k:Z


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->a:Lcom/moat/analytics/mobile/iro/n;

    const-string v0, "BaseTracker"

    const-string v1, "Initializing."

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->g:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/moat/analytics/mobile/iro/b;->i:Z

    iput-boolean p3, p0, Lcom/moat/analytics/mobile/iro/b;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/iro/b;->j:Z

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/iro/b;->k:Z

    new-instance p1, Lcom/moat/analytics/mobile/iro/z;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/iro/z;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/b;->h:Lcom/moat/analytics/mobile/iro/z;

    return-void
.end method

.method private i()V
    .locals 4

    const-string v0, "BaseTracker"

    const-string v1, "Attempting bridge installation."

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/moat/analytics/mobile/iro/j;

    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sget-object v3, Lcom/moat/analytics/mobile/iro/j$a;->a:Lcom/moat/analytics/mobile/iro/j$a;

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/iro/j;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/iro/j$a;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    const-string v0, "BaseTracker"

    const-string v1, "Bridge installed."

    :goto_0
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    const-string v0, "BaseTracker"

    const-string v1, "Bridge not installed, WebView is null."

    goto :goto_0

    :goto_1
    return-void
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/iro/n;

    const-string v1, "Tracker already started"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/iro/n;

    const-string v1, "Tracker already stopped"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->f:Z

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


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method a(Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->b:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/b;->l()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/b;->i()V

    :cond_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    invoke-virtual {p1, p0}, Lcom/moat/analytics/mobile/iro/j;->a(Lcom/moat/analytics/mobile/iro/b;)V

    :cond_1
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/iro/j;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/moat/analytics/mobile/iro/n;->a(Ljava/lang/Exception;)V

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/iro/n;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    invoke-interface {p2, p1}, Lcom/moat/analytics/mobile/iro/TrackerListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x3

    const-string v0, "BaseTracker"

    invoke-static {p2, v0, p0, p1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "[ERROR] "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/iro/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method a(Ljava/util/List;)V
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

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->f()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->f:Z

    if-nez v0, :cond_0

    const-string v0, "Tracker\'s target view is null"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, " and "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/moat/analytics/mobile/iro/n;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/iro/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string v0, "BaseTracker"

    const-string v1, "Attempting to start impression."

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->c()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->d()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/iro/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/iro/j;->b(Lcom/moat/analytics/mobile/iro/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->j:Z

    const-string v0, "BaseTracker"

    const-string v1, "Impression started."

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "BaseTracker"

    const-string v1, "Bridge is null, won\'t start tracking"

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/iro/n;

    const-string v1, "Bridge is null"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->a:Lcom/moat/analytics/mobile/iro/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/iro/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracker initialization failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/b;->a:Lcom/moat/analytics/mobile/iro/n;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/iro/n;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeTargetView(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string v0, "BaseTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changing view to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/p;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method d()V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/b;->j()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/b;->k()V

    return-void
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/iro/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/p;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->h:Lcom/moat/analytics/mobile/iro/z;

    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/b;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/iro/z;->a(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->h:Lcom/moat/analytics/mobile/iro/z;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setListener(Lcom/moat/analytics/mobile/iro/TrackerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    return-void
.end method

.method public startTracking()V
    .locals 4

    :try_start_0
    const-string v0, "BaseTracker"

    const-string v1, "In startTracking method."

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking started on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/iro/TrackerListener;->onTrackingStarted(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTracking succeeded for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseTracker"

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[SUCCESS] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/iro/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startTracking"

    invoke-virtual {p0, v1, v0}, Lcom/moat/analytics/mobile/iro/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
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

    invoke-static {v0, v2, p0, v3}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/iro/b;->k:Z

    iget-object v3, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/moat/analytics/mobile/iro/b;->c:Lcom/moat/analytics/mobile/iro/j;

    invoke-virtual {v3, p0}, Lcom/moat/analytics/mobile/iro/j;->c(Lcom/moat/analytics/mobile/iro/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/moat/analytics/mobile/iro/n;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const-string v2, "BaseTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to stop tracking ad impression was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v2, p0, v3}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v0, "[SUCCESS] "

    goto :goto_2

    :cond_2
    const-string v0, "[ERROR] "

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->a()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/iro/TrackerListener;->onTrackingStopped(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/b;->d:Lcom/moat/analytics/mobile/iro/TrackerListener;

    :cond_4
    return-void
.end method
