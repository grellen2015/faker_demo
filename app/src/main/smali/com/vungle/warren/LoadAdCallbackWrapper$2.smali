.class Lcom/vungle/warren/LoadAdCallbackWrapper$2;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/LoadAdCallbackWrapper;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/LoadAdCallbackWrapper;

.field final synthetic val$cause:Ljava/lang/Throwable;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->this$0:Lcom/vungle/warren/LoadAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->this$0:Lcom/vungle/warren/LoadAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/LoadAdCallbackWrapper;->access$000(Lcom/vungle/warren/LoadAdCallbackWrapper;)Lcom/vungle/warren/LoadAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->val$cause:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
