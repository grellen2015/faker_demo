.class Lcom/applovin/impl/adview/e;
.super Landroid/webkit/WebViewRenderProcessClient;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/i;

    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 0

    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 3

    instance-of p2, p1, Lcom/applovin/impl/adview/c;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/applovin/impl/adview/c;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    instance-of p2, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->X()Lcom/applovin/impl/sdk/c/c;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->F:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/adview/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    const-string v0, "AdWebViewRenderProcessClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView render process unresponsive for ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
