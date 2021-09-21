.class Lcom/vungle/warren/AdLoader$6;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->unzipFile(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$downloadedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Ljava/io/File;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$6;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$6;->val$downloadedFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onSaved()V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/SDKExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$6$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/AdLoader$6$1;-><init>(Lcom/vungle/warren/AdLoader$6;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
