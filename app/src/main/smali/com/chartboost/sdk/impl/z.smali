.class public abstract Lcom/chartboost/sdk/impl/z;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/chartboost/sdk/impl/v;

.field private b:Lcom/chartboost/sdk/impl/aa;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    const/4 p2, 0x1

    .line 53
    iput p2, p0, Lcom/chartboost/sdk/impl/z;->c:I

    .line 54
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/z;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x11

    .line 94
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/z;->setGravity(I)V

    .line 96
    new-instance v0, Lcom/chartboost/sdk/impl/aa;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    .line 97
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/aa;->a(I)V

    .line 98
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/aa;->setBackgroundColor(I)V

    .line 99
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->a()Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(ZJ)V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iput-boolean p1, v0, Lcom/chartboost/sdk/impl/v;->C:Z

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    .line 116
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/z$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/z$1;-><init>(Lcom/chartboost/sdk/impl/z;Z)V

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/z;->setVisibility(I)V

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(FLandroid/content/Context;)F

    move-result v1

    const/4 v2, 0x0

    .line 132
    iget v3, p0, Lcom/chartboost/sdk/impl/z;->c:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_6

    .line 143
    :pswitch_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-direct {v2, v3, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_6

    .line 140
    :pswitch_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_6

    neg-float v3, v1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    neg-float v1, v1

    :goto_2
    invoke-direct {v2, v3, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_6

    .line 137
    :pswitch_2
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :cond_9
    invoke-direct {v2, v4, v4, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_6

    .line 134
    :pswitch_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_a

    neg-float v3, v1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-eqz p1, :cond_b

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    neg-float v1, v1

    :goto_5
    invoke-direct {v2, v4, v4, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 148
    :goto_6
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    xor-int/lit8 p1, p1, 0x1

    .line 150
    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/z;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    monitor-enter p1

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/v;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p2

    .line 154
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public a(I)V
    .locals 3

    .line 58
    iput p1, p0, Lcom/chartboost/sdk/impl/z;->c:I

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/z;->setClickable(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->b()I

    move-result p1

    .line 65
    iget v0, p0, Lcom/chartboost/sdk/impl/z;->c:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :pswitch_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    goto :goto_0

    .line 77
    :pswitch_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x9

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    goto :goto_0

    .line 72
    :pswitch_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xc

    .line 73
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    goto :goto_0

    .line 67
    :pswitch_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object p1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    .line 88
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/z;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/z;->a(ZJ)V

    return-void
.end method

.method protected abstract b()I
.end method
