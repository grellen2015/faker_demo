.class abstract Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.super Lcom/vungle/warren/utility/PriorityRunnable;
.source "AssetDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DownloadPriorityRunnable"
.end annotation


# instance fields
.field private final priority:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 877
    invoke-direct {p0}, Lcom/vungle/warren/utility/PriorityRunnable;-><init>()V

    .line 878
    iput p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/vungle/warren/downloader/AssetDownloader$1;)V
    .locals 0

    .line 874
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getPriority()Ljava/lang/Integer;
    .locals 1

    .line 883
    iget v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
