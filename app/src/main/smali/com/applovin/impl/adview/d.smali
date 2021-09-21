.class Lcom/applovin/impl/adview/d;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/sdk/i;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    iput-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a()V

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->expandAd(Landroid/graphics/PointF;)V

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/adview/c;)V
    .locals 5

    :try_start_0
    const-string v0, "n"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "load_type"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "external"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading new page externally: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/applovin/impl/adview/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/impl/sdk/i;)Z

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getAdViewEventListener()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/sdk/AppLovinAd;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/j;->c(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    goto :goto_1

    :cond_0
    const-string v2, "internal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "AdWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading new page in WebView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V

    const-string v0, "bg_color"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/c;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AdWebView"

    const-string v0, "Could not find load type in original uri"

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AdWebView"

    const-string v0, "Could not find url to load from query in original uri"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AdWebView"

    const-string v0, "Failed to load new page from query in original uri"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Lcom/applovin/impl/a/a;Lcom/applovin/impl/adview/c;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/impl/a/a;->j()Lcom/applovin/impl/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/a/b;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getSdk()Lcom/applovin/impl/sdk/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/a/i;->a(Ljava/util/Set;Lcom/applovin/impl/sdk/i;)V

    invoke-virtual {p1}, Lcom/applovin/impl/a/b;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/adview/c;)V
    .locals 1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->b()Lcom/applovin/impl/sdk/c/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/d;->b()V

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->getAndClearLastClickLocation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p2, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v0, "AdWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 8

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing click on ad URL \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    instance-of v1, p1, Lcom/applovin/impl/adview/c;

    if-eqz v1, :cond_10

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/applovin/impl/adview/c;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v6}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v6

    const-string v7, "applovin"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "com.applovin.sdk"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string p3, "/adservice/next_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, v2}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;)V

    goto/16 :goto_3

    :cond_0
    const-string p3, "/adservice/close_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/adview/d;->a()V

    goto/16 :goto_3

    :cond_1
    const-string p3, "/adservice/expand_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/c;->getAndClearLastClickLocation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/d;->a(Landroid/graphics/PointF;)V

    goto/16 :goto_3

    :cond_2
    const-string p3, "/adservice/contract_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/applovin/impl/adview/d;->b()V

    goto/16 :goto_3

    :cond_3
    sget-object p3, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->URI_NO_OP:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    :cond_4
    sget-object p3, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->URI_LOAD_URL:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/adview/d;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/c;)V

    goto/16 :goto_3

    :cond_5
    sget-object p3, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->URI_TRACK_CLICK_IMMEDIATELY:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    instance-of p1, v6, Lcom/applovin/impl/a/a;

    if-eqz p1, :cond_6

    check-cast v6, Lcom/applovin/impl/a/a;

    :goto_0
    invoke-direct {p0, v6, v2}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/a/a;Lcom/applovin/impl/adview/c;)V

    goto/16 :goto_3

    :cond_6
    sget-object p1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->URI_TRACK_CLICK_IMMEDIATELY:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V

    goto/16 :goto_3

    :cond_7
    if-eqz v5, :cond_8

    const-string p3, "/launch/"

    invoke-virtual {v5, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v0, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    iget-object p3, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Threw Exception Trying to Launch App for Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p3, "AdWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AdWebView"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_f

    instance-of p1, v6, Lcom/applovin/impl/sdk/ad/f;

    if-eqz p1, :cond_e

    move-object p1, v6

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/f;->at()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/f;->au()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AdWebView"

    const-string p3, "URL is not whitelisted - bypassing click"

    goto :goto_2

    :cond_c
    :goto_1
    instance-of p1, v6, Lcom/applovin/impl/a/a;

    if-eqz p1, :cond_d

    check-cast v6, Lcom/applovin/impl/a/a;

    invoke-virtual {v6}, Lcom/applovin/impl/a/a;->k()Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v2, v1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AdWebView"

    const-string p3, "Bypassing click for ad of invalid type"

    :goto_2
    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_10
    :goto_3
    return v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->contractAd()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v0, "AdWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->onAdHtmlLoaded(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received error with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with description \\\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\\' for URL: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    instance-of p3, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/i;->X()Lcom/applovin/impl/sdk/c/c;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {p3, p4}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    sget-object p4, Lcom/applovin/impl/sdk/c/b;->C:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p4, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    iget-object p3, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p4, "AdWebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for ad: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/applovin/impl/adview/d;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    instance-of v0, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->X()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->D:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received HTTP error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "for url: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and ad: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received SSL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    instance-of p3, p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/i;->X()Lcom/applovin/impl/sdk/c/c;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {p3, v0}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->E:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, v0, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_0
    iget-object p3, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string v0, "AdWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for ad: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->cb:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AdWebView"

    const-string v0, "No url found for request"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
