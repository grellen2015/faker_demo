.class public Lcom/vungle/warren/utility/AsyncFileUtils;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;
    }
.end annotation


# instance fields
.field private ioExecutorService:Ljava/util/concurrent/ExecutorService;

.field private uiExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils;->ioExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 14
    iput-object p2, p0, Lcom/vungle/warren/utility/AsyncFileUtils;->uiExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/utility/AsyncFileUtils;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/vungle/warren/utility/AsyncFileUtils;->uiExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 25
    invoke-interface {p2, v0}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;->status(Z)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils;->ioExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/utility/AsyncFileUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/utility/AsyncFileUtils$1;-><init>(Lcom/vungle/warren/utility/AsyncFileUtils;Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
