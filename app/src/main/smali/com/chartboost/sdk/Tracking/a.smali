.class public Lcom/chartboost/sdk/Tracking/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Libraries/b;


# static fields
.field private static d:Lcom/chartboost/sdk/Tracking/a;

.field private static final g:Ljava/lang/Long;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/chartboost/sdk/Tracking/a;->f:Z

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chartboost/sdk/Tracking/a;->h:J

    .line 39
    sput-object p0, Lcom/chartboost/sdk/Tracking/a;->d:Lcom/chartboost/sdk/Tracking/a;

    .line 40
    iput-object p1, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 315
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    sget-object v0, Lcom/chartboost/sdk/Tracking/a;->d:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->n:Z

    if-eqz v0, :cond_0

    const-string v2, "session"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 51
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 371
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 14

    move-object v10, p0

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, v10, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    iget-object v0, v10, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    if-eqz v0, :cond_3

    .line 328
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->k:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v10, Lcom/chartboost/sdk/Tracking/a;->f:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 329
    iput-boolean v1, v10, Lcom/chartboost/sdk/Tracking/a;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x0

    .line 332
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 333
    iget-wide v1, v10, Lcom/chartboost/sdk/Tracking/a;->h:J

    const/4 v3, 0x0

    sub-long v1, v12, v1

    sget-object v3, Lcom/chartboost/sdk/Tracking/a;->g:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 334
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->r:Z

    if-eqz v0, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    const-string v2, "exception"

    .line 336
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v4, p2

    .line 335
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 343
    iput-wide v12, v10, Lcom/chartboost/sdk/Tracking/a;->h:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :cond_2
    :goto_1
    :try_start_3
    iput-boolean v11, v10, Lcom/chartboost/sdk/Tracking/a;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 346
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 348
    :goto_2
    :try_start_5
    iput-boolean v11, v10, Lcom/chartboost/sdk/Tracking/a;->f:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 325
    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 10

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->n:Z

    if-eqz v0, :cond_0

    const-string v2, "session"

    const-string v3, "end"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 67
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    const-string v0, "did-become-active"

    .line 75
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "start"

    .line 45
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    const-string v0, "did-become-active"

    .line 46
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .locals 10

    move-object v9, p0

    .line 250
    iget-object v0, v9, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 251
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->p:Z

    if-eqz v0, :cond_0

    const-string v1, "download-asset-success"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x3

    .line 252
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v2, 0x0

    const-string v7, "processingMs"

    .line 259
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v0, v2

    const/4 v2, 0x1

    const-string v7, "getResposeCodeMs"

    .line 260
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v0, v2

    const/4 v2, 0x2

    const-string v7, "readDataMs"

    .line 261
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v0, v2

    .line 258
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 252
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 211
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 212
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v1, :cond_0

    const-string v3, "download-asset-start"

    .line 214
    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/e;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 213
    invoke-virtual/range {v2 .. v10}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 10

    move-object v9, p0

    .line 229
    iget-object v0, v9, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 230
    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->p:Z

    if-eqz v0, :cond_0

    const-string v1, "download-asset-failure"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x3

    .line 231
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v2, 0x0

    const-string v3, "processingMs"

    .line 238
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "getResponseCodeMs"

    .line 239
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "readDataMs"

    .line 240
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    .line 237
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 231
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "load"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 112
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "webview-track"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 81
    invoke-virtual/range {v1 .. v9}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v9, p0

    .line 183
    iget-object v0, v9, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->l:Z

    if-eqz v0, :cond_0

    const-string v1, "ad-unit-error"

    const/4 v6, 0x0

    const/4 v0, 0x3

    .line 184
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v2, 0x0

    const-string v3, "adId"

    move-object v4, p5

    .line 191
    invoke-static {v3, p5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "location"

    move-object/from16 v4, p6

    .line 192
    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "state"

    move-object/from16 v4, p7

    .line 193
    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v0, v2

    .line 190
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 184
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10

    move-object v9, p0

    .line 360
    iget-object v0, v9, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 361
    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 385
    iget-object p2, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chartboost/sdk/Model/e;

    iget-boolean p2, p2, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz p2, :cond_1

    const-string p2, "CBTrack"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unknown event"

    .line 386
    :goto_0
    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 166
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_1

    const-string v2, "ad-error"

    .line 170
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "empty-adid"

    :cond_0
    move-object v5, p3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move v7, p5

    .line 167
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 11

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 94
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v1, :cond_0

    const-string v3, "folder"

    .line 96
    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Model/e;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v9, p1

    .line 95
    invoke-virtual/range {v2 .. v10}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "playback-complete"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 269
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "ad-show"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 123
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_1

    const-string v2, "ad-warning"

    .line 204
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "empty-adid"

    :cond_0
    move-object v5, p3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 201
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "replay"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 280
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "ad-click"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 134
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "playback-start"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 291
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "ad-close"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 145
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 300
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "playback-stop"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 301
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/Tracking/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->o:Z

    if-eqz v0, :cond_0

    const-string v2, "ad-dismiss"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 156
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
