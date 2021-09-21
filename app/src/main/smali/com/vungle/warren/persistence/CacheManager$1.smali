.class Lcom/vungle/warren/persistence/CacheManager$1;
.super Landroid/os/FileObserver;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/CacheManager;->observeDirectory(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/CacheManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$1;->this$0:Lcom/vungle/warren/persistence/CacheManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/CacheManager$1;->stopWatching()V

    .line 128
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$1;->this$0:Lcom/vungle/warren/persistence/CacheManager;

    invoke-static {p1}, Lcom/vungle/warren/persistence/CacheManager;->access$000(Lcom/vungle/warren/persistence/CacheManager;)V

    return-void
.end method
