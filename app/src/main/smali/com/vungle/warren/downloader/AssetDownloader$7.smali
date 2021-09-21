.class Lcom/vungle/warren/downloader/AssetDownloader$7;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$endError:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$7;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader$7;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$7;->val$endError:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iput-object p4, p0, Lcom/vungle/warren/downloader/AssetDownloader$7;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$7;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$7;->val$endError:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$7;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method
