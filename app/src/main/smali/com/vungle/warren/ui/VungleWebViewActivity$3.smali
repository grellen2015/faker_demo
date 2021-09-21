.class Lcom/vungle/warren/ui/VungleWebViewActivity$3;
.super Ljava/lang/Object;
.source "VungleWebViewActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/VungleWebViewActivity;->configWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/VungleWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/VungleWebViewActivity;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/vungle/warren/ui/VungleWebViewActivity$3;->this$0:Lcom/vungle/warren/ui/VungleWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 159
    invoke-static {p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->isApkUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 160
    iget-object p2, p0, Lcom/vungle/warren/ui/VungleWebViewActivity$3;->this$0:Lcom/vungle/warren/ui/VungleWebViewActivity;

    const/4 p3, 0x1

    invoke-static {p3}, Lcom/vungle/warren/locale/LocaleString;->getLocaleText(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-static {p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->download(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleWebViewActivity$3;->this$0:Lcom/vungle/warren/ui/VungleWebViewActivity;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/VungleWebViewActivity;->finish()V

    goto :goto_0

    .line 165
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleWebViewActivity$3;->this$0:Lcom/vungle/warren/ui/VungleWebViewActivity;

    invoke-virtual {p1, p2}, Lcom/vungle/warren/ui/VungleWebViewActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
