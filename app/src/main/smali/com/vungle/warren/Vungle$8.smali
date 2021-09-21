.class final Lcom/vungle/warren/Vungle$8;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1005
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->clearAllData()V

    .line 1008
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v1

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->initCallback:Lcom/vungle/warren/InitCallback;

    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->access$1700(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;)V

    return-void
.end method
