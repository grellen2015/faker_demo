.class Lcom/chartboost/sdk/impl/v$a$1;
.super Lcom/chartboost/sdk/impl/az;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v$a;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v;

.field final synthetic b:Lcom/chartboost/sdk/impl/v$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/v$a$1;->a:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/az;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 140
    iget-object p1, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/Model/c;

    iget p1, p1, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/v$a;->k:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/w;->a(Z)V

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget p1, p1, Lcom/chartboost/sdk/impl/v;->r:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/v$a;->c(Z)V

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/v$a$1;->b:Lcom/chartboost/sdk/impl/v$a;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/v$a;->b(Z)V

    return-void
.end method
