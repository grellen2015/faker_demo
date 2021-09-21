.class Lcom/vungle/warren/persistence/Repository$18;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$placements:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/util/List;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$18;->val$placements:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$18;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 501
    const-class v0, Lcom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 502
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_valid"

    const/4 v3, 0x0

    .line 503
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 505
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance v3, Lcom/vungle/warren/persistence/Query;

    const-string v4, "placement"

    invoke-direct {v3, v4}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->update(Lcom/vungle/warren/persistence/Query;Landroid/content/ContentValues;)J

    .line 507
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$18;->val$placements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    .line 508
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/vungle/warren/model/Placement;

    invoke-static {v3, v4, v5}, Lcom/vungle/warren/persistence/Repository;->access$000(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Placement;

    if-eqz v3, :cond_1

    .line 510
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v4

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 514
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Placements data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is different from disc, deleting old"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/warren/persistence/Repository;->access$1200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 518
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 519
    iget-object v6, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v6, v5}, Lcom/vungle/warren/persistence/Repository;->access$900(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :cond_0
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    const-class v5, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/vungle/warren/persistence/Repository;->access$1300(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 528
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/model/Placement;->setWakeupTime(J)V

    :cond_2
    const/4 v3, 0x1

    .line 531
    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Placement;->setValid(Z)V

    .line 532
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v3, v2}, Lcom/vungle/warren/persistence/Repository;->access$200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 534
    :cond_3
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
