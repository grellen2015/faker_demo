.class Lcom/ironsource/mediationsdk/ProgRvManager$2;
.super Ljava/lang/Object;
.source "ProgRvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ProgRvManager;->makeAuction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ProgRvManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ProgRvManager;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 256
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const-string v1, "makeAuction()"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$200(Lcom/ironsource/mediationsdk/ProgRvManager;Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 258
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$302(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$402(Lcom/ironsource/mediationsdk/ProgRvManager;J)J

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$500(Lcom/ironsource/mediationsdk/ProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    monitor-enter v3

    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$500(Lcom/ironsource/mediationsdk/ProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 268
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->unloadVideo()V

    .line 269
    iget-object v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$600(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 270
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isReadyToBid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getBiddingData()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 273
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v6

    if-nez v6, :cond_0

    .line 277
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 285
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const-string v1, "makeAuction() failed - request waterfall is empty"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const v1, 0x13c69

    new-array v2, v4, [[Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v3, v5

    const v7, 0x13883

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v3, v5

    const-string v4, "waterfall request is empty"

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$700(Lcom/ironsource/mediationsdk/ProgRvManager;I[[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$800(Lcom/ironsource/mediationsdk/ProgRvManager;)V

    return-void

    .line 290
    :cond_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeAuction() - request waterfall is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v7, 0x100

    if-le v3, v7, :cond_4

    .line 292
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 293
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 297
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/16 v7, 0x3e8

    invoke-static {v3, v7}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$900(Lcom/ironsource/mediationsdk/ProgRvManager;I)V

    .line 298
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/16 v7, 0x514

    invoke-static {v3, v7}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$900(Lcom/ironsource/mediationsdk/ProgRvManager;I)V

    .line 299
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/16 v7, 0x51e

    new-array v8, v6, [[Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v9, "ext1"

    aput-object v9, v4, v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    aput-object v4, v8, v5

    invoke-static {v3, v7, v8}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1000(Lcom/ironsource/mediationsdk/ProgRvManager;I[[Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1300(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1100(Lcom/ironsource/mediationsdk/ProgRvManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1200(Lcom/ironsource/mediationsdk/ProgRvManager;)I

    move-result v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 282
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
