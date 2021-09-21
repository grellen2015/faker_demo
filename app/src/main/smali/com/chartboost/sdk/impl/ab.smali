.class public Lcom/chartboost/sdk/impl/ab;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/CharSequence;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field final b:Lcom/chartboost/sdk/impl/aa;

.field final c:Lcom/chartboost/sdk/impl/aa;

.field final d:Lcom/chartboost/sdk/impl/az;

.field final e:Landroid/widget/TextView;

.field final f:Lcom/chartboost/sdk/impl/x;

.field final g:Lcom/chartboost/sdk/impl/av;

.field final h:Lcom/chartboost/sdk/impl/v;

.field final i:Landroid/os/Handler;

.field final j:Ljava/lang/Runnable;

.field private l:Z

.field private m:Z

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00:00"

    .line 48
    sput-object v0, Lcom/chartboost/sdk/impl/ab;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .locals 12

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    .line 61
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    .line 281
    new-instance v1, Lcom/chartboost/sdk/impl/ab$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ab$2;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    .line 287
    new-instance v1, Lcom/chartboost/sdk/impl/ab$3;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ab$3;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    .line 347
    new-instance v1, Lcom/chartboost/sdk/impl/ab$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ab$4;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    .line 69
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    .line 70
    iget-object v1, p2, Lcom/chartboost/sdk/impl/v;->a:Landroid/os/Handler;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    .line 72
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/v;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v2

    .line 74
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 77
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v5

    .line 78
    new-instance v6, Lcom/chartboost/sdk/impl/av;

    invoke-direct {v6, p1}, Lcom/chartboost/sdk/impl/av;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/chartboost/sdk/impl/av;

    iput-object v6, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    .line 80
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    .line 81
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    iget-object v9, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {p0, v9, v6}, Lcom/chartboost/sdk/impl/ab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    if-eqz v1, :cond_0

    const-string v9, "video-click-button"

    .line 88
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/chartboost/sdk/impl/aa;

    invoke-direct {v1, p1}, Lcom/chartboost/sdk/impl/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/aa;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    .line 90
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v6}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 93
    new-instance v1, Lcom/chartboost/sdk/impl/ab$1;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/impl/ab$1;-><init>(Lcom/chartboost/sdk/impl/ab;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    .line 106
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v9}, Lcom/chartboost/sdk/impl/az;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    iget-object v1, p2, Lcom/chartboost/sdk/impl/v;->I:Lcom/chartboost/sdk/Libraries/h;

    const-string v9, "video-click-button"

    .line 110
    invoke-virtual {p2, v9}, Lcom/chartboost/sdk/impl/v;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v9

    .line 111
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    iget v7, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v11

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    iget v7, v9, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v9

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v7, 0x3f800000    # 1.0f

    .line 114
    invoke-virtual {p2, v10, v1, v7}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 115
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 118
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {p2, v1, v10}, Lcom/chartboost/sdk/impl/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    .line 120
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 121
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v7, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 124
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    .line 125
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    .line 129
    :goto_0
    new-instance p2, Lcom/chartboost/sdk/impl/aa;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/impl/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chartboost/sdk/impl/aa;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    .line 130
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {p2, v6}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 131
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42020000    # 32.5f

    mul-float v2, v2, v1

    .line 132
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 133
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v2, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/aa;->setGravity(I)V

    .line 136
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {p2, v4, v4, v4, v4}, Lcom/chartboost/sdk/impl/aa;->setPadding(IIII)V

    .line 138
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    .line 139
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/chartboost/sdk/impl/ab;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v0, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 146
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 147
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    .line 149
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2, v1}, Lcom/chartboost/sdk/impl/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance p2, Lcom/chartboost/sdk/impl/x;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/impl/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chartboost/sdk/impl/x;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    .line 154
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {p2, v6}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 155
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p2, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 157
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x6

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result p2

    invoke-virtual {p1, v6, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p2, 0x5

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p2, 0x7

    .line 164
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2, p1}, Lcom/chartboost/sdk/impl/ab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ab;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 317
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->c(Z)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/aa;->setBackgroundColor(I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/aa;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/av$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/av$a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/av$a;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/av$a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/ab;->a(ZZ)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->y:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 232
    :cond_1
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    .line 234
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    if-eqz p2, :cond_3

    const-wide/16 v0, 0x64

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0xc8

    .line 235
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p2, 0x1

    .line 237
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 238
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/aa;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/impl/az;->setEnabled(Z)V

    .line 244
    :cond_4
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean p2, p2, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz p2, :cond_5

    .line 245
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 246
    :cond_5
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 247
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/aa;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-boolean p2, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    if-eqz p2, :cond_6

    .line 250
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 252
    :cond_6
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public b()Lcom/chartboost/sdk/impl/av$a;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 259
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->setEnabled(Z)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/aa;->clearAnimation()V

    .line 269
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/aa;->clearAnimation()V

    .line 272
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v1, :cond_4

    .line 273
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 274
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    if-eqz v1, :cond_5

    .line 276
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/az;->setEnabled(Z)V

    .line 278
    :cond_5
    :goto_0
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    return-void
.end method

.method public c()Lcom/chartboost/sdk/impl/x;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->setBackgroundColor(I)V

    .line 301
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_1

    const/4 p1, 0x6

    .line 303
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0x8

    .line 304
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p1, 0x5

    .line 305
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p1, 0x7

    .line 306
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/av;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    const v0, 0x800013

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/aa;->setGravity(I)V

    .line 312
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/aa;->requestLayout()V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ab$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ab$5;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->a()V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/av$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->v:I

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->b()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->postInvalidate()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/av$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->v:I

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->b()V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/av;->setVisibility(I)V

    .line 431
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ab;->invalidate()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->c()I

    move-result v0

    iput v0, p1, Lcom/chartboost/sdk/impl/v;->v:I

    .line 202
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v$a;->e()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v;->v()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->c()I

    move-result v0

    iput v0, p1, Lcom/chartboost/sdk/impl/v;->w:I

    .line 209
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/v$a;->a(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->a()Lcom/chartboost/sdk/impl/av$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/av$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->a(Z)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/az;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/az;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ab;->b(Z)V

    :cond_1
    return-void
.end method
