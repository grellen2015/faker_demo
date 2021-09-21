.class Lcom/vungle/warren/AdLoader$3;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/DownloadStrategy$VerificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->downloadAdContent(Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/PublisherDirectDownload;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$advertisement:Lcom/vungle/warren/model/Advertisement;

.field final synthetic val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$3;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$3;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p4, p0, Lcom/vungle/warren/AdLoader$3;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/SDKExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$3$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/AdLoader$3$1;-><init>(Lcom/vungle/warren/AdLoader$3;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
