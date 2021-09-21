.class Lcom/applovin/impl/sdk/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/g;->a(JLcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/i;

.field final synthetic b:Lcom/applovin/impl/sdk/g$a;

.field final synthetic c:Lcom/applovin/impl/sdk/g;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/g;Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/g$1;->c:Lcom/applovin/impl/sdk/g;

    iput-object p2, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    iput-object p3, p0, Lcom/applovin/impl/sdk/g$1;->b:Lcom/applovin/impl/sdk/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$1;->c:Lcom/applovin/impl/sdk/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/g;)Lcom/applovin/impl/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "ConsentAlertManager"

    const-string v2, "Consent dialog already showing, skip showing of consent alert"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->aa()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/g$1$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/g$1$1;-><init>(Lcom/applovin/impl/sdk/g$1;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "ConsentAlertManager"

    const-string v2, "No parent Activity found - rescheduling consent alert..."

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "ConsentAlertManager"

    const-string v2, "No internet available - rescheduling consent alert..."

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/applovin/impl/sdk/g;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->aw:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/g$1;->c:Lcom/applovin/impl/sdk/g;

    iget-object v3, p0, Lcom/applovin/impl/sdk/g$1;->a:Lcom/applovin/impl/sdk/i;

    iget-object v4, p0, Lcom/applovin/impl/sdk/g$1;->b:Lcom/applovin/impl/sdk/g$a;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/applovin/impl/sdk/g;->a(JLcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/g$a;)V

    return-void
.end method
