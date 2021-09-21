.class Lcom/applovin/impl/sdk/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/d/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/j$2;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/j$a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$2;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->c(Lcom/applovin/impl/sdk/j;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
