.class Lcom/vungle/warren/downloader/AssetDownloader$2;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request with same url and path already present"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method
