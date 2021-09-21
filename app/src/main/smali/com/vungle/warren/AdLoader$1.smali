.class Lcom/vungle/warren/AdLoader$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->loadAd(Ljava/lang/String;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/PublisherDirectDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/DownloadCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/PublisherDirectDownload;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/AdLoader$1;->val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 352
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$100(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleStaticApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Placement ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not valid. Please check your configuration on the vungle dashboard."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 370
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3, v2}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    goto/16 :goto_5

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v3, v2}, Lcom/vungle/warren/AdLoader;->access$300(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    const/16 v4, 0x1a

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eqz v3, :cond_6

    .line 373
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Found valid adv but not ready - downloading content"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$500(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v7

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_4

    .line 376
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eq v0, v6, :cond_3

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v6}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 384
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-static {v0, v3, v5}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 391
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 395
    :catch_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 400
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->access$800(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_5

    .line 408
    :cond_6
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-lez v3, :cond_7

    .line 409
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is  snoozed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 414
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is sleeping rescheduling it "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;JLcom/vungle/warren/PublisherDirectDownload;)V

    goto/16 :goto_5

    .line 419
    :cond_7
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "didn\'t find cached adv for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " downloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    .line 423
    :try_start_2
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v3, v2, v7, v6}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 425
    :catch_2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v2

    iget-object v2, v2, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$500(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v4}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v4

    iget-object v4, v4, Lcom/vungle/warren/RuntimeValues;->settings:Lcom/vungle/warren/VungleSettings;

    invoke-virtual {v4}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_b

    .line 432
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const/16 v0, 0x12

    goto :goto_4

    :cond_a
    :goto_3
    const/16 v0, 0x11

    :goto_4
    invoke-direct {v3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 438
    :cond_b
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No adv for placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " getting new data "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 442
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$1;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->val$pubsDownloadClient:Lcom/vungle/warren/PublisherDirectDownload;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$1;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$1;->this$0:Lcom/vungle/warren/AdLoader;

    .line 446
    invoke-static {v4}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v4

    iget-object v4, v4, Lcom/vungle/warren/RuntimeValues;->headerBiddingCallback:Lcom/vungle/warren/HeaderBiddingCallback;

    .line 442
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;)V

    :cond_c
    :goto_5
    return-void
.end method
