.class public Lcom/applovin/impl/mediation/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/d/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/applovin/impl/mediation/d/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AdColonyMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AmazonMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AmazonBiddingMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AppLovinMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.ChartboostMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.FacebookMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.GoogleMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.HyperMXMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.IMobileMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.InMobiMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.InneractiveMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.IronSourceMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.LeadboltMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MadvertiseMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MaioMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MintegralMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MoPubMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MyTargetMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.NendMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.OguryMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.SmaatoMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.TapjoyMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.TencentMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.UnityAdsMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.VerizonAdsMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.VungleMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.YandexMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/mediation/d/c$a;
    .locals 7

    sget-object v0, Lcom/applovin/impl/mediation/d/c;->b:Lcom/applovin/impl/mediation/d/c$a;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/applovin/impl/mediation/d/c;->b:Lcom/applovin/impl/mediation/d/c$a;

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/applovin/impl/mediation/d/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/applovin/impl/mediation/d/c;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "class"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk_version"

    invoke-interface {v4}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    invoke-interface {v4}, Lcom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/applovin/impl/mediation/d/c$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/d/c$a;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/applovin/impl/mediation/d/c$1;)V

    sput-object p0, Lcom/applovin/impl/mediation/d/c;->b:Lcom/applovin/impl/mediation/d/c$a;

    sget-object p0, Lcom/applovin/impl/mediation/d/c;->b:Lcom/applovin/impl/mediation/d/c$a;

    return-object p0
.end method

.method public static a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/sdk/d/r$a;
    .locals 1

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/applovin/impl/sdk/d/r$a;->o:Lcom/applovin/impl/sdk/d/r$a;

    return-object p0

    :cond_0
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/applovin/impl/sdk/d/r$a;->p:Lcom/applovin/impl/sdk/d/r$a;

    return-object p0

    :cond_1
    sget-object p0, Lcom/applovin/impl/sdk/d/r$a;->n:Lcom/applovin/impl/sdk/d/r$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Lcom/applovin/mediation/adapter/MaxAdapter;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p0

    const-string p1, "AppLovinSdk"

    const-string v0, "Failed to create adapter instance. No class name provided"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/applovin/sdk/AppLovinSdk;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->S()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapter/MaxAdapter;

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v2, "AppLovinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error: not an instance of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    const-string v2, "AppLovinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    return-object v1
.end method

.method public static b(Lcom/applovin/mediation/MaxAdFormat;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
