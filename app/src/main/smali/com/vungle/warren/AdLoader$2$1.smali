.class Lcom/vungle/warren/AdLoader$2$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$2;

.field final synthetic val$response:Lretrofit2/Response;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$2;Lretrofit2/Response;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lretrofit2/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 476
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1000(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleApiClient;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lretrofit2/Response;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lretrofit2/Response;)J

    move-result-wide v2

    .line 478
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    const-class v5, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v4, v5}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;J)V

    .line 481
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 486
    :cond_0
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to retrieve advertisement information"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lretrofit2/Response;

    invoke-virtual {v3}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-static {v2, v3}, Lcom/vungle/warren/AdLoader;->access$1100(Lcom/vungle/warren/AdLoader;I)Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 495
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Placement metadata not found for requested advertisement."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 500
    :cond_2
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lretrofit2/Response;

    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    const-string v5, "ads"

    .line 501
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "ads"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "ads"

    .line 503
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    .line 505
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_5

    .line 511
    :cond_3
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const/16 v6, 0x1a

    .line 513
    :try_start_0
    new-instance v7, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v7, v3}, Lcom/vungle/warren/model/Advertisement;-><init>(Lcom/google/gson/JsonObject;)V

    .line 515
    iget-object v8, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$2;->val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

    if-eqz v8, :cond_4

    .line 516
    iget-object v8, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$2;->val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

    iget-object v9, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v9, v9, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/vungle/warren/HeaderBiddingCallback;->onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_4
    iget-object v8, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v8}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v8

    invoke-virtual {v7}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v7}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 523
    iget-object v9, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v9, v9, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v9}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v9

    invoke-virtual {v7}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 525
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 526
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    .line 539
    :cond_5
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v4, Lcom/vungle/warren/error/VungleError;

    const/16 v8, 0xa

    invoke-direct {v4, v8}, Lcom/vungle/warren/error/VungleError;-><init>(I)V

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v8, v7}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 527
    :cond_6
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 528
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "postroll"

    .line 530
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "template"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    const/4 v12, 0x2

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v12, 0x0

    .line 534
    :goto_3
    new-instance v13, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v10, v11}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iput v4, v13, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 536
    iput v12, v13, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 537
    iget-object v10, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v10, v10, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v10}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 545
    :cond_9
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 546
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$2;->val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;

    iget-object v9, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v9, v9, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v2, v4, v7, v8, v9}, Lcom/vungle/warren/AdLoader;->access$800(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 574
    :catch_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_1
    const-string v2, "ad_markup"

    .line 551
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "sleep"

    .line 552
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "sleep"

    .line 553
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    int-to-long v3, v2

    .line 557
    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/model/Placement;->snooze(J)V

    .line 559
    :try_start_1
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    .line 564
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 568
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    invoke-virtual {v0, v3, v6, v7}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;J)V

    goto :goto_4

    .line 561
    :catch_2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 572
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 508
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 578
    :cond_c
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleError;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleError;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method
