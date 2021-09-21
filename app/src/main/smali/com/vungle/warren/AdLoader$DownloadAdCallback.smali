.class Lcom/vungle/warren/AdLoader$DownloadAdCallback;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/AdLoader$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;


# direct methods
.method private constructor <init>(Lcom/vungle/warren/AdLoader;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$1;)V
    .locals 0

    .line 906
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lcom/vungle/warren/AdLoader;)V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 910
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    .line 914
    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    const-class v1, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, p2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    .line 916
    :goto_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1, p1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 922
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p1, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    invoke-virtual {p0, p1, v1, v0}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void

    .line 924
    :catch_0
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 918
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Didn\'t find adv"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 962
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    monitor-enter v0

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$1700(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    .line 964
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2, p2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 965
    :cond_0
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    .line 967
    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    const-class v4, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, p3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/model/Advertisement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/16 v3, 0x1a

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v2, :cond_3

    if-eqz p3, :cond_1

    .line 972
    :try_start_1
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 974
    :catch_0
    :try_start_2
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 978
    :cond_1
    :goto_1
    iget-object p3, v1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/LoadAdCallback;

    .line 979
    invoke-interface {v1, p2, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 981
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1, p2, v5}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 982
    monitor-exit v0

    return-void

    .line 989
    :cond_3
    instance-of v2, p1, Lcom/vungle/warren/error/VungleException;

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    .line 990
    move-object v2, p1

    check-cast v2, Lcom/vungle/warren/error/VungleException;

    invoke-virtual {v2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v2

    if-eq v2, v6, :cond_5

    const/16 v7, 0xe

    if-eq v2, v7, :cond_5

    const/16 v7, 0x14

    if-eq v2, v7, :cond_4

    const/16 v7, 0x19

    if-eq v2, v7, :cond_5

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz p3, :cond_6

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_6

    :cond_4
    :pswitch_1
    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/4 v7, 0x0

    :goto_5
    const/4 v8, 0x4

    :goto_6
    const-string v9, "Vungle"

    .line 1011
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load ad/assets for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Cause:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1012
    iget-object v9, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v9, p2, v5}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    if-eqz v1, :cond_d

    .line 1015
    iget v9, v1, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    const-wide/16 v10, 0x2

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_a

    :pswitch_2
    if-nez v2, :cond_a

    .line 1032
    iget p1, v1, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    .line 1033
    iget v2, v1, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge p1, v2, :cond_7

    if-eqz v7, :cond_7

    add-int/lit8 v5, p1, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x4

    :goto_7
    if-eqz p3, :cond_8

    .line 1041
    :try_start_3
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v8}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 1043
    :catch_1
    :try_start_4
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_a

    .line 1047
    :cond_8
    :goto_8
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    iget-wide p2, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v1, p2, p3}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p2

    iget-wide v1, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    mul-long v1, v1, v10

    invoke-virtual {p2, v1, v2}, Lcom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/vungle/warren/AdLoader$Operation;->retry(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 1048
    monitor-exit v0

    return-void

    .line 1017
    :pswitch_3
    iget v2, v1, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    iget v5, v1, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v2, v5, :cond_a

    if-eqz v7, :cond_a

    if-eqz p3, :cond_9

    .line 1020
    :try_start_5
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v8}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_5
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    .line 1022
    :catch_2
    :try_start_6
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_a

    .line 1026
    :cond_9
    :goto_9
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    iget-wide p2, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v1, p2, p3}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p2

    iget-wide v2, v1, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    mul-long v2, v2, v10

    invoke-virtual {p2, v2, v3}, Lcom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p2

    iget p3, v1, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    add-int/2addr p3, v6

    invoke-virtual {p2, p3}, Lcom/vungle/warren/AdLoader$Operation;->retry(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 1027
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_a
    :goto_a
    if-eqz p3, :cond_b

    .line 1054
    :try_start_7
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_7
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    .line 1056
    :catch_3
    :try_start_8
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 1059
    :cond_b
    :goto_b
    iget-object p3, v1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    :goto_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/LoadAdCallback;

    if-eqz v1, :cond_c

    .line 1061
    invoke-interface {v1, p2, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 1065
    :cond_d
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 933
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    monitor-enter v0

    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/vungle/warren/AdLoader;->access$700(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 937
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->headerBiddingCallback:Lcom/vungle/warren/HeaderBiddingCallback;

    if-eqz v1, :cond_0

    .line 939
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p1, p3}, Lcom/vungle/warren/HeaderBiddingCallback;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_0
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found already cached valid adv, calling onAdLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p2}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object p2

    iget-object p2, p2, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    if-eqz p2, :cond_1

    .line 945
    iget-object p2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p2}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object p2

    iget-object p2, p2, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    invoke-interface {p2, p1}, Lcom/vungle/warren/InitCallback;->onAutoCacheAdAvailable(Ljava/lang/String;)V

    .line 948
    :cond_1
    iget-object p2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p2}, Lcom/vungle/warren/AdLoader;->access$1700(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p2, :cond_3

    .line 951
    iget-object p2, p2, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/LoadAdCallback;

    if-eqz p3, :cond_2

    .line 953
    invoke-interface {p3, p1}, Lcom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
