.class Lcom/chartboost/sdk/impl/bf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bf;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bf$b;

.field final synthetic b:Lcom/chartboost/sdk/impl/bf;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bf;Lcom/chartboost/sdk/impl/bf$b;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$1;->b:Lcom/chartboost/sdk/impl/bf;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bf$b;->c:Lcom/chartboost/sdk/impl/be;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bf$b;->c:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/be;->onResume()V

    :cond_0
    return-void
.end method
