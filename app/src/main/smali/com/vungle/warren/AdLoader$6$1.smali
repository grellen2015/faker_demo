.class Lcom/vungle/warren/AdLoader$6$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$6;->onSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$6;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$6;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$6$1;->this$1:Lcom/vungle/warren/AdLoader$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->this$1:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->val$downloadedFile:Ljava/io/File;

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1173
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on deleting zip assets archive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
