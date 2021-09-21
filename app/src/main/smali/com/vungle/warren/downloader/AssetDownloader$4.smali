.class Lcom/vungle/warren/downloader/AssetDownloader$4;
.super Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "AssetDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;ILcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(ILcom/vungle/warren/downloader/AssetDownloader$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    move-object/from16 v1, p0

    .line 216
    new-instance v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-nez v5, :cond_3c

    .line 222
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    .line 223
    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v9, v9, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start load: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v12, v12, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " url: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    .line 237
    :try_start_0
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v13, v12}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    if-nez v13, :cond_2

    .line 238
    :try_start_1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Abort download, wrong state "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v13, v14}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 479
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request is done "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v4

    .line 485
    :try_start_2
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v5}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 493
    :pswitch_0
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v2, v6, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_2

    .line 490
    :pswitch_1
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v2, v3, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_2

    .line 496
    :pswitch_2
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v6, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    :goto_1
    if-nez v7, :cond_0

    .line 499
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1800(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_0
    :goto_2
    :pswitch_3
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing connections and listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v2

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 514
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 517
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 514
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catchall_1
    move-exception v0

    move-object v5, v3

    move-object v8, v5

    move-object v9, v8

    move-object/from16 v19, v9

    move-object/from16 v22, v19

    move/from16 v25, v7

    :goto_3
    const/16 v21, 0x1

    move-object v3, v0

    goto/16 :goto_3e

    :catch_0
    move-exception v0

    move-object v5, v3

    move-object v9, v5

    move-object/from16 v19, v9

    move/from16 v25, v7

    move v4, v8

    const/4 v10, -0x1

    move-object v3, v0

    move-object/from16 v7, v19

    move-object v8, v7

    goto/16 :goto_2e

    .line 242
    :cond_2
    :try_start_4
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v13, v14}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 246
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v13, v12}, Lcom/vungle/warren/downloader/DownloadRequest;->setConnected(Z)V

    .line 249
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1b
    .catchall {:try_start_4 .. :try_end_4} :catchall_16

    .line 250
    :try_start_5
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".vng_meta"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_19
    .catchall {:try_start_5 .. :try_end_5} :catchall_14

    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 252
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, v3

    move-object v9, v5

    move-object/from16 v19, v9

    move-object/from16 v22, v19

    move/from16 v25, v7

    move-object v8, v13

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v3

    move-object v9, v5

    move-object/from16 v19, v9

    move/from16 v25, v7

    move v4, v8

    move-object v8, v13

    const/4 v10, -0x1

    move-object v3, v0

    move-object/from16 v7, v19

    goto/16 :goto_2e

    .line 255
    :cond_3
    :goto_4
    :try_start_7
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_19
    .catchall {:try_start_7 .. :try_end_7} :catchall_14

    if-eqz v9, :cond_4

    :try_start_8
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v17
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-wide/from16 v3, v17

    goto :goto_5

    :cond_4
    const-wide/16 v3, 0x0

    .line 257
    :goto_5
    :try_start_9
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "already downloaded : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", file exists = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    .line 261
    invoke-static {v12, v15}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 257
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 264
    invoke-virtual {v9, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    const-string v9, "Accept-Encoding"

    const-string v10, "identity"

    .line 265
    invoke-virtual {v5, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 267
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_19
    .catchall {:try_start_9 .. :try_end_9} :catchall_14

    if-eqz v9, :cond_7

    :try_start_a
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 268
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vungle/warren/utility/FileUtility;->readMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    const-string v10, "bytes"

    const-string v12, "Accept-Ranges"

    .line 271
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "identity"

    const-string v12, "Content-Encoding"

    .line 272
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "Content-Encoding"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7

    :cond_5
    const-string v10, "Range"

    .line 274
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v10, "ETag"

    .line 276
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_6

    const-string v10, "Last-Modified"

    .line 279
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    :cond_6
    if-eqz v10, :cond_7

    const-string v9, "If-Range"

    .line 282
    invoke-virtual {v5, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    move/from16 v25, v7

    move-object v8, v13

    goto/16 :goto_23

    :catch_2
    move-exception v0

    move-object v3, v0

    move/from16 v25, v7

    move v4, v8

    move-object v8, v13

    goto/16 :goto_24

    .line 286
    :cond_7
    :goto_6
    :try_start_b
    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;)Lokhttp3/OkHttpClient;

    move-result-object v9

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v9, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_19
    .catchall {:try_start_b .. :try_end_b} :catchall_14

    .line 288
    :try_start_c
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v9
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_18
    .catchall {:try_start_c .. :try_end_c} :catchall_13

    .line 289
    :try_start_d
    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v10, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)J

    move-result-wide v15

    .line 291
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response code: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v11, v11, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v10
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_17
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    .line 295
    :try_start_e
    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v11, v13, v9, v12}, Lcom/vungle/warren/downloader/AssetDownloader;->access$600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lokhttp3/Response;Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v11
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_16
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    if-eqz v11, :cond_c

    .line 296
    :try_start_f
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v9, :cond_8

    .line 471
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 472
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    :cond_8
    if-eqz v5, :cond_9

    .line 476
    invoke-interface {v5}, Lokhttp3/Call;->cancel()V

    .line 479
    :cond_9
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request is done "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    .line 485
    :try_start_10
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_7

    .line 493
    :pswitch_4
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v2, v6, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_8

    .line 490
    :pswitch_5
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v2, v13, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_8

    .line 496
    :pswitch_6
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v4, v5, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    :goto_7
    if-nez v7, :cond_a

    .line 499
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, v4, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1800(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, v4, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_a
    :goto_8
    :pswitch_7
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing connections and listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 511
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v2

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 514
    :cond_b
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    const/4 v2, 0x0

    .line 516
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 517
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 514
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v2

    :catchall_5
    move-exception v0

    move-object v3, v0

    move/from16 v25, v7

    move-object v8, v13

    goto/16 :goto_28

    :catch_3
    move-exception v0

    move-object v3, v0

    move/from16 v25, v7

    move v4, v8

    move-object v8, v13

    goto/16 :goto_21

    :cond_c
    const/16 v11, 0xce

    if-ne v10, v11, :cond_d

    .line 300
    :try_start_12
    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v12, v9, v3, v4, v11}, Lcom/vungle/warren/downloader/AssetDownloader;->access$700(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;JLcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v11
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v11, :cond_e

    :cond_d
    const/16 v11, 0x1a0

    if-ne v10, v11, :cond_15

    .line 303
    :cond_e
    :try_start_13
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v3, :cond_f

    .line 304
    :try_start_14
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 306
    :cond_f
    :try_start_15
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v3, :cond_10

    .line 307
    :try_start_16
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :cond_10
    add-int/lit8 v3, v8, 0x1

    .line 310
    :try_start_17
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v4, v4, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-ge v8, v4, :cond_14

    if-eqz v9, :cond_11

    .line 471
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 472
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->close()V

    :cond_11
    if-eqz v5, :cond_12

    .line 476
    invoke-interface {v5}, Lokhttp3/Call;->cancel()V

    .line 479
    :cond_12
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request is done "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v4

    .line 507
    :try_start_18
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not removing connections and listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v9, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 511
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v5

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 514
    :cond_13
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    const/4 v11, 0x0

    .line 516
    invoke-static {v11}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 517
    invoke-static {v11}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    move v8, v3

    move-object v3, v11

    const/4 v5, 0x0

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 514
    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw v2

    :cond_14
    const/4 v11, 0x0

    .line 314
    :try_start_1a
    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloader$RequestException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Code: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/vungle/warren/downloader/AssetDownloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    const/4 v11, 0x0

    :goto_9
    move v4, v3

    move/from16 v25, v7

    move-object v7, v11

    move-object/from16 v19, v7

    move-object v8, v13

    move-object v3, v0

    goto/16 :goto_2e

    :catchall_7
    move-exception v0

    const/4 v11, 0x0

    :goto_a
    move-object v3, v0

    move/from16 v25, v7

    move-object/from16 v19, v11

    move-object/from16 v22, v19

    move-object v8, v13

    goto/16 :goto_3d

    :catch_6
    move-exception v0

    const/4 v11, 0x0

    :goto_b
    move-object v3, v0

    move/from16 v25, v7

    move v4, v8

    move-object v7, v11

    move-object/from16 v19, v7

    move-object v8, v13

    goto/16 :goto_2e

    :cond_15
    const/4 v11, 0x0

    .line 318
    :try_start_1b
    invoke-virtual {v9}, Lokhttp3/Response;->isSuccessful()Z

    move-result v12
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_16
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    if-eqz v12, :cond_28

    const/16 v12, 0xce

    if-eq v10, v12, :cond_17

    .line 324
    :try_start_1c
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 325
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :cond_16
    const-wide/16 v3, 0x0

    goto :goto_c

    :catchall_8
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_b

    .line 328
    :cond_17
    :goto_c
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 330
    invoke-virtual {v9}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v12

    const-string v11, "Content-Encoding"

    .line 332
    invoke-virtual {v12, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_13
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    if-eqz v11, :cond_19

    move/from16 v23, v8

    :try_start_1e
    const-string v8, "gzip"

    .line 334
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "identity"

    .line 335
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_d

    .line 336
    :cond_18
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unknown Content-Encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :catch_8
    move-exception v0

    move-object v3, v0

    move/from16 v25, v7

    move-object v8, v13

    goto/16 :goto_20

    :cond_19
    move/from16 v23, v8

    .line 339
    :cond_1a
    :goto_d
    :try_start_1f
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v11, "ETag"
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    move/from16 v24, v10

    :try_start_20
    const-string v10, "ETag"

    .line 340
    invoke-virtual {v12, v10}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Last-Modified"

    const-string v11, "Last-Modified"

    .line 341
    invoke-virtual {v12, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Accept-Ranges"

    const-string v11, "Accept-Ranges"

    .line 342
    invoke-virtual {v12, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Content-Encoding"

    const-string v11, "Content-Encoding"

    .line 343
    invoke-virtual {v12, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/vungle/warren/utility/FileUtility;->writeMap(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 346
    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$800(Lcom/vungle/warren/downloader/AssetDownloader;Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 351
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v10
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    .line 353
    :try_start_21
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Start download from bytes: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    move/from16 v25, v7

    :try_start_22
    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    .line 354
    invoke-static {v14, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 353
    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    add-long/2addr v15, v3

    .line 359
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "final offset = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    const-wide/16 v11, 0x0

    cmp-long v7, v3, v11

    if-nez v7, :cond_1b

    .line 361
    :try_start_23
    invoke-static {v13}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v7
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v10

    move-object v8, v13

    goto/16 :goto_29

    :catch_9
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v10

    move-object v8, v13

    goto/16 :goto_1b

    :cond_1b
    :try_start_24
    invoke-static {v13}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v7

    :goto_e
    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v7
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_e
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    const/4 v11, 0x0

    .line 364
    :try_start_25
    iput v11, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 365
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    iput-wide v11, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 366
    iput-wide v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 368
    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v11, v11, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-static {v8, v11, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$900(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    .line 370
    :goto_f
    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    move/from16 v26, v8

    const/4 v8, 0x1

    invoke-virtual {v14, v8}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v14
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    if-eqz v14, :cond_20

    .line 371
    :try_start_26
    invoke-interface {v7}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v8
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_b
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    move-object/from16 v27, v13

    const-wide/16 v13, 0x800

    :try_start_27
    invoke-interface {v10, v8, v13, v14}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v13

    const-wide/16 v17, -0x1

    cmp-long v8, v13, v17

    if-eqz v8, :cond_21

    .line 373
    invoke-interface {v7}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    const/4 v8, 0x0

    add-long/2addr v11, v13

    add-long v13, v3, v11

    const-wide/16 v17, 0x0

    cmp-long v8, v15, v17

    if-lez v8, :cond_1c

    const-wide/16 v19, 0x64

    mul-long v13, v13, v19

    .line 379
    div-long/2addr v13, v15

    long-to-int v8, v13

    goto :goto_10

    :cond_1c
    move/from16 v8, v26

    .line 382
    :goto_10
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v13}, Lcom/vungle/warren/downloader/DownloadRequest;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 386
    iget v13, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    if-gt v8, v13, :cond_1d

    goto :goto_11

    .line 389
    :cond_1d
    iput v8, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 391
    iget v13, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v14}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1000(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v14

    rem-int/2addr v13, v14

    if-nez v13, :cond_1e

    const/4 v13, 0x1

    .line 392
    iput v13, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 393
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v14, v14, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-static {v13, v14, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$900(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    :cond_1e
    :goto_11
    move-object/from16 v13, v27

    goto :goto_f

    .line 383
    :cond_1f
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Request is not connected"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_a
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_12

    :catch_a
    move-exception v0

    goto :goto_13

    :catchall_b
    move-exception v0

    move-object/from16 v27, v13

    :goto_12
    move-object v3, v0

    move-object/from16 v22, v7

    move-object/from16 v19, v10

    move-object/from16 v8, v27

    goto/16 :goto_3d

    :catch_b
    move-exception v0

    move-object/from16 v27, v13

    :goto_13
    move-object v3, v0

    move-object/from16 v19, v10

    move/from16 v4, v23

    move/from16 v10, v24

    move-object/from16 v8, v27

    goto/16 :goto_2e

    :cond_20
    move-object/from16 v27, v13

    .line 397
    :cond_21
    :try_start_28
    invoke-interface {v7}, Lokio/BufferedSink;->flush()V

    .line 399
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v3
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_c
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    if-eqz v3, :cond_22

    .line 400
    :try_start_29
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_a
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    goto :goto_14

    :cond_22
    const/4 v3, 0x6

    .line 402
    :try_start_2a
    iput v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 403
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, v4, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$900(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 404
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "State has changed, cancelling download "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v8, v11}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_c
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    :goto_14
    if-eqz v9, :cond_23

    .line 471
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 472
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    :cond_23
    if-eqz v5, :cond_24

    .line 476
    invoke-interface {v5}, Lokhttp3/Call;->cancel()V

    .line 479
    :cond_24
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request is done "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    .line 485
    :try_start_2b
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_15

    .line 493
    :pswitch_8
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v4, v6, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_16

    .line 490
    :pswitch_9
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    move-object/from16 v8, v27

    invoke-static {v4, v8, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_16

    .line 496
    :pswitch_a
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v4, v5, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    :goto_15
    if-nez v25, :cond_25

    .line 499
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1800(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_25
    :goto_16
    :pswitch_b
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing connections and listener "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 511
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v4

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 514
    :cond_26
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    .line 516
    invoke-static {v7}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 517
    invoke-static {v10}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    move/from16 v8, v23

    move/from16 v7, v25

    const/4 v5, 0x1

    const/4 v13, 0x0

    goto/16 :goto_3a

    :catchall_c
    move-exception v0

    move-object v2, v0

    .line 514
    :try_start_2c
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    throw v2

    :catchall_d
    move-exception v0

    move-object/from16 v8, v27

    goto :goto_17

    :catch_c
    move-exception v0

    move-object/from16 v8, v27

    goto :goto_18

    :catchall_e
    move-exception v0

    move-object v8, v13

    :goto_17
    move-object v3, v0

    move-object/from16 v22, v7

    move-object/from16 v19, v10

    goto/16 :goto_3d

    :catch_d
    move-exception v0

    move-object v8, v13

    :goto_18
    move-object v3, v0

    move-object/from16 v19, v10

    move/from16 v4, v23

    move/from16 v10, v24

    goto/16 :goto_2e

    :catchall_f
    move-exception v0

    goto :goto_19

    :catch_e
    move-exception v0

    goto :goto_1a

    :catchall_10
    move-exception v0

    move/from16 v25, v7

    :goto_19
    move-object v8, v13

    move-object v3, v0

    move-object/from16 v19, v10

    goto/16 :goto_29

    :catch_f
    move-exception v0

    move/from16 v25, v7

    :goto_1a
    move-object v8, v13

    move-object v3, v0

    move-object/from16 v19, v10

    :goto_1b
    move/from16 v4, v23

    move/from16 v10, v24

    const/4 v7, 0x0

    goto/16 :goto_2e

    :cond_27
    move/from16 v25, v7

    move-object v8, v13

    .line 349
    :try_start_2d
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Response body is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_10
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    :catch_10
    move-exception v0

    goto :goto_1c

    :catch_11
    move-exception v0

    move/from16 v25, v7

    move-object v8, v13

    :goto_1c
    move-object v3, v0

    move/from16 v4, v23

    move/from16 v10, v24

    goto :goto_21

    :catch_12
    move-exception v0

    move/from16 v25, v7

    goto :goto_1d

    :catch_13
    move-exception v0

    move/from16 v25, v7

    move/from16 v23, v8

    :goto_1d
    move/from16 v24, v10

    goto :goto_1f

    :cond_28
    move/from16 v25, v7

    move/from16 v23, v8

    move/from16 v24, v10

    move-object v8, v13

    .line 319
    :try_start_2e
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloader$RequestException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Code: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_15
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    move/from16 v7, v24

    :try_start_2f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_14
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    :catch_14
    move-exception v0

    goto :goto_1e

    :catchall_11
    move-exception v0

    goto :goto_22

    :catch_15
    move-exception v0

    move/from16 v7, v24

    :goto_1e
    move-object v3, v0

    move v10, v7

    goto :goto_20

    :catch_16
    move-exception v0

    move/from16 v25, v7

    move/from16 v23, v8

    move v7, v10

    :goto_1f
    move-object v8, v13

    move-object v3, v0

    :goto_20
    move/from16 v4, v23

    :goto_21
    const/4 v7, 0x0

    goto/16 :goto_2d

    :catchall_12
    move-exception v0

    move/from16 v25, v7

    move-object v8, v13

    :goto_22
    move-object v3, v0

    goto/16 :goto_28

    :catch_17
    move-exception v0

    move/from16 v25, v7

    move/from16 v23, v8

    move-object v8, v13

    move-object v3, v0

    move/from16 v4, v23

    const/4 v7, 0x0

    goto/16 :goto_2c

    :catchall_13
    move-exception v0

    move/from16 v25, v7

    move-object v8, v13

    move-object v3, v0

    goto :goto_27

    :catch_18
    move-exception v0

    move/from16 v25, v7

    move/from16 v23, v8

    move-object v8, v13

    move-object v3, v0

    move/from16 v4, v23

    goto :goto_25

    :catchall_14
    move-exception v0

    move/from16 v25, v7

    move-object v8, v13

    move-object v3, v0

    :goto_23
    const/4 v5, 0x0

    goto :goto_27

    :catch_19
    move-exception v0

    move/from16 v25, v7

    move/from16 v23, v8

    move-object v8, v13

    move-object v3, v0

    move/from16 v4, v23

    :goto_24
    const/4 v5, 0x0

    :goto_25
    const/4 v7, 0x0

    goto :goto_2b

    :cond_29
    move/from16 v25, v7

    move/from16 v23, v8

    .line 243
    :try_start_30
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Request is not connected to reuired network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not connected to correct network"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    :catchall_15
    move-exception v0

    goto :goto_26

    :catch_1a
    move-exception v0

    goto :goto_2a

    :catchall_16
    move-exception v0

    move/from16 v25, v7

    :goto_26
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_27
    const/4 v9, 0x0

    :goto_28
    const/16 v19, 0x0

    :goto_29
    const/16 v21, 0x1

    const/16 v22, 0x0

    goto/16 :goto_3e

    :catch_1b
    move-exception v0

    move/from16 v25, v7

    move/from16 v23, v8

    :goto_2a
    move-object v3, v0

    move/from16 v4, v23

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2b
    const/4 v9, 0x0

    :goto_2c
    const/4 v10, -0x1

    :goto_2d
    const/16 v19, 0x0

    .line 408
    :goto_2e
    :try_start_31
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Exception on download"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V

    .line 411
    instance-of v11, v3, Ljava/io/IOException;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1c

    if-eqz v11, :cond_30

    .line 412
    :try_start_32
    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v11, v13}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v11

    .line 413
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v13, v11}, Lcom/vungle/warren/downloader/DownloadRequest;->setConnected(Z)V

    const/4 v13, 0x3

    if-nez v11, :cond_2d

    .line 416
    iput v12, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 417
    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v15, v15, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-static {v14, v15, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$900(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 419
    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v14, v13}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v14

    if-nez v14, :cond_2d

    add-int/lit8 v14, v4, 0x1

    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v15, v15, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    if-ge v4, v15, :cond_2c

    const/4 v4, 0x0

    .line 422
    :goto_2f
    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v15, v15, Lcom/vungle/warren/downloader/AssetDownloader;->retryCountOnConnectionLost:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1a

    if-ge v4, v15, :cond_2c

    .line 424
    :try_start_33
    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v15, v15, Lcom/vungle/warren/downloader/AssetDownloader;->reconnectTimeout:I

    const/4 v12, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v15
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_1d
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    move/from16 v28, v14

    int-to-long v13, v15

    :try_start_34
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_34} :catch_1c
    .catchall {:try_start_34 .. :try_end_34} :catchall_1a

    goto :goto_31

    :catch_1c
    move-exception v0

    goto :goto_30

    :catch_1d
    move-exception v0

    move/from16 v28, v14

    :goto_30
    move-object v12, v0

    .line 426
    :try_start_35
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 429
    :goto_31
    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v12

    if-eqz v12, :cond_2a

    goto :goto_32

    .line 433
    :cond_2a
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Trying to reconnect"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v12, v13}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 436
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v12, "Reconnected, starting download again"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    .line 438
    :try_start_36
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/vungle/warren/downloader/DownloadRequest;->setConnected(Z)V

    .line 439
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v4, v12}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_17

    const/4 v4, 0x0

    const/4 v13, 0x0

    goto :goto_34

    :catchall_17
    move-exception v0

    move-object v3, v0

    move-object/from16 v22, v7

    const/16 v21, 0x0

    goto/16 :goto_3e

    .line 443
    :cond_2b
    :try_start_37
    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vungle/warren/downloader/DownloadRequest;->setConnected(Z)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1a

    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v28

    const/4 v12, 0x5

    const/4 v13, 0x3

    goto :goto_2f

    :cond_2c
    move/from16 v28, v14

    :goto_32
    const/4 v13, 0x0

    goto :goto_33

    :cond_2d
    const/4 v13, 0x0

    move/from16 v28, v4

    :goto_33
    const/4 v4, 0x1

    :goto_34
    if-eqz v4, :cond_2f

    .line 448
    :try_start_38
    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/vungle/warren/downloader/DownloadRequest;->is(I)Z

    move-result v12

    if-nez v12, :cond_2f

    .line 449
    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v12, v14}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1100(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v12
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_19

    if-eqz v12, :cond_2e

    .line 451
    :try_start_39
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V

    .line 452
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v3, v2, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_18

    const/16 v25, 0x1

    goto :goto_35

    :catchall_18
    move-exception v0

    move-object v3, v0

    move/from16 v21, v4

    move-object/from16 v22, v7

    const/16 v25, 0x1

    goto/16 :goto_3e

    .line 454
    :cond_2e
    :try_start_3a
    iget-object v12, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Lcom/vungle/warren/downloader/DownloadRequest;->set(I)V

    .line 455
    new-instance v12, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v14, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 456
    invoke-static {v14, v3, v11}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1300(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I

    move-result v11

    invoke-direct {v12, v10, v3, v11}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_19

    move-object v6, v12

    goto :goto_35

    :catchall_19
    move-exception v0

    move-object v3, v0

    move/from16 v21, v4

    move-object/from16 v22, v7

    goto/16 :goto_3e

    :cond_2f
    :goto_35
    move v12, v4

    move-object v11, v6

    move/from16 v4, v28

    goto :goto_36

    :catchall_1a
    move-exception v0

    goto/16 :goto_3c

    :cond_30
    const/4 v13, 0x0

    .line 461
    :try_start_3b
    instance-of v11, v3, Lcom/vungle/warren/downloader/AssetDownloader$RequestException;

    if-eqz v11, :cond_31

    .line 462
    new-instance v11, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1c

    const/4 v12, 0x1

    :try_start_3c
    invoke-direct {v11, v10, v3, v12}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    goto :goto_36

    :cond_31
    const/4 v12, 0x1

    .line 465
    new-instance v11, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v14, 0x4

    invoke-direct {v11, v10, v3, v14}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1a

    :goto_36
    if-eqz v9, :cond_32

    .line 471
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 472
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    :cond_32
    if-eqz v5, :cond_33

    .line 476
    invoke-interface {v5}, Lokhttp3/Call;->cancel()V

    .line 479
    :cond_33
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request is done "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v6, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    if-eqz v12, :cond_35

    .line 485
    :try_start_3d
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v5}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto :goto_37

    .line 493
    :pswitch_c
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v11, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_38

    .line 490
    :pswitch_d
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v8, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_38

    .line 496
    :pswitch_e
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v6, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    :goto_37
    if-nez v25, :cond_34

    .line 499
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v6, v6, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1800(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v6, v6, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_34
    :goto_38
    :pswitch_f
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing connections and listener "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :catchall_1b
    move-exception v0

    move-object v2, v0

    goto :goto_3b

    .line 507
    :cond_35
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not removing connections and listener "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_39
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 511
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v5

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 514
    :cond_36
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1b

    .line 516
    invoke-static {v7}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 517
    invoke-static/range {v19 .. v19}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    move v8, v4

    move-object v6, v11

    move v5, v12

    move/from16 v7, v25

    :goto_3a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 514
    :goto_3b
    :try_start_3e
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1b

    throw v2

    :catchall_1c
    move-exception v0

    const/4 v12, 0x1

    :goto_3c
    move-object v3, v0

    move-object/from16 v22, v7

    :goto_3d
    const/16 v21, 0x1

    :goto_3e
    if-eqz v9, :cond_37

    .line 471
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 472
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->close()V

    :cond_37
    if-eqz v5, :cond_38

    .line 476
    invoke-interface {v5}, Lokhttp3/Call;->cancel()V

    .line 479
    :cond_38
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request is done "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v7, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v4

    if-eqz v21, :cond_3a

    .line 485
    :try_start_3f
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v5}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_4

    goto :goto_3f

    .line 493
    :pswitch_10
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v2, v6, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_40

    .line 490
    :pswitch_11
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v2, v8, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_40

    .line 496
    :pswitch_12
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v5, v6, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    :goto_3f
    if-nez v25, :cond_39

    .line 499
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1800(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_39
    :goto_40
    :pswitch_13
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing connections and listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :catchall_1d
    move-exception v0

    move-object v2, v0

    goto :goto_42

    .line 507
    :cond_3a
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not removing connections and listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_41
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 511
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v2

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$4;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 514
    :cond_3b
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1d

    .line 516
    invoke-static/range {v22 .. v22}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 517
    invoke-static/range {v19 .. v19}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 514
    :goto_42
    :try_start_40
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1d

    throw v2

    :cond_3c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
