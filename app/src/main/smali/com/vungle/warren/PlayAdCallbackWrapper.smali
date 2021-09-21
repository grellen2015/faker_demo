.class Lcom/vungle/warren/PlayAdCallbackWrapper;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final playAdCallback:Lcom/vungle/warren/PlayAdCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/PlayAdCallback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    .line 12
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    return-object p0
.end method


# virtual methods
.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/PlayAdCallbackWrapper$2;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$1;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/PlayAdCallbackWrapper$3;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
