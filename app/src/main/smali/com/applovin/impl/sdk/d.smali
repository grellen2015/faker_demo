.class public Lcom/applovin/impl/sdk/d;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/applovin/impl/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/impl/sdk/utils/n;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/applovin/impl/sdk/i;

.field private final d:Lcom/applovin/impl/sdk/d$a;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/d$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d;->d:Lcom/applovin/impl/sdk/d$a;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d;->j()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d;)Lcom/applovin/impl/sdk/d$a;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/d;->d:Lcom/applovin/impl/sdk/d$a;

    return-object p0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->x:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->ad()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->Z()Lcom/applovin/impl/sdk/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/n;->b(Lcom/applovin/impl/sdk/n$a;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->c()V

    iput-wide p1, p0, Lcom/applovin/impl/sdk/d;->e:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    new-instance v2, Lcom/applovin/impl/sdk/d$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/d$1;-><init>(Lcom/applovin/impl/sdk/d;)V

    invoke-static {p1, p2, v1, v2}, Lcom/applovin/impl/sdk/utils/n;->a(JLcom/applovin/impl/sdk/i;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/n;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->x:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->ad()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.application_paused"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->ad()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.application_resumed"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->Z()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/n$a;)V

    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->w:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->Z()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->Y()Lcom/applovin/impl/sdk/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/t;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/n;->b()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()J
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->a()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->d()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d;->j()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->c()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->v:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->v:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->Z()Lcom/applovin/impl/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the full screen ad to be dismissed to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/applovin/impl/sdk/d;->e:J

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->b()J

    move-result-wide v5

    const/4 v1, 0x0

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object v5, Lcom/applovin/impl/sdk/b/b;->u:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v5}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->c()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->c()V

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->d:Lcom/applovin/impl/sdk/d$a;

    invoke-interface {v0}, Lcom/applovin/impl/sdk/d$a;->onAdRefresh()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->w:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->d()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->w:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->Y()Lcom/applovin/impl/sdk/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/t;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->c:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the application to enter foreground to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/utils/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/n;->c()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->f()V

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d;->g()V

    :cond_1
    :goto_0
    return-void
.end method
