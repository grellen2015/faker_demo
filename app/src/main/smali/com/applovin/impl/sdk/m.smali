.class public Lcom/applovin/impl/sdk/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/i;

.field private final c:Lcom/applovin/impl/sdk/o;

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FileManager"

    iput-object v0, p0, Lcom/applovin/impl/sdk/m;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    return-void
.end method

.method private a()J
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->bD:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private a(J)J
    .locals 2

    const-wide/32 v0, 0x100000

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private a(JLandroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/applovin/impl/sdk/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->bE:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "FileManager"

    const-string p3, "Cache has no maximum size set; skipping drop..."

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->a(J)J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "FileManager"

    const-string v0, "Cache has exceeded maximum size; dropping..."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/m;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/m;->b(Ljava/io/File;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->L()Lcom/applovin/impl/sdk/c/h;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/sdk/c/g;->f:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "FileManager"

    const-string p3, "Cache is present but under size limit; not dropping..."

    goto :goto_0

    :goto_2
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/applovin/impl/sdk/c/e;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p3, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p4, "FileManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File exists for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/applovin/impl/sdk/c/e;->b(J)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    if-eqz p5, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p5, p3, p4}, Lcom/applovin/impl/sdk/c/e;->a(J)V

    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->bC:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing resource to filesystem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, p2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "FileManager"

    const-string v3, "Unknown failure to write file."

    invoke-virtual {p2, v2, v3, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    :goto_1
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_2
    :try_start_5
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "FileManager"

    const-string v3, "Unable to write data to file."

    invoke-virtual {p2, v2, v3, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    goto :goto_1

    :goto_3
    const/4 p1, 0x0

    :goto_4
    monitor-exit v0

    return p1

    :goto_5
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method private b(Ljava/io/File;)Z
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from filesystem..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from filesystem!"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c(Landroid/content/Context;)J
    .locals 13

    invoke-direct {p0}, Lcom/applovin/impl/sdk/m;->a()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v11

    const/4 v8, 0x0

    sub-long v11, v2, v11

    cmp-long v8, v11, v0

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v10, "FileManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has expired, removing..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/applovin/impl/sdk/m;->b(Ljava/io/File;)Z

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_2

    iget-object v7, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/i;->L()Lcom/applovin/impl/sdk/c/h;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/sdk/c/g;->e:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    add-long/2addr v5, v7

    goto :goto_0

    :cond_3
    monitor-exit v4

    return-wide v5

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const-string p1, "FileManager"

    const-string v0, "Application lacks required WRITE_EXTERNAL_STORAGE manifest permission."

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private e(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private f(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->bB:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "external"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "al"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "al"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "al"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "al"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading resource from filesystem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ltz v5, :cond_1

    :try_start_2
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_3
    iget-object v4, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    monitor-exit v1

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v3

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v2, v0

    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v4, "FileManager"

    const-string v5, "Unknown failure to read file."

    invoke-virtual {v3, v4, v5, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v0

    :catch_5
    move-exception v3

    move-object v2, v0

    :goto_2
    :try_start_7
    iget-object v4, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v5, "FileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-object v0

    :catch_6
    move-exception p1

    move-object v2, v0

    :goto_3
    :try_start_9
    iget-object v3, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v4, "FileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception p1

    :goto_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p3, "FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain is not whitelisted, skipping precache for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    sget-object p3, Lcom/applovin/impl/sdk/b/c;->dw:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p3, "FileManager"

    const-string v1, "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting..."

    invoke-virtual {p2, p3, v1}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "http://"

    const-string p3, "https://"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p3, "FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->du:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dv:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_4

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0x400

    :try_start_3
    new-array v3, v3, [B

    :goto_0
    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ltz v4, :cond_3

    :try_start_4
    invoke-virtual {p2, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_0
    :try_start_5
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p2, v2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/i;)V

    return-object v0

    :cond_3
    :try_start_6
    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded resource at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/i;)V

    return-object p2

    :catch_1
    move-exception v2

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/i;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p3, v0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object p3, v0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object p3, p2

    goto :goto_4

    :catch_4
    move-exception v2

    move-object p2, v0

    move-object p3, p2

    :goto_2
    move-object v1, p3

    :goto_3
    :try_start_7
    iget-object v3, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v4, "FileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/i;)V

    return-object v0

    :catchall_3
    move-exception p1

    move-object v0, v1

    :goto_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/io/Closeable;Lcom/applovin/impl/sdk/i;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p3, p2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/net/HttpURLConnection;Lcom/applovin/impl/sdk/i;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 6

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "FileManager"

    const-string v0, "Nothing to look up, skipping..."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking up cached resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    const-string v2, "_"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    const-string v2, "_"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/m;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to make cache directory at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/applovin/impl/sdk/c/e;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/impl/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/applovin/impl/sdk/c/e;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p2, "FileManager"

    const-string p3, "Nothing to cache, skipping..."

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string p3, "FileManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Caching succeeded for file "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    return-object v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    const-string v2, "Compacting cache..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->c(Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lcom/applovin/impl/sdk/m;->a(JLandroid/content/Context;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/m;->b(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v0, "FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching completed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/c/e;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/sdk/c/e;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, ".nomedia"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/m;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating .nomedia file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v0, "FileManager"

    const-string v1, "Failed to create .nomedia file"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/m;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "FileManager"

    const-string v2, "Failed to create .nomedia file"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
