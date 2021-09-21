.class final Lcom/moat/analytics/mobile/cha/k;
.super Lcom/moat/analytics/mobile/cha/MoatFactory;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/moat/analytics/mobile/cha/MoatFactory;-><init>()V

    .line 1142
    invoke-static {}, Lcom/moat/analytics/mobile/cha/f;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/f;->ˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Failed to initialize MoatFactory"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SDK was not started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "Factory"

    .line 2055
    invoke-static {v2, v3, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "[ERROR] "

    .line 2056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/moat/analytics/mobile/cha/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final createCustomTracker(Lcom/moat/analytics/mobile/cha/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/cha/l<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2138
    :try_start_0
    invoke-interface {p1}, Lcom/moat/analytics/mobile/cha/l;->create()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 76
    invoke-interface {p1}, Lcom/moat/analytics/mobile/cha/l;->createNoOp()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/cha/NativeDisplayTracker;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/cha/NativeDisplayTracker;"
        }
    .end annotation

    .line 2111
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2112
    new-instance p1, Lcom/moat/analytics/mobile/cha/k$1;

    invoke-direct {p1, p0, v0, p2}, Lcom/moat/analytics/mobile/cha/k$1;-><init>(Lcom/moat/analytics/mobile/cha/k;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V

    .line 2122
    const-class p2, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker;

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/cha/p;->ˋ(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/cha/NativeDisplayTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 58
    new-instance p1, Lcom/moat/analytics/mobile/cha/NoOp$c;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/cha/NoOp$c;-><init>()V

    return-object p1
.end method

.method public final createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/cha/NativeVideoTracker;
    .locals 1

    .line 2126
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/cha/k$3;

    invoke-direct {v0, p0, p1}, Lcom/moat/analytics/mobile/cha/k$3;-><init>(Lcom/moat/analytics/mobile/cha/k;Ljava/lang/String;)V

    .line 2134
    const-class p1, Lcom/moat/analytics/mobile/cha/NativeVideoTracker;

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/cha/p;->ˋ(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/cha/NativeVideoTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 67
    new-instance p1, Lcom/moat/analytics/mobile/cha/NoOp$b;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/cha/NoOp$b;-><init>()V

    return-object p1
.end method

.method public final createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/cha/WebAdTracker;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2096
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2097
    new-instance p1, Lcom/moat/analytics/mobile/cha/k$4;

    invoke-direct {p1, p0, v0}, Lcom/moat/analytics/mobile/cha/k$4;-><init>(Lcom/moat/analytics/mobile/cha/k;Ljava/lang/ref/WeakReference;)V

    .line 2107
    const-class v0, Lcom/moat/analytics/mobile/cha/WebAdTracker;

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/cha/p;->ˋ(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/cha/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 49
    new-instance p1, Lcom/moat/analytics/mobile/cha/NoOp$e;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/cha/NoOp$e;-><init>()V

    return-object p1
.end method

.method public final createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/cha/WebAdTracker;
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2081
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2082
    new-instance p1, Lcom/moat/analytics/mobile/cha/k$5;

    invoke-direct {p1, p0, v0}, Lcom/moat/analytics/mobile/cha/k$5;-><init>(Lcom/moat/analytics/mobile/cha/k;Ljava/lang/ref/WeakReference;)V

    .line 2092
    const-class v0, Lcom/moat/analytics/mobile/cha/WebAdTracker;

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/cha/p;->ˋ(Lcom/moat/analytics/mobile/cha/p$c;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/cha/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 40
    new-instance p1, Lcom/moat/analytics/mobile/cha/NoOp$e;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/cha/NoOp$e;-><init>()V

    return-object p1
.end method
