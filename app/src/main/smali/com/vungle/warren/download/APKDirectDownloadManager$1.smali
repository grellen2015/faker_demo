.class final Lcom/vungle/warren/download/APKDirectDownloadManager$1;
.super Ljava/lang/Object;
.source "APKDirectDownloadManager.java"

# interfaces
.implements Lcom/vungle/warren/downloader/AssetDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/download/APKDirectDownloadManager;->download(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$destFile:Ljava/io/File;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(ILjava/io/File;)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$notificationId:I

    iput-object p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$destFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 3

    const-string v0, "DirectDownloadManager"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download onError :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " id:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$000()Lcom/vungle/warren/download/APKDirectDownloadManager;

    move-result-object p1

    iget p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$notificationId:I

    invoke-static {p1, p2}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$100(Lcom/vungle/warren/download/APKDirectDownloadManager;I)V

    .line 166
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$000()Lcom/vungle/warren/download/APKDirectDownloadManager;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$200(Lcom/vungle/warren/download/APKDirectDownloadManager;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$notificationId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 3

    const-string v0, "DirectDownloadManager"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download progress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequest;->getStatus()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget p2, p1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 175
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$000()Lcom/vungle/warren/download/APKDirectDownloadManager;

    move-result-object p1

    iget p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$notificationId:I

    invoke-static {p1, p2}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$100(Lcom/vungle/warren/download/APKDirectDownloadManager;I)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$000()Lcom/vungle/warren/download/APKDirectDownloadManager;

    move-result-object p2

    iget v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$notificationId:I

    invoke-static {p2, v0, p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$300(Lcom/vungle/warren/download/APKDirectDownloadManager;ILcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 2

    if-nez p1, :cond_0

    .line 184
    new-instance p1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Downloaded file not found!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    :cond_0
    const-string p2, "DirectDownloadManager"

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download complete :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$000()Lcom/vungle/warren/download/APKDirectDownloadManager;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$destFile:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$400(Lcom/vungle/warren/download/APKDirectDownloadManager;Ljava/io/File;)V

    .line 191
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$000()Lcom/vungle/warren/download/APKDirectDownloadManager;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->access$200(Lcom/vungle/warren/download/APKDirectDownloadManager;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager$1;->val$notificationId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
