.class Lcom/applovin/impl/sdk/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/n;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/applovin/impl/sdk/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/n;J)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/n$2;->b:Lcom/applovin/impl/sdk/n;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/n$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$2;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->d(Lcom/applovin/impl/sdk/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/n$2;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v2}, Lcom/applovin/impl/sdk/n;->e(Lcom/applovin/impl/sdk/n;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/applovin/impl/sdk/n$2;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$2;->b:Lcom/applovin/impl/sdk/n;

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->b(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "FullScreenAdTracker"

    const-string v2, "Resetting \"display\" state..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$2;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->d()V

    :cond_1
    return-void
.end method
