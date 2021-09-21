.class Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadHandler"
.end annotation


# instance fields
.field mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3f8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    return-void
.end method

.method setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
