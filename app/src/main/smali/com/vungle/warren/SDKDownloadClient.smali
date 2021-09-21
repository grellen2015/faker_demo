.class public Lcom/vungle/warren/SDKDownloadClient;
.super Ljava/lang/Object;
.source "SDKDownloadClient.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;,
        Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;
    }
.end annotation


# instance fields
.field private adWebView:Landroid/webkit/WebView;

.field private appMarketValidation:Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;

.field private callBackReceiver:Landroid/support/v4/os/ResultReceiver;

.field private installStatusCheck:Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;

.field private pkgName:Ljava/lang/String;

.field private sendingReceiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/vungle/warren/SDKDownloadClient$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/SDKDownloadClient$1;-><init>(Lcom/vungle/warren/SDKDownloadClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/vungle/warren/SDKDownloadClient;->callBackReceiver:Landroid/support/v4/os/ResultReceiver;

    .line 46
    iput-object p1, p0, Lcom/vungle/warren/SDKDownloadClient;->pkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/SDKDownloadClient;)Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/vungle/warren/SDKDownloadClient;->installStatusCheck:Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/SDKDownloadClient;)Landroid/webkit/WebView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/vungle/warren/SDKDownloadClient;->adWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/SDKDownloadClient;)Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/vungle/warren/SDKDownloadClient;->appMarketValidation:Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;

    return-object p0
.end method

.method private requestDetailOpen()V
    .locals 3

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PACKAGE_NAME"

    .line 161
    iget-object v2, p0, Lcom/vungle/warren/SDKDownloadClient;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public cancelDownloadRequest()V
    .locals 3

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PACKAGE_NAME"

    .line 74
    iget-object v2, p0, Lcom/vungle/warren/SDKDownloadClient;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/vungle/warren/SDKDownloadClient;->adWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public getCallBackReceiver()Landroid/support/v4/os/ResultReceiver;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/vungle/warren/SDKDownloadClient;->callBackReceiver:Landroid/support/v4/os/ResultReceiver;

    return-object v0
.end method

.method public installStatusRequest()V
    .locals 3

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PACKAGE_NAME"

    .line 81
    iget-object v2, p0, Lcom/vungle/warren/SDKDownloadClient;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendADDisplayingNotify(ZLcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;)V
    .locals 3

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PACKAGE_NAME"

    .line 147
    iget-object v2, p0, Lcom/vungle/warren/SDKDownloadClient;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ADTYPE"

    .line 148
    invoke-virtual {p2}, Lcom/vungle/warren/DirectDownloadAdapter$CONTRACT_TYPE;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    if-eqz p1, :cond_0

    const/16 p1, 0x47

    goto :goto_0

    :cond_0
    const/16 p1, 0x48

    :goto_0
    invoke-virtual {p2, p1, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendDownloadRequest()V
    .locals 3

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PACKAGE_NAME"

    .line 60
    iget-object v2, p0, Lcom/vungle/warren/SDKDownloadClient;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendOpenPackageRequest()V
    .locals 3

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PACKAGE_NAME"

    .line 67
    iget-object v2, p0, Lcom/vungle/warren/SDKDownloadClient;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    const/16 v2, 0x33

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected sendValidation(Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PACKAGE_NAME"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    const/16 v1, 0x1f

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setAdWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/vungle/warren/SDKDownloadClient;->adWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public setAppMarketValidation(Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/vungle/warren/SDKDownloadClient;->appMarketValidation:Lcom/vungle/warren/SDKDownloadClient$ValidationCheck;

    return-void
.end method

.method public setInstallStatusCheck(Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/vungle/warren/SDKDownloadClient;->installStatusCheck:Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;

    return-void
.end method

.method public setSendingReceiver(Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/vungle/warren/SDKDownloadClient;->sendingReceiver:Landroid/support/v4/os/ResultReceiver;

    return-void
.end method
