.class public Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;,
        Lcom/chartboost/sdk/Chartboost$CBMediation;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Chartboost.cacheInterstitial"

    .line 385
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 387
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 389
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 392
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Chartboost"

    const-string v3, "cacheInterstitial location cannot be empty"

    .line 393
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 402
    :cond_2
    iget-object v1, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/e;

    .line 404
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v3, :cond_5

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v1, :cond_5

    .line 406
    :cond_4
    new-instance v1, Lcom/chartboost/sdk/impl/e$a;

    iget-object v4, v0, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 407
    iget-object p0, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 409
    :cond_5
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .locals 4

    .line 481
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 482
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 487
    :cond_1
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    .line 488
    iput-object p0, v1, Lcom/chartboost/sdk/h$a;->b:Ljava/lang/String;

    .line 489
    iget-object p0, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    sget-wide v2, Lcom/chartboost/sdk/Libraries/b;->c:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Chartboost.cacheRewardedVideo"

    .line 301
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 303
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Chartboost"

    const-string v3, "cacheRewardedVideo location cannot be empty"

    .line 308
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 317
    :cond_2
    iget-object v1, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/e;

    .line 318
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v3, :cond_5

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v1, :cond_5

    .line 320
    :cond_4
    new-instance v1, Lcom/chartboost/sdk/impl/e$a;

    iget-object v4, v0, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 321
    iget-object p0, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 323
    :cond_5
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public static closeImpression()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static forwardTouchEventsAIR(Z)V
    .locals 3

    .line 794
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 798
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/c$c;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 799
    iput-boolean p0, v1, Lcom/chartboost/sdk/c$c;->c:Z

    .line 800
    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAutoCacheAds()Z
    .locals 1

    .line 644
    sget-boolean v0, Lcom/chartboost/sdk/i;->t:Z

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .locals 1

    .line 586
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 588
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .locals 1

    .line 624
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    return-object v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .line 618
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    .line 619
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static getPIDataUseConsent()Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .locals 1

    .line 172
    sget-object v0, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "7.3.0"

    return-object v0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Chartboost.hasInterstitial"

    .line 372
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 374
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, v0, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/e;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Chartboost.hasRewardedVideo"

    .line 289
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 291
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, v0, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/e;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isAnyViewVisible()Z
    .locals 1

    const-string v0, "Chartboost.isAnyViewVisible"

    .line 509
    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWebViewEnabled()Z
    .locals 1

    .line 725
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->y:Z

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

.method public static onBackPressed()Z
    .locals 1

    const-string v0, "Chartboost.onBackPressed"

    .line 262
    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 267
    :cond_0
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->j()Z

    move-result v0

    return v0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Chartboost.onCreate"

    .line 193
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_1

    .line 199
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Chartboost.onDestroy"

    .line 274
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_1

    .line 280
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->j(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Chartboost.onPause"

    .line 235
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_1

    .line 241
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->g(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Chartboost.onResume"

    .line 221
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_1

    .line 227
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->f(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Chartboost.onStart"

    .line 207
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_1

    .line 213
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->d(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "Chartboost.onStop"

    .line 249
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    sget-boolean v1, Lcom/chartboost/sdk/i;->s:Z

    if-nez v1, :cond_1

    .line 255
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->h(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static restrictDataCollection(Landroid/content/Context;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 182
    sget-object p1, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    :goto_0
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->setPIDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)V

    return-void
.end method

.method public static setActivityAttrs(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    if-eqz p0, :cond_3

    .line 805
    sget-boolean v0, Lcom/chartboost/sdk/i;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x706

    .line 817
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/16 v0, 0x1706

    .line 818
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 819
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 820
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 821
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 823
    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 806
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_4

    const-string p0, "Chartboost"

    const-string v0, "Attempting to show Status and Navigation bars on a fullscreen activity. Please change your Chartboost activity theme to: \"@android:style/Theme.Translucent\"` in your Manifest file"

    .line 807
    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static setActivityCallbacks(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const-string v0, "Chartboost.setActivityCallbacks"

    .line 731
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 732
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v1, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 738
    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_2

    .line 741
    sget-boolean v2, Lcom/chartboost/sdk/i;->s:Z

    if-nez v2, :cond_1

    if-eqz p0, :cond_1

    .line 742
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p0, 0x1

    .line 743
    sput-boolean p0, Lcom/chartboost/sdk/i;->s:Z

    goto :goto_0

    .line 744
    :cond_1
    sget-boolean v2, Lcom/chartboost/sdk/i;->s:Z

    if-eqz v2, :cond_2

    if-nez p0, :cond_2

    .line 745
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p0, 0x0

    .line 746
    sput-boolean p0, Lcom/chartboost/sdk/i;->s:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static setAutoCacheAds(Z)V
    .locals 3

    const-string v0, "Chartboost.setAutoCacheAds"

    .line 654
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 655
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    .line 658
    iput-boolean p0, v1, Lcom/chartboost/sdk/h$a;->c:Z

    .line 659
    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static setChartboostWrapperVersion(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Chartboost.setChartboostWrapperVersion"

    .line 572
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 574
    iput-object p0, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 575
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Chartboost.setCustomId"

    .line 597
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 599
    iput-object p0, v0, Lcom/chartboost/sdk/f;->e:Ljava/lang/String;

    .line 600
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 2

    const-string v0, "Chartboost.setDelegate"

    .line 632
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    new-instance v0, Lcom/chartboost/sdk/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 634
    iput-object p0, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 635
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Chartboost.setFramework"

    .line 541
    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 542
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 543
    iput-object p0, v0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 544
    iput-object p1, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 545
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setFrameworkVersion(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Chartboost.setFrameworkVersion"

    .line 558
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 560
    iput-object p0, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 561
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 2

    const-string v0, "Chartboost.setLoggingLevel"

    .line 608
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 610
    iput-object p0, v0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 611
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Chartboost.setMediation"

    .line 524
    invoke-static {v0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;)V

    .line 525
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 526
    iput-object p0, v0, Lcom/chartboost/sdk/f;->c:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 527
    iput-object p1, v0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 529
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setPIDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)V
    .locals 0

    .line 165
    invoke-static {p0, p1}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)V

    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .locals 0

    return-void
.end method

.method public static setShouldHideSystemUI(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "Chartboost.setHideSystemUI"

    .line 720
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/chartboost/sdk/i;->g:Z

    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .locals 3

    const-string v0, "Chartboost.setShouldPrefetchVideoContent"

    .line 696
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 697
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 698
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    .line 702
    iput-boolean p0, v1, Lcom/chartboost/sdk/h$a;->d:Z

    .line 703
    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .locals 2

    const-string v0, "Chartboost.setShouldRequestInterstitialsInFirstSession"

    .line 671
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Z)V

    .line 672
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 674
    iput-boolean p0, v0, Lcom/chartboost/sdk/f;->a:Z

    .line 675
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Chartboost.showInterstitial"

    .line 424
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 426
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 428
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 431
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Chartboost"

    const-string v3, "showInterstitial location cannot be empty"

    .line 432
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 441
    :cond_2
    iget-object v1, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/e;

    .line 442
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v3, :cond_5

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v1, :cond_5

    .line 444
    :cond_4
    new-instance v1, Lcom/chartboost/sdk/impl/e$a;

    iget-object v4, v0, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 445
    iget-object p0, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 447
    :cond_5
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private static showInterstitialAIR(Ljava/lang/String;Z)V
    .locals 4

    .line 756
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 757
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 759
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 762
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 763
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->A:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->g:Z

    if-eqz v0, :cond_4

    .line 765
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object p1, p1, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 767
    :cond_4
    sget-object p1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {p1, p0, v0}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .locals 0

    .line 499
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->cacheMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method private static showMoreAppsAIR(Ljava/lang/String;Z)V
    .locals 0

    .line 773
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->cacheMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Chartboost.showRewardedVideo"

    .line 337
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 339
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 343
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Chartboost"

    const-string v3, "showRewardedVideo location cannot be empty"

    .line 344
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 352
    :cond_2
    iget-object v1, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/e;

    .line 353
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, v1, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v3, :cond_5

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v1, :cond_5

    .line 355
    :cond_4
    new-instance v1, Lcom/chartboost/sdk/impl/e$a;

    iget-object v4, v0, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/e$a;-><init>(Lcom/chartboost/sdk/impl/e;ILjava/lang/String;Lcom/chartboost/sdk/impl/f;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 356
    iget-object p0, v0, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 358
    :cond_5
    iget-object v1, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v3, Lcom/chartboost/sdk/impl/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private static showRewardedVideoAIR(Ljava/lang/String;Z)V
    .locals 4

    .line 778
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 779
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 781
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/h;->f()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 783
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 784
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->E:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->j:Z

    if-eqz v0, :cond_4

    .line 786
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/c$a;

    iget-object p1, p1, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 788
    :cond_4
    sget-object p1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {p1, p0, v0}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Chartboost.startWithAppId"

    .line 151
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/aq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    new-instance v0, Lcom/chartboost/sdk/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/f;-><init>(I)V

    .line 153
    iput-object p0, v0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    .line 154
    iput-object p1, v0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    .line 155
    iput-object p2, v0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method
