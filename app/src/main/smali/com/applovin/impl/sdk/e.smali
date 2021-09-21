.class public Lcom/applovin/impl/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorPublisher;
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private final b:Lcom/applovin/communicator/AppLovinCommunicator;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/communicator/AppLovinCommunicator;

    const-string v0, "HSrCHRtOan6wp2kwOIGJC1RDtuSrF2mWVbio2aBcMHX9KF3iTJ1lLSzCKP1ZSo5yNolPNw1kCTtWpxELFF4ah1"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {v0, p1}, Lcom/applovin/communicator/AppLovinCommunicator;->a(Lcom/applovin/impl/sdk/i;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/communicator/AppLovinCommunicator;

    sget-object v0, Lcom/applovin/impl/communicator/AppLovinSdkTopic;->ALL_TOPICS:Ljava/util/List;

    invoke-virtual {p1, p0, v0}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const-string v0, "log"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "CommunicatorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for topic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->a:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, p2, p0, v0}, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;->create(Landroid/os/Bundle;Ljava/lang/String;Lcom/applovin/communicator/AppLovinCommunicatorPublisher;Z)Lcom/applovin/communicator/AppLovinCommunicatorMessage;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {p2}, Lcom/applovin/communicator/AppLovinCommunicator;->getMessagingService()Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;->publish(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/b/a;Ljava/lang/String;)V
    .locals 3

    instance-of v0, p1, Lcom/applovin/impl/mediation/b/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/b/c;->j()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "id"

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "network_name"

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "max_ad_unit_id"

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "third_party_ad_placement_id"

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ad_format"

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_fallback_ad"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "max_ad_events"

    invoke-direct {p0, v1, p1}, Lcom/applovin/impl/sdk/e;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 3

    const-string v0, "communicator_settings"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "safedk_settings"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/i;->c(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sdk_key"

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "applovin_random_token"

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_type"

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "tablet"

    goto :goto_0

    :cond_0
    const-string v2, "phone"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "init_success"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "settings"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "debug_mode"

    iget-object p2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "safedk_init"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "applovin_sdk"

    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 5

    const-string v0, "send_http_request"

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "query_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "post_body"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "headers"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/i;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "sdk_key"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sdk_key"

    iget-object v4, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v3, Lcom/applovin/impl/sdk/network/f$a;

    invoke-direct {v3}, Lcom/applovin/impl/sdk/network/f$a;-><init>()V

    const-string v4, "url"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/f$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    const-string v4, "backup_url"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/f$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->N()Lcom/applovin/impl/sdk/network/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V

    :cond_1
    return-void
.end method
