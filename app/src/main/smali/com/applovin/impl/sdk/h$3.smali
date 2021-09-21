.class Lcom/applovin/impl/sdk/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/h;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/applovin/impl/sdk/h;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/h;J)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/h$3;->b:Lcom/applovin/impl/sdk/h;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/h$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$3;->b:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->c(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "ConsentDialogManager"

    const-string v2, "Scheduling repeating consent alert"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$3;->b:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->d(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/applovin/impl/sdk/h$3;->a:J

    iget-object v3, p0, Lcom/applovin/impl/sdk/h$3;->b:Lcom/applovin/impl/sdk/h;

    invoke-static {v3}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/i;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/h$3;->b:Lcom/applovin/impl/sdk/h;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/g;->a(JLcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/g$a;)V

    return-void
.end method
