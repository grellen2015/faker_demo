.class Lcom/chartboost/sdk/impl/ab$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ab;->e()V
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

    .line 398
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ab$5;->a:Lcom/chartboost/sdk/impl/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$5;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/av;->setVisibility(I)V

    return-void
.end method
