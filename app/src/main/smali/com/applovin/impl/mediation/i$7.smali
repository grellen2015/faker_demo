.class Lcom/applovin/impl/mediation/i$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/i;->a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/applovin/impl/mediation/b/a;

.field final synthetic c:Lcom/applovin/impl/mediation/i;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/i;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    iput-object p2, p0, Lcom/applovin/impl/mediation/i$7;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/applovin/impl/mediation/i$7;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/i$7;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v1}, Lcom/applovin/impl/mediation/i;->e(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/o;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed start loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/i$7;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v0}, Lcom/applovin/impl/mediation/i;->d(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/i$a;

    move-result-object v0

    const-string v1, "loadAd"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/i$a;->a(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v0}, Lcom/applovin/impl/mediation/i;->f(Lcom/applovin/impl/mediation/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v0}, Lcom/applovin/impl/mediation/i;->a(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/b/e;->D()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v0}, Lcom/applovin/impl/mediation/i;->e(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/i$7;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " since it has 0 timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v0}, Lcom/applovin/impl/mediation/i;->d(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/i$a;

    move-result-object v0

    const-string v1, "loadAd"

    const/16 v2, -0x13ee

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/i$a;->a(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v2}, Lcom/applovin/impl/mediation/i;->e(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/o;

    move-result-object v2

    const-string v3, "MediationAdapterWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms. for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/impl/mediation/i$7;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v2}, Lcom/applovin/impl/mediation/i;->b(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/mediation/i$c;

    iget-object v4, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/applovin/impl/mediation/i$c;-><init>(Lcom/applovin/impl/mediation/i;Lcom/applovin/impl/mediation/i$1;)V

    sget-object v4, Lcom/applovin/impl/sdk/d/r$a;->k:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/i$7;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v0}, Lcom/applovin/impl/mediation/i;->e(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative timeout set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/i$7;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", not scheduling a timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
