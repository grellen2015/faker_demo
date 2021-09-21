.class Lcom/moat/analytics/mobile/vng/z;
.super Lcom/moat/analytics/mobile/vng/b;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/WebAdTracker;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/vng/aa;->a(Landroid/view/ViewGroup;Z)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/a/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/z;-><init>(Landroid/webkit/WebView;)V

    const/4 v0, 0x3

    if-nez p1, :cond_0

    const-string p1, "Target ViewGroup is null"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebAdTracker initialization not successful, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ERROR] "

    const-string v3, "WebAdTracker"

    invoke-static {v2, v0, v3, p0, v1}, Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/m;

    invoke-direct {v1, p1}, Lcom/moat/analytics/mobile/vng/m;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/z;->a:Lcom/moat/analytics/mobile/vng/m;

    :cond_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->b:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    const-string p1, "No WebView to track inside of ad container"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebAdTracker initialization not successful, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ERROR] "

    const-string v3, "WebAdTracker"

    invoke-static {v2, v0, v3, p0, v1}, Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/m;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/vng/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->a:Lcom/moat/analytics/mobile/vng/m;

    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 4
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/moat/analytics/mobile/vng/b;-><init>(Landroid/view/View;ZZ)V

    const-string v0, "WebAdTracker"

    const-string v1, "Initializing."

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/o;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "WebView is null"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebAdTracker initialization not successful, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ERROR] "

    const-string v3, "WebAdTracker"

    invoke-static {v1, v2, v3, p0, v0}, Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/m;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/vng/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->a:Lcom/moat/analytics/mobile/vng/m;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/vng/b;->a(Landroid/webkit/WebView;)V

    const-string p1, "[SUCCESS] "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " created for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/z;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/vng/o;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/moat/analytics/mobile/vng/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->a:Lcom/moat/analytics/mobile/vng/m;

    :goto_0
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "WebAdTracker"

    return-object v0
.end method
