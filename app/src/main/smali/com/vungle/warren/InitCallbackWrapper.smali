.class Lcom/vungle/warren/InitCallbackWrapper;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/InitCallback;


# instance fields
.field private final callback:Lcom/vungle/warren/InitCallback;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/InitCallback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    .line 12
    iput-object p1, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/InitCallbackWrapper;)Lcom/vungle/warren/InitCallback;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    return-object p0
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/InitCallbackWrapper$3;-><init>(Lcom/vungle/warren/InitCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/InitCallbackWrapper$2;-><init>(Lcom/vungle/warren/InitCallbackWrapper;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->callback:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/InitCallbackWrapper$1;-><init>(Lcom/vungle/warren/InitCallbackWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
