.class Lcom/chartboost/sdk/impl/ab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ab;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ab;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->setEnabled(Z)V

    :cond_2
    return-void
.end method
