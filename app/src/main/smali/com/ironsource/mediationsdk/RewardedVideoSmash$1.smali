.class Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;
.super Ljava/util/TimerTask;
.source "RewardedVideoSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RewardedVideoSmash;->startInitTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->cancel()Z

    .line 74
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 76
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 77
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$100(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)J

    move-result-wide v5

    const/4 v3, 0x0

    sub-long/2addr v1, v5

    .line 78
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$200(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    const/16 v6, 0x401

    const/4 v7, 0x2

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    const/16 v8, 0x4b0

    new-array v9, v7, [[Ljava/lang/Object;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "errorCode"

    aput-object v11, v10, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    aput-object v10, v9, v4

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "duration"

    aput-object v11, v10, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v5

    aput-object v10, v9, v5

    invoke-static {v3, v8, v9}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$300(Lcom/ironsource/mediationsdk/RewardedVideoSmash;I[[Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    const/16 v8, 0x4bc

    new-array v9, v7, [[Ljava/lang/Object;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "errorCode"

    aput-object v11, v10, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    aput-object v10, v9, v4

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v6, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v5

    aput-object v6, v9, v5

    invoke-static {v3, v8, v9}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$300(Lcom/ironsource/mediationsdk/RewardedVideoSmash;I[[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    const/16 v8, 0x4b8

    new-array v9, v7, [[Ljava/lang/Object;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "errorCode"

    aput-object v11, v10, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    aput-object v10, v9, v4

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v6, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v5

    aput-object v6, v9, v5

    invoke-static {v3, v8, v9}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$300(Lcom/ironsource/mediationsdk/RewardedVideoSmash;I[[Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-interface {v1, v4, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 86
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
