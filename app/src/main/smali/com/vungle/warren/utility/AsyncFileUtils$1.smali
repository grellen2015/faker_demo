.class Lcom/vungle/warren/utility/AsyncFileUtils$1;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/utility/AsyncFileUtils;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fileExist:Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/AsyncFileUtils;Ljava/io/File;Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1;->this$0:Lcom/vungle/warren/utility/AsyncFileUtils;

    iput-object p2, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1;->val$fileExist:Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1;->this$0:Lcom/vungle/warren/utility/AsyncFileUtils;

    invoke-static {v1}, Lcom/vungle/warren/utility/AsyncFileUtils;->access$000(Lcom/vungle/warren/utility/AsyncFileUtils;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/utility/AsyncFileUtils$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vungle/warren/utility/AsyncFileUtils$1$1;-><init>(Lcom/vungle/warren/utility/AsyncFileUtils$1;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
