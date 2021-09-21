.class Lcom/vungle/warren/utility/AsyncFileUtils$1$1;
.super Ljava/lang/Object;
.source "AsyncFileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/AsyncFileUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/utility/AsyncFileUtils$1;

.field final synthetic val$exists:Z


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/AsyncFileUtils$1;Z)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1$1;->this$1:Lcom/vungle/warren/utility/AsyncFileUtils$1;

    iput-boolean p2, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1$1;->val$exists:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1$1;->this$1:Lcom/vungle/warren/utility/AsyncFileUtils$1;

    iget-object v0, v0, Lcom/vungle/warren/utility/AsyncFileUtils$1;->val$fileExist:Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;

    iget-boolean v1, p0, Lcom/vungle/warren/utility/AsyncFileUtils$1$1;->val$exists:Z

    invoke-interface {v0, v1}, Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;->status(Z)V

    return-void
.end method
