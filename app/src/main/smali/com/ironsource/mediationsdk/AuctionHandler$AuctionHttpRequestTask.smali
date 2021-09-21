.class Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;
.super Landroid/os/AsyncTask;
.source "AuctionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AuctionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuctionHttpRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mAuctionListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/mediationsdk/AuctionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAuctionTrial:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mRequestData:Lorg/json/JSONObject;

.field private mRequestStartTime:J

.field private mWaterfall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AuctionEventListener;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "other"

    .line 170
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleResponse(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "response"

    .line 307
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    new-instance v0, Lorg/json/JSONObject;

    const-string p2, "C38FB23A402222A0C17D34A92F971D1F"

    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string p1, "auctionId"

    .line 311
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionId:Ljava/lang/String;

    .line 313
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mWaterfall:Ljava/util/List;

    const-string p1, "waterfall"

    .line 314
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 315
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 316
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Lorg/json/JSONObject;)V

    .line 317
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mWaterfall:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x3ea

    .line 318
    iput p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "waterfall "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 320
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "invalid response"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 302
    :cond_3
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "empty response"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private prepareAuctionRequest(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p2, p2

    .line 291
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string p3, "POST"

    .line 292
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p3, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    .line 293
    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x1

    .line 295
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 296
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 328
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 336
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendAuctionRequest(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 276
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 279
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "C38FB23A402222A0C17D34A92F971D1F"

    .line 280
    invoke-static {v2, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "{\"request\" : \"%1$s\"}"

    const/4 v3, 0x1

    .line 281
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 284
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 285
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 286
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private waitUntilNextTrial(JJ)V
    .locals 2

    .line 268
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_0

    .line 270
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 13

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestStartTime:J

    const/4 v0, 0x0

    .line 187
    :try_start_0
    new-instance v1, Ljava/net/URL;

    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 188
    aget-object v3, p1, v2

    check-cast v3, Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestData:Lorg/json/JSONObject;

    const/4 v3, 0x2

    .line 189
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    .line 190
    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    .line 191
    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 202
    iput v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const/4 p1, 0x0

    :goto_0
    iget v7, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    if-ge v7, v4, :cond_4

    .line 204
    :try_start_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 206
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v9

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Auction Handler: auction trial "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " out of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " max trials"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 212
    invoke-direct {p0, v1, v5, v6}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->prepareAuctionRequest(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object v9
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 213
    :try_start_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestData:Lorg/json/JSONObject;

    invoke-direct {p0, v9, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->sendAuctionRequest(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)V

    .line 215
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v10, 0xc8

    if-eq p1, v10, :cond_0

    const/16 v10, 0x3e9

    .line 217
    iput v10, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 219
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    iget p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v10, v4, -0x1

    if-ge p1, v10, :cond_3

    .line 223
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->waitUntilNextTrial(JJ)V

    goto :goto_2

    .line 228
    :cond_0
    invoke-direct {p0, v9}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->handleResponse(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 240
    :try_start_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 241
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/16 p1, 0x3ea

    .line 233
    iput p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string p1, "failed parsing auction response"

    .line 234
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    const-string p1, "parsing"

    .line 235
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 236
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v9, p1

    move-object p1, v1

    :goto_1
    if-eqz v9, :cond_1

    .line 251
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/16 v1, 0x3e8

    .line 253
    iput v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    const-string p1, "other"

    .line 255
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 256
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_3
    move-object v9, p1

    :catch_4
    if-eqz v9, :cond_2

    .line 245
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    const/16 p1, 0x3ee

    .line 247
    iput p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string p1, "Connection timed out"

    .line 248
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object p1, v9

    .line 202
    iget v7, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    goto/16 :goto_0

    :cond_4
    sub-int/2addr v4, v2

    .line 261
    iput v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const-string p1, "trials_fail"

    .line 263
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 264
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    const/16 v1, 0x3ef

    .line 194
    iput v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 196
    iput v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const-string p1, "other"

    .line 197
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8

    .line 343
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ironsource/mediationsdk/AuctionEventListener;

    if-nez v1, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestStartTime:J

    sub-long v6, v2, v4

    .line 349
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 350
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mWaterfall:Ljava/util/List;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionId:Ljava/lang/String;

    iget p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v4, p1, 0x1

    move-wide v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionSuccess(Ljava/util/List;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 352
    :cond_1
    iget v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    iget p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
