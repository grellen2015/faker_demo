.class Lcom/vungle/warren/downloader/AssetDownloader$8;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Ljava/lang/String;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$copy:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

.field final synthetic val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$8;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader$8;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$8;->val$copy:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    iput-object p4, p0, Lcom/vungle/warren/downloader/AssetDownloader$8;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$8;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$8;->val$copy:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$8;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method
