.class public Lcom/applovin/impl/mediation/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Lcom/applovin/impl/mediation/c$a;

.field private d:Lcom/applovin/impl/sdk/utils/d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/mediation/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/c;->b:Lcom/applovin/impl/sdk/o;

    iput-object p2, p0, Lcom/applovin/impl/mediation/c;->c:Lcom/applovin/impl/mediation/c$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c;)Lcom/applovin/impl/sdk/o;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/mediation/c;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/c;)Lcom/applovin/impl/mediation/c$a;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/mediation/c;->c:Lcom/applovin/impl/mediation/c$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "AdHiddenCallbackTimeoutManager"

    const-string v2, "Cancelling timeout"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c;->d:Lcom/applovin/impl/sdk/utils/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c;->d:Lcom/applovin/impl/sdk/utils/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/c;->d:Lcom/applovin/impl/sdk/utils/d;

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/b/c;J)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/c;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "AdHiddenCallbackTimeoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c;->a:Lcom/applovin/impl/sdk/i;

    new-instance v1, Lcom/applovin/impl/mediation/c$1;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/mediation/c$1;-><init>(Lcom/applovin/impl/mediation/c;Lcom/applovin/impl/mediation/b/c;)V

    invoke-static {p2, p3, v0, v1}, Lcom/applovin/impl/sdk/utils/d;->a(JLcom/applovin/impl/sdk/i;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/d;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/c;->d:Lcom/applovin/impl/sdk/utils/d;

    return-void
.end method
