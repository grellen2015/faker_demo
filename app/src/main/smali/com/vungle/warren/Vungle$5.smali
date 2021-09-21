.class final Lcom/vungle/warren/Vungle$5;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$close:Ljava/lang/String;

.field final synthetic val$keepWatching:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/vungle/warren/Vungle$5;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$5;->val$body:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$5;->val$keepWatching:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$5;->val$close:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/warren/Vungle$5;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 636
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 641
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v1, "incentivizedTextSetByPub"

    const-class v2, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-nez v0, :cond_1

    .line 643
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "incentivizedTextSetByPub"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 648
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v1, "title"

    .line 650
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 653
    :cond_2
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$body:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "body"

    .line 655
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 658
    :cond_3
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$keepWatching:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "continue"

    .line 660
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$keepWatching:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 663
    :cond_4
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$close:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "close"

    .line 665
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$close:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 668
    :cond_5
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$userID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "userID"

    .line 670
    iget-object v2, p0, Lcom/vungle/warren/Vungle$5;->val$userID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    .line 675
    :try_start_0
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v1, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 677
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method
