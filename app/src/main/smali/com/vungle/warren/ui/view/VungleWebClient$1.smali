.class Lcom/vungle/warren/ui/view/VungleWebClient$1;
.super Ljava/lang/Object;
.source "VungleWebClient.java"

# interfaces
.implements Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleWebClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/VungleWebClient;

.field final synthetic val$mraidArgs:Lcom/google/gson/JsonObject;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/google/gson/JsonObject;Landroid/webkit/WebView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->this$0:Lcom/vungle/warren/ui/view/VungleWebClient;

    iput-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$mraidArgs:Lcom/google/gson/JsonObject;

    iput-object p3, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAppInstalled(ZZ)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$mraidArgs:Lcom/google/gson/JsonObject;

    const-string v1, "isDirectDownload"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$mraidArgs:Lcom/google/gson/JsonObject;

    const-string v1, "isDisplayIAP"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$mraidArgs:Lcom/google/gson/JsonObject;

    const-string v0, "isInstalled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$mraidArgs:Lcom/google/gson/JsonObject;

    const-string p2, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$mraidArgs:Lcom/google/gson/JsonObject;

    const-string p2, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$view:Landroid/webkit/WebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:window.vungle.mraidBridge.notifyReadyEvent("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleWebClient$1;->val$mraidArgs:Lcom/google/gson/JsonObject;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
