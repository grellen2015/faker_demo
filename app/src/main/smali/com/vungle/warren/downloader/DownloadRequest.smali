.class public Lcom/vungle/warren/downloader/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/DownloadRequest$Priority;
    }
.end annotation


# instance fields
.field private connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final cookieString:Ljava/lang/String;

.field final id:Ljava/lang/String;

.field public final networkType:I

.field public final path:Ljava/lang/String;

.field public final pauseOnConnectionLost:Z

.field public final priority:I

.field private statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/AssetDownloader$NetworkType;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iput p1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    .line 60
    iput p2, p0, Lcom/vungle/warren/downloader/DownloadRequest;->priority:I

    .line 61
    iput-object p3, p0, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    .line 64
    iput-boolean p5, p0, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    .line 65
    iput-object p6, p0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Url or path is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAndSetStatus(I)I
    .locals 1
    .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Status;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    return p1
.end method

.method public getStatus()I
    .locals 1
    .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Status;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method is(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Status;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isConnected()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method set(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Status;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method protected setConnected(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
