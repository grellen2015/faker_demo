.class Lcom/applovin/impl/sdk/network/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/network/f;

.field final synthetic b:Lcom/applovin/sdk/AppLovinPostbackListener;

.field final synthetic c:Lcom/applovin/impl/sdk/network/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$1;->c:Lcom/applovin/impl/sdk/network/e;

    iput-object p2, p0, Lcom/applovin/impl/sdk/network/e$1;->a:Lcom/applovin/impl/sdk/network/f;

    iput-object p3, p0, Lcom/applovin/impl/sdk/network/e$1;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$1;->c:Lcom/applovin/impl/sdk/network/e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/e;)Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to submit postback with errorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Will retry later...  Postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e$1;->a:Lcom/applovin/impl/sdk/network/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$1;->c:Lcom/applovin/impl/sdk/network/e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e$1;->a:Lcom/applovin/impl/sdk/network/f;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/network/e;->b(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$1;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;I)V

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$1;->c:Lcom/applovin/impl/sdk/network/e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e$1;->a:Lcom/applovin/impl/sdk/network/f;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$1;->c:Lcom/applovin/impl/sdk/network/e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/e;)Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully submitted postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e$1;->a:Lcom/applovin/impl/sdk/network/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$1;->c:Lcom/applovin/impl/sdk/network/e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/e;->b(Lcom/applovin/impl/sdk/network/e;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$1;->b:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V

    return-void
.end method
