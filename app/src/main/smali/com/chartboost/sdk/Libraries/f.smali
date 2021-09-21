.class public Lcom/chartboost/sdk/Libraries/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/chartboost/sdk/Libraries/g;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Libraries/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/chartboost/sdk/impl/s;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/s;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/s;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    .line 73
    iput-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/impl/s;

    .line 75
    new-instance v2, Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/Libraries/g;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    .line 76
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v1, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v2, p3

    .line 78
    iput-object v2, v1, Lcom/chartboost/sdk/Libraries/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/s;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v3, v1, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {v4, v0}, Lcom/chartboost/sdk/Libraries/g;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v4, "track"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->b:Ljava/io/File;

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v4, "session"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->a:Ljava/io/File;

    const/4 v0, 0x2

    .line 101
    new-array v3, v0, [Lcom/chartboost/sdk/Libraries/g;

    iget-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/g;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 102
    array-length v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_c

    aget-object v8, v3, v7

    .line 104
    :try_start_1
    iget-object v0, v1, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    if-ne v8, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v8, :cond_a

    if-nez v0, :cond_2

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/Libraries/f;->a()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 106
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chartboost/sdk/Model/e;

    iget v12, v12, Lcom/chartboost/sdk/Model/e;->w:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    const/4 v13, 0x0

    sub-long/2addr v9, v11

    .line 107
    new-instance v11, Ljava/io/File;

    iget-object v12, v8, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v13, "templates"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 109
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 111
    array-length v12, v11

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_8

    aget-object v14, v11, v13

    .line 112
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 113
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 115
    array-length v4, v15

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_5

    aget-object v16, v15, v5

    if-nez v0, :cond_4

    .line 116
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    cmp-long v17, v17, v9

    if-gez v17, :cond_3

    goto :goto_5

    :cond_3
    move-object/from16 v19, v3

    goto :goto_6

    .line 117
    :cond_4
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v17

    if-nez v17, :cond_3

    const-string v1, "FileCache"

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v3

    :try_start_2
    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    goto :goto_4

    :cond_5
    move-object/from16 v19, v3

    .line 122
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 123
    array-length v1, v1

    if-nez v1, :cond_7

    .line 125
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "FileCache"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    move-object/from16 v19, v3

    :cond_7
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v19, v3

    .line 133
    new-instance v1, Ljava/io/File;

    iget-object v2, v8, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v3, ".adId"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v0, :cond_9

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-gez v0, :cond_b

    .line 136
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "FileCache"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_a
    move-object/from16 v19, v3

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v19, v3

    :goto_8
    const-string v1, "FileCache"

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while cleaning up templates directory at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/chartboost/sdk/Libraries/g;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Z
    .locals 3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mounted"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isExternalStorageAvailable"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const-string v0, "FileCache"

    const-string v1, "External Storage unavailable"

    .line 220
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized a(Ljava/io/File;)[B
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 184
    monitor-exit p0

    return-object v0

    .line 188
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/chartboost/sdk/impl/bh;->b(Ljava/io/File;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "FileCache"

    const-string v2, "Error loading cache from disk"

    .line 190
    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "readByteArrayFromDisk"

    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    .line 193
    :goto_0
    monitor-exit p0

    return-object p1

    .line 182
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/io/File;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 302
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/io/File;)J

    move-result-wide v4

    const/4 v6, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_2

    .line 309
    :goto_1
    const-class v2, Lcom/chartboost/sdk/Libraries/f;

    const-string v3, "getFolderSize"

    invoke-static {v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    return-wide v0
.end method

.method public b()Lorg/json/JSONArray;
    .locals 6

    .line 233
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, ".nomedia"

    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lorg/json/JSONObject;
    .locals 10

    .line 245
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 249
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/e;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "templates"

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 253
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 254
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 256
    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    const-string v9, ".nomedia"

    .line 257
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 258
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 262
    :cond_2
    invoke-static {v0, v3, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWebViewCacheAssets"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-object v0
.end method

.method public c(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    .line 343
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x0

    .line 344
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 345
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result p1

    .line 346
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 347
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    const-string v1, "FileCache"

    const-string v2, "IOException when attempting to touch file"

    .line 351
    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 355
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_2
    :try_start_5
    const-string v1, "FileCache"

    const-string v2, "File not found when attempting to touch"

    .line 349
    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_1

    :catch_4
    :cond_0
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_1

    .line 355
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 357
    :catch_5
    :cond_1
    throw p1
.end method

.method public d()Lcom/chartboost/sdk/Libraries/g;
    .locals 5

    .line 273
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/g;

    if-nez v0, :cond_0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/s;->b()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    new-instance v4, Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {v4, v1}, Lcom/chartboost/sdk/Libraries/g;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Libraries/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentLocations"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 10

    .line 315
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Libraries/g;

    if-eqz v1, :cond_0

    const-string v2, ".chartboost-external-folder-size"

    .line 318
    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/io/File;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v1, ".chartboost-internal-folder-size"

    .line 320
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/g;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 324
    array-length v3, v2

    if-lez v3, :cond_2

    .line 325
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 326
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/chartboost/sdk/Libraries/f;->b(Ljava/io/File;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "count"

    .line 331
    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v8, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
