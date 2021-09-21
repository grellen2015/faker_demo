.class Lcom/applovin/impl/mediation/i$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/i;->a(Lcom/applovin/impl/mediation/b/a;Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/applovin/impl/mediation/i$10;->c:Lcom/applovin/impl/mediation/i;

    iput-object p2, p0, Lcom/applovin/impl/mediation/i$10;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/applovin/impl/mediation/i$10;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/i$10;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/i$10;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v1}, Lcom/applovin/impl/mediation/i;->e(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/sdk/o;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start displaying ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/i$10;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/i$10;->c:Lcom/applovin/impl/mediation/i;

    invoke-static {v0}, Lcom/applovin/impl/mediation/i;->d(Lcom/applovin/impl/mediation/i;)Lcom/applovin/impl/mediation/i$a;

    move-result-object v0

    const-string v1, "ad_render"

    const/16 v2, -0x1450

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/i$a;->b(Lcom/applovin/impl/mediation/i$a;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
