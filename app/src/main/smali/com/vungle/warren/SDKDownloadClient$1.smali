.class Lcom/vungle/warren/SDKDownloadClient$1;
.super Landroid/support/v4/os/ResultReceiver;
.source "SDKDownloadClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/SDKDownloadClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/SDKDownloadClient;


# direct methods
.method constructor <init>(Lcom/vungle/warren/SDKDownloadClient;Landroid/os/Handler;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-direct {p0, p2}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string p1, "PACKAGE_NAME"

    .line 95
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "RESULT"

    .line 96
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "IN_APP_PURCHASE"

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 98
    iget-object v0, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {v0}, Lcom/vungle/warren/SDKDownloadClient;->access$000(Lcom/vungle/warren/SDKDownloadClient;)Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 99
    iget-object v0, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {v0}, Lcom/vungle/warren/SDKDownloadClient;->access$000(Lcom/vungle/warren/SDKDownloadClient;)Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;->isAppInstalled(ZZ)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p1}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 103
    iget-object p1, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p1}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "javascript:window.vungle.mraidBridgeExt.getInstallationStatus({\"status\":0})"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    const-string p1, "PROGRESS"

    .line 106
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 107
    iget-object p2, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p2}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 108
    iget-object p2, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p2}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.vungle.mraidBridgeExt.getInstallationStatus({\"status\":0,\"percentage\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "})"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x12

    if-ne p1, v0, :cond_3

    .line 112
    iget-object p1, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p1}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 113
    iget-object p1, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p1}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "javascript:window.vungle.mraidBridgeExt.getInstallationStatus({\"status\":1,\"percentage\":0})"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x13

    if-ne p1, v0, :cond_5

    const-string p1, "RESULT"

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 117
    iget-object p2, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p2}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p2

    if-eqz p2, :cond_8

    if-nez p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p1}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "javascript:window.vungle.mraidBridgeExt.getInstallationStatus({\"status\":-1})"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p1}, Lcom/vungle/warren/SDKDownloadClient;->access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "javascript:window.vungle.mraidBridgeExt.getInstallationStatus({\"status\":1,\"percentage\":1})"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x24

    if-ne p1, v0, :cond_7

    const-string p1, "PACKAGE_NAME"

    .line 127
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "RESULT"

    .line 128
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 129
    iget-object p2, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p2}, Lcom/vungle/warren/SDKDownloadClient;->access$200(Lcom/vungle/warren/SDKDownloadClient;)Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 130
    iget-object p2, p0, Lcom/vungle/warren/SDKDownloadClient$1;->this$0:Lcom/vungle/warren/SDKDownloadClient;

    invoke-static {p2}, Lcom/vungle/warren/SDKDownloadClient;->access$200(Lcom/vungle/warren/SDKDownloadClient;)Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;->validateAppPresenceInMarket(Z)V

    goto :goto_0

    :cond_7
    const/16 p2, 0x38

    :cond_8
    :goto_0
    return-void
.end method
