.class public Lcom/vungle/warren/DirectDownloadStrategy;
.super Ljava/lang/Object;
.source "DirectDownloadStrategy.java"

# interfaces
.implements Lcom/vungle/warren/DownloadStrategy;


# instance fields
.field private directDownload:Lcom/vungle/warren/PublisherDirectDownload;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/PublisherDirectDownload;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/vungle/warren/DirectDownloadStrategy;->directDownload:Lcom/vungle/warren/PublisherDirectDownload;

    return-void
.end method


# virtual methods
.method public isApplicationAvailable(Ljava/lang/String;Lcom/vungle/warren/DownloadStrategy$VerificationCallback;)V
    .locals 3

    .line 25
    new-instance v0, Lcom/vungle/warren/DirectDownloadAdapter;

    iget-object v1, p0, Lcom/vungle/warren/DirectDownloadStrategy;->directDownload:Lcom/vungle/warren/PublisherDirectDownload;

    invoke-direct {v0, v1, p1}, Lcom/vungle/warren/DirectDownloadAdapter;-><init>(Lcom/vungle/warren/PublisherDirectDownload;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/DirectDownloadStrategy$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/vungle/warren/DirectDownloadStrategy$1;-><init>(Lcom/vungle/warren/DirectDownloadStrategy;Lcom/vungle/warren/DownloadStrategy$VerificationCallback;Lcom/vungle/warren/DirectDownloadAdapter;)V

    invoke-virtual {v1, v2}, Lcom/vungle/warren/SDKDownloadClient;->setAppMarketValidation(Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;)V

    .line 35
    invoke-virtual {v0}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/vungle/warren/SDKDownloadClient;->sendValidation(Ljava/lang/String;)V

    return-void
.end method
