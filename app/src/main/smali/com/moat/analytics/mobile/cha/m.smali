.class final Lcom/moat/analytics/mobile/cha/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˋ(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    .line 21
    new-array v1, v0, [C

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v4, 0x0

    .line 26
    :cond_0
    invoke-virtual {v3, v1, p0, v0}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-lez v5, :cond_1

    add-int/2addr v4, v5

    .line 28
    invoke-virtual {v2, v1, p0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    if-lt v4, v5, :cond_0

    .line 33
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static ॱ(Ljava/lang/String;)Lcom/moat/analytics/mobile/cha/base/functional/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/moat/analytics/mobile/cha/base/functional/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v1, 0x2710

    .line 50
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0x3a98

    .line 51
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    .line 52
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 55
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 56
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    .line 58
    invoke-static {}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/m;->ˋ(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 68
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :catch_1
    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 64
    :catch_2
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    return-object p0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 69
    :catch_4
    :cond_3
    throw p0
.end method
