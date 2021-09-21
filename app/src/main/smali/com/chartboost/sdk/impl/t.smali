.class public Lcom/chartboost/sdk/impl/t;
.super Lcom/chartboost/sdk/impl/z;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/chartboost/sdk/impl/ay;

.field private e:Lcom/chartboost/sdk/impl/az;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/z;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 8

    .line 38
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    .line 40
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 41
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/LinearLayout;

    .line 42
    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/t;->c:Landroid/widget/LinearLayout;

    .line 46
    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->c:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->c:Landroid/widget/LinearLayout;

    const v5, 0x800013

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    new-instance v2, Lcom/chartboost/sdk/impl/ay;

    invoke-direct {v2, v0}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/t;->d:Lcom/chartboost/sdk/impl/ay;

    .line 50
    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/chartboost/sdk/impl/ay;->setPadding(IIII)V

    .line 51
    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->d:Lcom/chartboost/sdk/impl/ay;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/v;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/ay;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 54
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/impl/t$1;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/t$1;-><init>(Lcom/chartboost/sdk/impl/t;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/t;->e:Lcom/chartboost/sdk/impl/az;

    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->e:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/chartboost/sdk/impl/az;->setPadding(IIII)V

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->e:Lcom/chartboost/sdk/impl/az;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/t;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v;->K:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 66
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    const v2, -0xe8eaeb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    const v6, 0x800003

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v0, v1, v1, v1, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->c:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->e:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/chartboost/sdk/impl/t;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method
