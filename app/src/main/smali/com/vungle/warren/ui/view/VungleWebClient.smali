.class public Lcom/vungle/warren/ui/view/VungleWebClient;
.super Landroid/webkit/WebViewClient;
.source "VungleWebClient.java"

# interfaces
.implements Lcom/vungle/warren/ui/view/WebViewAPI;


# static fields
.field public static final TAG:Ljava/lang/String; = "VungleWebClient"


# instance fields
.field private MRAIDDelegate:Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private collectConsent:Z

.field private directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

.field private errorListener:Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;

.field private gdprAccept:Ljava/lang/String;

.field private gdprBody:Ljava/lang/String;

.field private gdprDeny:Ljava/lang/String;

.field private gdprTitle:Ljava/lang/String;

.field private isViewable:Ljava/lang/Boolean;

.field private loadedWebView:Landroid/webkit/WebView;

.field private placement:Lcom/vungle/warren/model/Placement;

.field private ready:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->ready:Z

    .line 69
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 70
    iput-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->placement:Lcom/vungle/warren/model/Placement;

    return-void
.end method


# virtual methods
.method public notifyPropertiesChange(Z)V
    .locals 7

    .line 186
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 188
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 190
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "width"

    .line 191
    iget-object v3, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "height"

    .line 192
    iget-object v3, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 194
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "x"

    const/4 v4, 0x0

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v3, "y"

    .line 196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v3, "width"

    .line 197
    iget-object v5, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v3, "height"

    .line 198
    iget-object v5, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 200
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v5, "sms"

    .line 201
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "tel"

    .line 202
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "calendar"

    .line 203
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "storePicture"

    .line 204
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "inlineVideo"

    .line 205
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "maxSize"

    .line 207
    invoke-virtual {v0, v5, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v5, "screenSize"

    .line 208
    invoke-virtual {v0, v5, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "defaultPosition"

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "currentPosition"

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "supports"

    .line 211
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "placementType"

    .line 212
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->isViewable:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "isViewable"

    .line 214
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->isViewable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const-string v1, "os"

    const-string v2, "android"

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osVersion"

    .line 217
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "incentivized"

    .line 218
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "enableBackImmediately"

    .line 219
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v3, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "version"

    const-string v2, "1.0"

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-boolean v1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->collectConsent:Z

    if-eqz v1, :cond_2

    const-string v1, "consentRequired"

    .line 224
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "consentTitleText"

    .line 225
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consentBodyText"

    .line 226
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consentAcceptButtonText"

    .line 227
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprAccept:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consentDenyButtonText"

    .line 228
    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprDeny:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "consentRequired"

    .line 230
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 233
    :goto_1
    sget-object v1, Lcom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadJsjavascript:window.vungle.mraidBridge.notifyPropertiesChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.vungle.mraidBridge.notifyPropertiesChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 175
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown Client Type!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :pswitch_0
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    .line 171
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->loadedWebView:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleWebClient;->notifyPropertiesChange(Z)V

    goto :goto_0

    :pswitch_1
    const-string p2, "javascript:function actionClicked(action){Android.performAction(action);};"

    .line 167
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    .line 267
    sget-object p1, Lcom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error desc "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object p1, Lcom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error for URL "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->errorListener:Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;

    if-eqz p2, :cond_0

    .line 273
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->errorListener:Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;->onReceivedError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 281
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 282
    sget-object p1, Lcom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error desc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object p1, Lcom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error for URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->errorListener:Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;

    if-eqz p2, :cond_0

    .line 288
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->errorListener:Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;->onReceivedError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 0

    .line 247
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->isViewable:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 248
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleWebClient;->notifyPropertiesChange(Z)V

    return-void
.end method

.method public setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    iput-boolean p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->collectConsent:Z

    .line 90
    iput-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprTitle:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprBody:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprAccept:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->gdprDeny:Ljava/lang/String;

    return-void
.end method

.method public setDownloadAdapter(Lcom/vungle/warren/DirectDownloadAdapter;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    return-void
.end method

.method public setErrorListener(Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->errorListener:Lcom/vungle/warren/ui/view/WebViewAPI$WebClientErrorListener;

    return-void
.end method

.method public setMRAIDDelegate(Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 109
    sget-object v0, Lcom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    sget-object p1, Lcom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    const-string p2, "Invalid URL "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 114
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 115
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mraid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "propertiesChangeCompleted"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->ready:Z

    if-nez v1, :cond_2

    .line 120
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->createMRAIDArgs()Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 121
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {v0}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/ui/view/VungleWebClient$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/vungle/warren/ui/view/VungleWebClient$1;-><init>(Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/google/gson/JsonObject;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/vungle/warren/SDKDownloadClient;->setInstallStatusCheck(Lcom/vungle/warren/SDKDownloadClient$InstallStatusCheck;)V

    .line 133
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->directDownloadAdapter:Lcom/vungle/warren/DirectDownloadAdapter;

    invoke-virtual {p1}, Lcom/vungle/warren/DirectDownloadAdapter;->getSdkDownloadClient()Lcom/vungle/warren/SDKDownloadClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/SDKDownloadClient;->installStatusRequest()V

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.vungle.mraidBridge.notifyReadyEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 138
    :goto_0
    iput-boolean v2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->ready:Z

    goto :goto_2

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    if-eqz v1, :cond_4

    .line 143
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 144
    invoke-virtual {p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_3
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleWebClient;->MRAIDDelegate:Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;

    invoke-interface {p2, v0, v1}, Lcom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;->processCommand(Ljava/lang/String;Lcom/google/gson/JsonObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "javascript:window.vungle.mraidBridge.notifyCommandComplete()"

    .line 148
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v2

    :cond_5
    return v1
.end method
