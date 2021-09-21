.class Lcom/vungle/warren/AdLoader$3$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$3;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$3;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$3;Z)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iput-boolean p2, p0, Lcom/vungle/warren/AdLoader$3$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 609
    iget-boolean v0, p0, Lcom/vungle/warren/AdLoader$3$1;->val$result:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchAdMetadata: downloading assets "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$3;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$3;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$3;->val$placementId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader;->access$1400(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$3;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3$1;->this$1:Lcom/vungle/warren/AdLoader$3;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$3;->val$placementId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
