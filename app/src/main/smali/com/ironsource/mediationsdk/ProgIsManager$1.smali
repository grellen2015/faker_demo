.class Lcom/ironsource/mediationsdk/ProgIsManager$1;
.super Ljava/lang/Object;
.source "ProgIsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ProgIsManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ProgIsManager;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 125
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_AUCTION:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$000(Lcom/ironsource/mediationsdk/ProgIsManager;Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 126
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$102(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$200(Lcom/ironsource/mediationsdk/ProgIsManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 130
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$300(Lcom/ironsource/mediationsdk/ProgIsManager;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ironsource/mediationsdk/ProgIsManager$1$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ProgIsManager$1$1;-><init>(Lcom/ironsource/mediationsdk/ProgIsManager$1;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$500(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 143
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$600(Lcom/ironsource/mediationsdk/ProgIsManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    monitor-enter v3

    .line 147
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$600(Lcom/ironsource/mediationsdk/ProgIsManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 148
    iget-object v6, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$700(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 149
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToBid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getBiddingData()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 152
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v6

    if-nez v6, :cond_1

    .line 156
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 164
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v1, 0x8fc

    new-array v2, v4, [[Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v3, v6

    const/16 v7, 0x3ed

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Object;

    const-string v8, "duration"

    aput-object v8, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$500(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v2, "No candidates available for auctioning"

    invoke-direct {v1, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v1, 0x83e

    new-array v2, v5, [[Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$500(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$000(Lcom/ironsource/mediationsdk/ProgIsManager;Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    return-void

    .line 171
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v7, 0x100

    if-le v3, v7, :cond_5

    .line 172
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 173
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 176
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    const/16 v7, 0x906

    new-array v8, v5, [[Ljava/lang/Object;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "ext1"

    aput-object v10, v9, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v5

    aput-object v9, v8, v6

    invoke-static {v3, v7, v8}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$500(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 179
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$800(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHandler;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 180
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$800(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgIsManager$1;->this$0:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->access$900(Lcom/ironsource/mediationsdk/ProgIsManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/ironsource/mediationsdk/AuctionHandler;->executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 161
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method