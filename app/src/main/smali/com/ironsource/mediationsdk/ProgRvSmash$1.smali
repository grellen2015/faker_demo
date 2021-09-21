.class Lcom/ironsource/mediationsdk/ProgRvSmash$1;
.super Ljava/util/TimerTask;
.source "ProgRvSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ProgRvSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 553
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const-string v1, "Rewarded Video - load instance time out"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    const/16 v3, 0x401

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1fe

    const/4 v1, 0x0

    const/16 v2, 0x1fe

    goto :goto_2

    .line 560
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;)V

    .line 561
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    if-ne v1, v2, :cond_2

    const/16 v1, 0x401

    goto :goto_1

    :cond_2
    const/16 v1, 0x408

    :goto_1
    move v2, v1

    const/4 v1, 0x1

    .line 564
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v3, 0x4b0

    new-array v6, v0, [[Ljava/lang/Object;

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v7, v6, v5

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "duration"

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v7, v6, v4

    invoke-static {v1, v3, v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$500(Lcom/ironsource/mediationsdk/ProgRvSmash;I[[Ljava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v3, 0x4bc

    new-array v6, v0, [[Ljava/lang/Object;

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    aput-object v7, v6, v5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v0, v6, v4

    invoke-static {v1, v3, v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$500(Lcom/ironsource/mediationsdk/ProgRvSmash;I[[Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$700(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$600(Lcom/ironsource/mediationsdk/ProgRvSmash;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    goto :goto_3

    .line 571
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    const/16 v2, 0x4b8

    const/4 v6, 0x3

    new-array v6, v6, [[Ljava/lang/Object;

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    aput-object v7, v6, v5

    new-array v3, v0, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v3, v5

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v7}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/ProgRvSmash;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    aput-object v3, v6, v4

    new-array v3, v0, [Ljava/lang/Object;

    const-string v7, "ext1"

    aput-object v7, v3, v5

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/ProgRvSmash;)Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v6, v0

    invoke-static {v1, v2, v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;->access$500(Lcom/ironsource/mediationsdk/ProgRvSmash;I[[Ljava/lang/Object;)V

    :goto_3
    return-void

    :catchall_0
    move-exception v1

    .line 564
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
