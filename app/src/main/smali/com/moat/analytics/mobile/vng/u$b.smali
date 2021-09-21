.class public Lcom/moat/analytics/mobile/vng/u$b;
.super Lcom/moat/analytics/mobile/vng/MoatFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/MoatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/vng/MoatPlugin<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/moat/analytics/mobile/vng/MoatPlugin;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;
    .locals 0
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
            "Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;"
        }
    .end annotation

    new-instance p1, Lcom/moat/analytics/mobile/vng/u$c;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/vng/u$c;-><init>()V

    return-object p1
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/NativeVideoTracker;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Lcom/moat/analytics/mobile/vng/u$d;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/vng/u$d;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Lcom/moat/analytics/mobile/vng/u$e;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/vng/u$e;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Lcom/moat/analytics/mobile/vng/u$e;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/vng/u$e;-><init>()V

    return-object p1
.end method
