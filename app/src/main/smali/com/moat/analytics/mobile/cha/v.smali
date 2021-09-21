.class final Lcom/moat/analytics/mobile/cha/v;
.super Lcom/moat/analytics/mobile/cha/d;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/WebAdTracker;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/cha/x;->ˊ(Landroid/view/ViewGroup;Z)Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/cha/v;-><init>(Landroid/webkit/WebView;)V

    const/4 v0, 0x3

    if-nez p1, :cond_0

    const-string p1, "Target ViewGroup is null"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebAdTracker initialization not successful, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ERROR] "

    const-string v3, "WebAdTracker"

    .line 1055
    invoke-static {v0, v3, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v1, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/v;->ˏ:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    const-string p1, "No WebView to track inside of ad container"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebAdTracker initialization not successful, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ERROR] "

    const-string v3, "WebAdTracker"

    .line 2055
    invoke-static {v0, v3, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

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

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lcom/moat/analytics/mobile/cha/d;-><init>(Landroid/view/View;ZZ)V

    const-string v0, "WebAdTracker"

    const-string v1, "Initializing."

    const/4 v2, 0x3

    .line 37
    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "WebView is null"

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebAdTracker initialization not successful, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ERROR] "

    const-string v3, "WebAdTracker"

    .line 3055
    invoke-static {v2, v3, p0, v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3056
    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/d;->ॱ(Landroid/webkit/WebView;)V

    const-string p1, "[SUCCESS] "

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebAdTracker created for "

    .line 4056
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/v;->ʻ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/moat/analytics/mobile/cha/o; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/v;->ॱ:Lcom/moat/analytics/mobile/cha/o;

    return-void
.end method


# virtual methods
.method final ˋ()Ljava/lang/String;
    .locals 1

    const-string v0, "WebAdTracker"

    return-object v0
.end method
