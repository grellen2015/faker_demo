.class Lcom/chartboost/sdk/impl/az$a;
.super Lcom/chartboost/sdk/impl/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/chartboost/sdk/impl/az;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/az;Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az$a;->b:Lcom/chartboost/sdk/impl/az;

    .line 84
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az$a;->c:Z

    .line 86
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az$a;->c:Z

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az$a;->b:Lcom/chartboost/sdk/impl/az;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/az;->e:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 97
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/az$a;->c:Z

    if-nez p1, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x77000000

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->invalidate()V

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az$a;->c:Z

    goto :goto_2

    .line 106
    :cond_2
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/az$a;->c:Z

    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 111
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az$a;->invalidate()V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az$a;->c:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ay;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
