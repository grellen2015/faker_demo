.class final Lcom/vungle/warren/Vungle$6;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/vungle/warren/PlayAdCallback;

.field final synthetic val$settings:Lcom/vungle/warren/AdConfig;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/AdConfig;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$6;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$6;->val$settings:Lcom/vungle/warren/AdConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 733
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    .line 738
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$1900(Lcom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/AdLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/AdLoader;->isLoading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 740
    :cond_1
    :goto_0
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    :goto_1
    if-nez v0, :cond_2

    .line 744
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    :cond_2
    if-eqz v1, :cond_3

    .line 748
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 756
    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v2, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 759
    :try_start_0
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    .line 764
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 766
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v3, v5}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 767
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 768
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/AdLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v3, v5, v6}, Lcom/vungle/warren/AdLoader;->loadEndless(Ljava/lang/String;J)V

    .line 771
    :cond_4
    iget-object v1, p0, Lcom/vungle/warren/Vungle$6;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    new-instance v5, Lcom/vungle/warren/error/VungleException;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v1, v3, v5}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    goto :goto_2

    .line 774
    :cond_5
    iget-object v3, p0, Lcom/vungle/warren/Vungle$6;->val$settings:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->configure(Lcom/vungle/warren/AdConfig;)V

    .line 775
    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v3, v3, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_2
    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$600(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 788
    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v3, v3, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-eqz v1, :cond_6

    const-string v5, ""

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v3, v4, v0, v5}, Lcom/vungle/warren/VungleApiClient;->willPlayAd(Ljava/lang/String;ZLjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v3, Lcom/vungle/warren/Vungle$6$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/vungle/warren/Vungle$6$1;-><init>(Lcom/vungle/warren/Vungle$6;ZLcom/vungle/warren/model/Advertisement;)V

    invoke-interface {v0, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_7
    return-void

    .line 778
    :catch_0
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
