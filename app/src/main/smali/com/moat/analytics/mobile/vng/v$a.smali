.class Lcom/moat/analytics/mobile/vng/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/v;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/vng/v$e;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/vng/v;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/vng/v$e;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/moat/analytics/mobile/vng/v$a;->d:Lcom/moat/analytics/mobile/vng/v$e;

    iput-object p3, p0, Lcom/moat/analytics/mobile/vng/v$a;->b:Landroid/os/Handler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://z.moatads.com/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/android/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "fd28fb8353d87dc1a1db3246752e21ccc3328cbf"

    const/4 p3, 0x0

    const/4 p4, 0x7

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/status.json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/v$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/vng/v;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/vng/v$e;Lcom/moat/analytics/mobile/vng/v$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moat/analytics/mobile/vng/v$a;-><init>(Lcom/moat/analytics/mobile/vng/v;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/vng/v$e;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/v$a;)Lcom/moat/analytics/mobile/vng/v$e;
    .locals 0

    iget-object p0, p0, Lcom/moat/analytics/mobile/vng/v$a;->d:Lcom/moat/analytics/mobile/vng/v$e;

    return-object p0
.end method

.method private a()V
    .locals 4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/v$a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/vng/l;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/vng/l;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/l;->a()Z

    move-result v3

    iput-boolean v3, v2, Lcom/moat/analytics/mobile/vng/v;->b:Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/l;->b()Z

    move-result v3

    iput-boolean v3, v2, Lcom/moat/analytics/mobile/vng/v;->c:Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/l;->c()I

    move-result v3

    iput v3, v2, Lcom/moat/analytics/mobile/vng/v;->d:I

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/l;->d()I

    move-result v3

    iput v3, v2, Lcom/moat/analytics/mobile/vng/v;->e:I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/moat/analytics/mobile/vng/v$a$1;

    invoke-direct {v2, p0, v1}, Lcom/moat/analytics/mobile/vng/v$a$1;-><init>(Lcom/moat/analytics/mobile/vng/v$a;Lcom/moat/analytics/mobile/vng/l;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/moat/analytics/mobile/vng/v;->a(Lcom/moat/analytics/mobile/vng/v;J)J

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/v;->d(Lcom/moat/analytics/mobile/vng/v;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/v;->e(Lcom/moat/analytics/mobile/vng/v;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/v;->f(Lcom/moat/analytics/mobile/vng/v;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/v;->b(Lcom/moat/analytics/mobile/vng/v;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/v$a;->a:Lcom/moat/analytics/mobile/vng/v;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/v;->e(Lcom/moat/analytics/mobile/vng/v;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/v$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.5.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/v$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/v$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
