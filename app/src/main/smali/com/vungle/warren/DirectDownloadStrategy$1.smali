.class Lcom/vungle/warren/DirectDownloadStrategy$1;
.super Ljava/lang/Object;
.source "DirectDownloadStrategy.java"

# interfaces
.implements Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/DirectDownloadStrategy;->isApplicationAvailable(Ljava/lang/String;Lcom/vungle/warren/DownloadStrategy$VerificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/DirectDownloadStrategy;

.field final synthetic val$directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

.field final synthetic val$downloadVerificationResult:Lcom/vungle/warren/DownloadStrategy$VerificationCallback;


# direct methods
.method constructor <init>(Lcom/vungle/warren/DirectDownloadStrategy;Lcom/vungle/warren/DownloadStrategy$VerificationCallback;Lcom/vungle/warren/DirectDownloadAdapter;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/vungle/warren/DirectDownloadStrategy$1;->this$0:Lcom/vungle/warren/DirectDownloadStrategy;

    iput-object p2, p0, Lcom/vungle/warren/DirectDownloadStrategy$1;->val$downloadVerificationResult:Lcom/vungle/warren/DownloadStrategy$VerificationCallback;

    iput-object p3, p0, Lcom/vungle/warren/DirectDownloadStrategy$1;->val$directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validateAppPresenceInMarket(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/vungle/warren/DirectDownloadStrategy$1;->val$downloadVerificationResult:Lcom/vungle/warren/DownloadStrategy$VerificationCallback;

    invoke-interface {v0, p1}, Lcom/vungle/warren/DownloadStrategy$VerificationCallback;->onResult(Z)V

    .line 31
    iget-object p1, p0, Lcom/vungle/warren/DirectDownloadStrategy$1;->val$directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {p1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vungle/warren/SDKDownloadClient;->setAppMarketValidation(Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;)V

    return-void
.end method
