.class Lcom/moat/analytics/mobile/iro/g$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/g$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/iro/g$2;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/g$2;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    const-string v0, "GlobalWebView"

    const-string v1, "Video API instance %s detected. Flushing event queue"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    iget-object v5, v5, Lcom/moat/analytics/mobile/iro/g$2;->a:Lcom/moat/analytics/mobile/iro/g;

    iget-object v5, v5, Lcom/moat/analytics/mobile/iro/g;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    iget-object p1, p1, Lcom/moat/analytics/mobile/iro/g$2;->a:Lcom/moat/analytics/mobile/iro/g;

    invoke-static {p1, v2}, Lcom/moat/analytics/mobile/iro/g;->a(Lcom/moat/analytics/mobile/iro/g;Z)Z

    iget-object p1, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    iget-object p1, p1, Lcom/moat/analytics/mobile/iro/g$2;->a:Lcom/moat/analytics/mobile/iro/g;

    iget-object p1, p1, Lcom/moat/analytics/mobile/iro/g;->b:Lcom/moat/analytics/mobile/iro/j;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/iro/j;->a()V

    iget-object p1, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    iget-object p1, p1, Lcom/moat/analytics/mobile/iro/g$2;->a:Lcom/moat/analytics/mobile/iro/g;

    iget-object p1, p1, Lcom/moat/analytics/mobile/iro/g;->b:Lcom/moat/analytics/mobile/iro/j;

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/g$2;->a:Lcom/moat/analytics/mobile/iro/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/moat/analytics/mobile/iro/j;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/n;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    iget-object p1, p1, Lcom/moat/analytics/mobile/iro/g$2;->a:Lcom/moat/analytics/mobile/iro/g;

    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/g;->c(Lcom/moat/analytics/mobile/iro/g;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/g$2$1;->a:Lcom/moat/analytics/mobile/iro/g$2;

    iget-object v0, v0, Lcom/moat/analytics/mobile/iro/g$2;->a:Lcom/moat/analytics/mobile/iro/g;

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/g;->b(Lcom/moat/analytics/mobile/iro/g;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/iro/g$2$1;->a(Ljava/lang/String;)V

    return-void
.end method
