.class Lcom/moat/analytics/mobile/iro/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/iro/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/o;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/iro/WebAdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/iro/x$a<",
        "Lcom/moat/analytics/mobile/iro/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/moat/analytics/mobile/iro/o;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/o;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/o$1;->b:Lcom/moat/analytics/mobile/iro/o;

    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/o$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/iro/a/b/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/iro/a/b/a<",
            "Lcom/moat/analytics/mobile/iro/WebAdTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/o$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to create WebAdTracker for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/p;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[INFO] "

    const-string v3, "Factory"

    const/4 v4, 0x3

    invoke-static {v2, v4, v3, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/iro/aa;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/iro/aa;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/a/b/a;

    move-result-object v0

    return-object v0
.end method
