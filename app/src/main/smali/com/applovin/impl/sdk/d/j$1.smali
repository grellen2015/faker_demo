.class Lcom/applovin/impl/sdk/d/j$1;
.super Lcom/applovin/impl/sdk/d/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/d/x<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/sdk/d/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/j;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    iput-object p4, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/d/x;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/i;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dispatch postback. Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/j$1;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully dispatched postback to URL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/j$1;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->eU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_3

    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aD:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating settings from: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/j$1;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/i;

    sget-object v0, Lcom/applovin/impl/sdk/b/c;->aD:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_0
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating settings from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/j;->a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/d/j$1;->a(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j$1;->b:Lcom/applovin/impl/sdk/i;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/j$1;->c:Lcom/applovin/impl/sdk/d/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/j;->b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/j$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
