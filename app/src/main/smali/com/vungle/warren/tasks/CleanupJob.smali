.class public Lcom/vungle/warren/tasks/CleanupJob;
.super Ljava/lang/Object;
.source "CleanupJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final adLoader:Lcom/vungle/warren/AdLoader;

.field private final designer:Lcom/vungle/warren/persistence/Designer;

.field private final repository:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/vungle/warren/tasks/CleanupJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;)V
    .locals 0
    .param p1    # Lcom/vungle/warren/persistence/Designer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/persistence/Repository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/AdLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    .line 40
    iput-object p2, p0, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 41
    iput-object p3, p0, Lcom/vungle/warren/tasks/CleanupJob;->adLoader:Lcom/vungle/warren/AdLoader;

    return-void
.end method

.method public static makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;
    .locals 2

    .line 146
    new-instance v0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .locals 17

    move-object/from16 v1, p0

    .line 53
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 58
    :cond_0
    sget-object v0, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    const-string v3, "CleanupJob: Current directory snapshot"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    .line 61
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 62
    iget-object v3, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v4, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    iget-object v4, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v5, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v4, v5}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 66
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    return v6

    .line 69
    :cond_1
    iget-object v5, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 71
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 74
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/warren/model/Placement;

    .line 77
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v5, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 78
    sget-object v9, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "Placement %s is no longer valid, deleting it and its advertisement"

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v9, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v9, v8}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v10, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v8}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vungle/warren/persistence/Repository;->findAdsForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 86
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 87
    iget-object v12, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v13, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v12, v11, v13}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vungle/warren/model/Advertisement;

    if-eqz v12, :cond_6

    .line 90
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getExpireTime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_5

    .line 91
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v13

    if-eq v13, v9, :cond_5

    .line 95
    iget-object v12, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v12, v11}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v8}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 99
    iget-object v11, v1, Lcom/vungle/warren/tasks/CleanupJob;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v8}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v12, v13, v14}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;J)V

    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v12, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting valid adv "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for placement "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    :cond_6
    sget-object v12, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removing adv "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from placement "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v11, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v8}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Advertisement;

    .line 118
    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 119
    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v5, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found adv in viewing state "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 121
    :cond_9
    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 122
    sget-object v5, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete ad "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v5, v1, Lcom/vungle/warren/tasks/CleanupJob;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_a
    array-length v3, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_c

    aget-object v5, v0, v4

    .line 130
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 132
    sget-object v8, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Deleting assets under directory %s"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v5}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    return v6

    :catch_0
    move-exception v0

    .line 139
    sget-object v3, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    const-string v4, "Failed to delete asset directory!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_1
    return v2

    :cond_d
    :goto_4
    return v2
.end method
