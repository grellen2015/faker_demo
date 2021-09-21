.class Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/sdk/precache/DownloadManager$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mTmpFilesDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    .line 342
    iput-wide p4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 343
    iput-object p6, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .locals 6

    .line 363
    iget-wide v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    .line 365
    iput-wide v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v0

    .line 369
    iget-wide v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    cmp-long v2, v2, v4

    const/16 v3, 0x3f1

    if-gez v2, :cond_2

    .line 371
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v1

    .line 372
    iget v2, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    const/16 v4, 0x3f0

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 380
    iget-object v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    if-eqz v0, :cond_6

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "tmp_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    :try_start_0
    iget-object v4, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    invoke-virtual {p0, v4, v2}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->saveFile([BLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const/16 v0, 0x3ee

    .line 387
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x3fc

    .line 389
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DownloadManager"

    .line 400
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x3fb

    .line 402
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_2

    :catch_1
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "DownloadManager"

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_5
    iput v3, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_2

    :catch_2
    const/16 v0, 0x3fa

    .line 392
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    :cond_6
    :goto_2
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v0

    return-object v0
.end method

.method downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .locals 7

    .line 412
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;

    invoke-direct {v0}, Lcom/ironsource/sdk/precache/DownloadManager$Result;-><init>()V

    .line 418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    const/16 p1, 0x3ef

    .line 420
    iput p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 426
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 432
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "GET"

    .line 433
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v4, 0x1388

    .line 435
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 436
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 438
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 439
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v2, 0xc8

    if-lt v4, v2, :cond_2

    const/16 v5, 0x190

    if-lt v4, v5, :cond_1

    goto :goto_0

    .line 443
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 444
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v5

    goto :goto_1

    :catchall_0
    move-exception p2

    move v2, v4

    move-object v1, v5

    goto/16 :goto_7

    :catch_0
    move-exception p2

    move-object v1, v5

    goto/16 :goto_3

    :catch_1
    move-exception p2

    move v2, v4

    move-object v1, v5

    goto/16 :goto_5

    :catch_2
    move-object v1, v5

    goto/16 :goto_9

    :catch_3
    move-object v1, v5

    goto/16 :goto_b

    :catch_4
    move-object v1, v5

    goto/16 :goto_d

    :catch_5
    move-object v1, v5

    goto/16 :goto_f

    :catchall_1
    move-exception p2

    move v2, v4

    goto/16 :goto_7

    :catch_6
    move-exception p2

    move v2, v4

    goto/16 :goto_5

    :cond_2
    :goto_0
    const/16 v4, 0x3f3

    :goto_1
    if-eq v4, v2, :cond_3

    :try_start_4
    const-string v2, "DownloadManager"

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RESPONSE CODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ATTEMPT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    if-eqz v1, :cond_4

    .line 476
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_2

    :catch_7
    move-exception p2

    .line 479
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 483
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_5
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v4, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_12

    :catch_8
    move-exception p2

    goto :goto_3

    :catch_9
    move-exception p2

    goto :goto_5

    :catchall_2
    move-exception p2

    move-object v3, v1

    goto :goto_7

    :catch_a
    move-exception p2

    move-object v3, v1

    :goto_3
    const/16 v2, 0x3fb

    .line 469
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "DownloadManager"

    .line 470
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    if-eqz v1, :cond_7

    .line 476
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_4

    :catch_b
    move-exception p2

    .line 479
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 483
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_8
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v2, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_12

    :catch_c
    move-exception p2

    move-object v3, v1

    .line 463
    :goto_5
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "DownloadManager"

    .line 464
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_9
    const/16 p2, 0x3f1

    if-eqz v1, :cond_a

    .line 476
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_6

    :catch_d
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_6
    if-eqz v3, :cond_11

    goto :goto_11

    :catchall_3
    move-exception p2

    :goto_7
    if-eqz v1, :cond_b

    .line 476
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_8

    :catch_e
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_8
    if-eqz v3, :cond_c

    .line 483
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_c
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v2, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    throw p2

    :catch_f
    move-object v3, v1

    :catch_10
    :goto_9
    const/16 p2, 0x3fa

    if-eqz v1, :cond_d

    .line 476
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11

    goto :goto_a

    :catch_11
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_a
    if-eqz v3, :cond_11

    goto :goto_11

    :catch_12
    move-object v3, v1

    :catch_13
    :goto_b
    const/16 p2, 0x3f0

    if-eqz v1, :cond_e

    .line 476
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_14

    goto :goto_c

    :catch_14
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_c
    if-eqz v3, :cond_11

    goto :goto_11

    :catch_15
    move-object v3, v1

    :catch_16
    :goto_d
    const/16 p2, 0x3f2

    if-eqz v1, :cond_f

    .line 476
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_17

    goto :goto_e

    :catch_17
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_e
    if-eqz v3, :cond_11

    goto :goto_11

    :catch_18
    move-object v3, v1

    :catch_19
    :goto_f
    const/16 p2, 0x3ec

    if-eqz v1, :cond_10

    .line 476
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1a

    goto :goto_10

    :catch_1a
    move-exception v1

    .line 479
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_10
    if-eqz v3, :cond_11

    .line 483
    :goto_11
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_11
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput p2, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    :goto_12
    return-object v0
.end method

.method getBytes(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-static {p1}, Lcom/ironsource/sdk/precache/DownloadManager;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method saveFile([BLjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result p1

    return p1
.end method
