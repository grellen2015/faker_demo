.class public Lcom/chartboost/sdk/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/chartboost/sdk/impl/ah;

.field private final d:Lcom/chartboost/sdk/impl/ai;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/chartboost/sdk/Libraries/i;

.field private final g:Lcom/chartboost/sdk/Tracking/a;

.field private final h:Lcom/chartboost/sdk/Libraries/f;

.field private i:Lcom/chartboost/sdk/impl/k;

.field private final j:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/chartboost/sdk/impl/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/impl/ah;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/Tracking/a;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 115
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    .line 116
    iput-object p2, p0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    .line 117
    iput-object p3, p0, Lcom/chartboost/sdk/impl/l;->c:Lcom/chartboost/sdk/impl/ah;

    .line 118
    iput-object p4, p0, Lcom/chartboost/sdk/impl/l;->d:Lcom/chartboost/sdk/impl/ai;

    .line 119
    iput-object p5, p0, Lcom/chartboost/sdk/impl/l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 120
    iput-object p6, p0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    .line 121
    iput-object p7, p0, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    .line 123
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    return-void
.end method

.method private d()V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    iget v1, v1, Lcom/chartboost/sdk/impl/j;->a:I

    iget v0, v0, Lcom/chartboost/sdk/impl/j;->a:I

    if-le v1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 371
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_4

    .line 373
    iget-object v2, v0, Lcom/chartboost/sdk/impl/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v3

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    iget-object v4, v0, Lcom/chartboost/sdk/impl/j;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "Downloader"

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/Executor;Z)V

    goto :goto_0

    .line 386
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/f;->c(Ljava/io/File;)V

    .line 389
    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/Executor;Z)V

    goto :goto_0

    .line 393
    :cond_3
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->d:Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/chartboost/sdk/impl/k;-><init>(Lcom/chartboost/sdk/impl/l;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/j;Ljava/io/File;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 394
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->c:Lcom/chartboost/sdk/impl/ah;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 395
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v2, v0, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    if-eqz v0, :cond_5

    .line 399
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const-string v0, "Downloader"

    const-string v2, "Change state to DOWNLOADING"

    .line 400
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->a:I

    goto :goto_1

    .line 403
    :cond_5
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    if-eq v0, v1, :cond_6

    const-string v0, "Downloader"

    const-string v2, "Change state to IDLE"

    .line 404
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->a:I

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 212
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    const-string v0, "Downloader"

    const-string v2, "Change state to PAUSED"

    .line 222
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->a:I

    goto :goto_0

    :cond_0
    const-string v0, "Downloader"

    const-string v1, "Change state to PAUSING"

    .line 225
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 226
    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    goto :goto_0

    :pswitch_1
    const-string v0, "Downloader"

    const-string v2, "Change state to PAUSED"

    .line 214
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput v1, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_0
    :pswitch_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 211
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/h;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/b;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lcom/chartboost/sdk/impl/h;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, v1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v13

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 142
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v2, p4

    invoke-direct {v15, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 143
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/b;

    .line 144
    new-instance v12, Lcom/chartboost/sdk/impl/j;

    iget-object v3, v1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    iget-object v5, v2, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/chartboost/sdk/Model/b;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/chartboost/sdk/Model/b;->a:Ljava/lang/String;

    move-object v2, v12

    move/from16 v4, p1

    move-object/from16 v8, p3

    move-object v9, v15

    move-wide v10, v13

    move-wide/from16 v17, v13

    move-object v13, v12

    move-object v12, v0

    invoke-direct/range {v2 .. v12}, Lcom/chartboost/sdk/impl/j;-><init>(Lcom/chartboost/sdk/Libraries/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;JLjava/util/concurrent/atomic/AtomicInteger;)V

    .line 152
    iget-object v2, v1, Lcom/chartboost/sdk/impl/l;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v13}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-wide/from16 v13, v17

    goto :goto_0

    .line 154
    :cond_0
    iget v0, v1, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, v1, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 155
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/chartboost/sdk/impl/l;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 139
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/ag;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p3

    monitor-enter p0

    .line 280
    :try_start_0
    iget v4, v1, Lcom/chartboost/sdk/impl/l;->a:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    .line 286
    :pswitch_0
    iget-object v4, v1, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v4, :cond_0

    .line 287
    monitor-exit p0

    return-void

    .line 289
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    const/4 v5, 0x0

    .line 291
    iput-object v5, v1, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 293
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/chartboost/sdk/impl/k;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 295
    iget-object v5, v4, Lcom/chartboost/sdk/impl/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    long-to-int v6, v11

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 297
    iget-object v5, v1, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/Executor;

    if-nez p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/Executor;Z)V

    .line 299
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/chartboost/sdk/impl/k;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 300
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/chartboost/sdk/impl/k;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    if-nez p2, :cond_2

    .line 303
    iget-object v8, v1, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v9, v4, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    move-wide v10, v11

    move-wide v12, v13

    move-wide v14, v15

    invoke-virtual/range {v8 .. v15}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;JJJ)V

    const-string v0, "Downloader"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 311
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v8, v1, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    iget-object v9, v4, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual/range {v8 .. v16}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V

    const-string v2, "Downloader"

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Status code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/chartboost/sdk/impl/ag;->a:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_3
    iget v0, v1, Lcom/chartboost/sdk/impl/l;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string v0, "Downloader"

    const-string v2, "Change state to PAUSED"

    .line 325
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 326
    iput v0, v1, Lcom/chartboost/sdk/impl/l;->a:I

    goto :goto_4

    .line 328
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/chartboost/sdk/impl/l;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :goto_4
    :pswitch_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 279
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    monitor-enter p0

    const/16 v0, -0x2710

    .line 167
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 169
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/k;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l;->i:Lcom/chartboost/sdk/impl/k;

    .line 182
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/l;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    :goto_1
    :pswitch_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 166
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 247
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Downloader"

    const-string v1, "Change state to IDLE"

    .line 260
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 261
    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I

    .line 262
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/l;->d()V

    goto :goto_0

    :pswitch_1
    const-string v0, "Downloader"

    const-string v1, "Change state to DOWNLOADING"

    .line 255
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 256
    iput v0, p0, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    :pswitch_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 246
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 414
    :try_start_0
    iget v0, v1, Lcom/chartboost/sdk/impl/l;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 415
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Downloader"

    const-string v3, "########### Trimming the disk cache"

    .line 419
    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, v1, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 425
    array-length v6, v4

    if-lez v6, :cond_3

    .line 426
    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    const-string v9, "requests"

    .line 427
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "track"

    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "session"

    .line 429
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "videoCompletionEvents"

    .line 430
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "."

    .line 431
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 439
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    .line 440
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 443
    array-length v3, v0

    if-le v3, v2, :cond_4

    .line 444
    new-instance v3, Lcom/chartboost/sdk/impl/l$1;

    invoke-direct {v3, v1}, Lcom/chartboost/sdk/impl/l$1;-><init>(Lcom/chartboost/sdk/impl/l;)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 450
    :cond_4
    array-length v3, v0

    if-lez v3, :cond_b

    .line 452
    iget-object v3, v1, Lcom/chartboost/sdk/impl/l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/Model/e;

    .line 453
    iget v4, v3, Lcom/chartboost/sdk/Model/e;->u:I

    int-to-long v6, v4

    .line 454
    iget-object v4, v1, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    iget-object v8, v1, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v8}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v8

    iget-object v8, v8, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-virtual {v4, v8}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/io/File;)J

    move-result-wide v8

    .line 455
    iget-object v4, v1, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v10

    .line 456
    iget-object v4, v3, Lcom/chartboost/sdk/Model/e;->d:Ljava/util/List;

    const-string v12, "Downloader"

    .line 457
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Total local file count:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Downloader"

    .line 458
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Video Folder Size in bytes :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Downloader"

    .line 459
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Max Bytes allowed:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    array-length v12, v0

    move-wide v13, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_b

    aget-object v9, v0, v8

    .line 461
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    const/16 v18, 0x0

    move-wide/from16 v19, v6

    sub-long v5, v10, v16

    invoke-virtual {v15, v5, v6}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v5

    .line 462
    iget v7, v3, Lcom/chartboost/sdk/Model/e;->w:I

    move-object/from16 v21, v3

    int-to-long v2, v7

    cmp-long v2, v5, v2

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 463
    :goto_3
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".tmp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 464
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 465
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/videos"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    cmp-long v7, v13, v19

    if-lez v7, :cond_6

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    .line 468
    :goto_4
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_8

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    .line 471
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_a

    if-eqz v6, :cond_9

    .line 475
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v5, 0x0

    sub-long/2addr v13, v2

    :cond_9
    const-string v2, "Downloader"

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting file at path:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "Downloader"

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v6, v19

    move-object/from16 v3, v21

    const/4 v2, 0x1

    goto/16 :goto_2

    .line 484
    :cond_b
    iget-object v0, v1, Lcom/chartboost/sdk/impl/l;->h:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 485
    iget-object v2, v1, Lcom/chartboost/sdk/impl/l;->g:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 487
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "reduceCacheSize"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    :goto_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 413
    monitor-exit p0

    throw v0
.end method
