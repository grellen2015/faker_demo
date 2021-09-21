.class final Lcom/vungle/warren/Vungle$9;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->getNativeAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field percentViewed:I

.field succesfulView:Z

.field final synthetic val$advertisement:Lcom/vungle/warren/model/Advertisement;

.field final synthetic val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PlayAdCallback;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/vungle/warren/Vungle$9;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$9;->val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1117
    iput-boolean p1, p0, Lcom/vungle/warren/Vungle$9;->succesfulView:Z

    const/4 p1, -0x1

    .line 1122
    iput p1, p0, Lcom/vungle/warren/Vungle$9;->percentViewed:I

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 1177
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->access$1900(Lcom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-static {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 1180
    :try_start_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1182
    :catch_0
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 1185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {v0, p2, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "start"

    .line 1127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1129
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/Vungle$9;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1, p2, p3, v1}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 1131
    iget-object p1, p0, Lcom/vungle/warren/Vungle$9;->val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_0

    .line 1132
    iget-object p1, p0, Lcom/vungle/warren/Vungle$9;->val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdStart(Ljava/lang/String;)V

    .line 1135
    :cond_0
    iput v2, p0, Lcom/vungle/warren/Vungle$9;->percentViewed:I

    .line 1137
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class p2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {p1, p3, p2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Placement;

    if-eqz p1, :cond_7

    .line 1138
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1140
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/AdLoader;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    invoke-virtual {p1, p3, v0, v1, p2}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;JLcom/vungle/warren/PublisherDirectDownload;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "end"

    .line 1142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    const-string p1, "Vungle"

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleaning up metadata and assets for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and advertisement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$9;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p3, v1}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 1146
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/Vungle$9;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0, v2, v3}, Lcom/vungle/warren/persistence/Repository;->updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1149
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object p1, p1, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {v2}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 1151
    sget-object p1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->access$1900(Lcom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    iget-object p1, p0, Lcom/vungle/warren/Vungle$9;->val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_7

    .line 1155
    iget-object p1, p0, Lcom/vungle/warren/Vungle$9;->val$playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    iget-boolean v0, p0, Lcom/vungle/warren/Vungle$9;->succesfulView:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/vungle/warren/Vungle$9;->percentViewed:I

    const/16 v1, 0x50

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_4

    const-string v1, "isCTAClicked"

    .line 1157
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    .line 1155
    :cond_4
    invoke-interface {p1, p3, v0, v2}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_5
    const-string p2, "successfulView"

    .line 1160
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1161
    iput-boolean v3, p0, Lcom/vungle/warren/Vungle$9;->succesfulView:Z

    goto :goto_2

    :cond_6
    const-string p2, "percentViewed"

    .line 1162
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, ":"

    .line 1164
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1165
    array-length p2, p1

    if-ne p2, v1, :cond_7

    .line 1166
    aget-object p1, p1, v3

    .line 1167
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/Vungle$9;->percentViewed:I
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1171
    :catch_0
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, p1, p3}, Lcom/vungle/warren/Vungle$9;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
