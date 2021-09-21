.class Lcom/applovin/impl/adview/k;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/applovin/impl/adview/j;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/impl/sdk/i;

.field private final c:Lcom/applovin/impl/sdk/o;

.field private final d:Lcom/applovin/impl/adview/c;

.field private final e:Lcom/applovin/impl/sdk/ad/a;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/applovin/impl/adview/h;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/adview/c;Landroid/app/Activity;Lcom/applovin/impl/sdk/i;)V
    .locals 1

    const v0, 0x1030010

    invoke-direct {p0, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    iput-object p4, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object p4

    iput-object p4, p0, Lcom/applovin/impl/adview/k;->c:Lcom/applovin/impl/sdk/o;

    iput-object p3, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/applovin/impl/adview/k;->d:Lcom/applovin/impl/adview/c;

    iput-object p1, p0, Lcom/applovin/impl/adview/k;->e:Lcom/applovin/impl/sdk/ad/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/k;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/k;->setCancelable(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No activity specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No main view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/c;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/adview/k;->d:Lcom/applovin/impl/adview/c;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/adview/h$a;)V
    .locals 9

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/adview/k;->c:Lcom/applovin/impl/sdk/o;

    const-string v0, "ExpandedAdDialog"

    const-string v1, "Attempting to create duplicate close button"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/adview/h;->a(Lcom/applovin/impl/sdk/i;Landroid/content/Context;Lcom/applovin/impl/adview/h$a;)Lcom/applovin/impl/adview/h;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    iget-object p1, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/h;->setVisibility(I)V

    iget-object p1, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    new-instance v0, Lcom/applovin/impl/adview/k$4;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/k$4;-><init>(Lcom/applovin/impl/adview/k;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/h;->setClickable(Z)V

    iget-object p1, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->cr:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/k;->a(I)I

    move-result p1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v4, Lcom/applovin/impl/sdk/b/c;->cu:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0x9

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_0

    :cond_1
    const/16 v3, 0xb

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    invoke-virtual {v3, p1}, Lcom/applovin/impl/adview/h;->a(I)V

    iget-object v3, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v6, Lcom/applovin/impl/sdk/b/c;->ct:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v3, v6}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/k;->a(I)I

    move-result v3

    iget-object v6, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v7, Lcom/applovin/impl/sdk/b/c;->cs:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/applovin/impl/adview/k;->a(I)I

    move-result v6

    invoke-virtual {v1, v6, v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    invoke-virtual {v7, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/h;->bringToFront()V

    iget-object v1, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v7, Lcom/applovin/impl/sdk/b/c;->cv:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v7}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/adview/k;->a(I)I

    move-result v1

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr p1, v1

    invoke-direct {v8, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->cu:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v4, 0x9

    :cond_2
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/k;->a(I)I

    move-result v1

    sub-int v1, v6, v1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/k;->a(I)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/k;->a(I)I

    move-result p1

    sub-int/2addr v6, p1

    invoke-virtual {v8, v1, v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance p1, Lcom/applovin/impl/adview/k$5;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/k$5;-><init>(Lcom/applovin/impl/adview/k;)V

    invoke-virtual {v7, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/k;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/applovin/impl/adview/k;->d:Lcom/applovin/impl/adview/c;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/adview/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/k;->d:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->e:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->e:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->k()Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/k;->a(Lcom/applovin/impl/adview/h$a;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/k;->d()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/k;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/k;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->d:Lcom/applovin/impl/adview/c;

    const-string v1, "javascript:al_onCloseTapped();"

    new-instance v2, Lcom/applovin/impl/adview/k$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/k$1;-><init>(Lcom/applovin/impl/adview/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/k;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/k$6;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/k$6;-><init>(Lcom/applovin/impl/adview/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/adview/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/k;->c()V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/h;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/adview/k;->g:Lcom/applovin/impl/adview/h;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/sdk/i;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/adview/k;->b:Lcom/applovin/impl/sdk/i;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/sdk/o;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/adview/k;->c:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/ad/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->e:Lcom/applovin/impl/sdk/ad/a;

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->d:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->b()Lcom/applovin/impl/sdk/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/d;->e()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/k$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/k$3;-><init>(Lcom/applovin/impl/adview/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/k;->d:Lcom/applovin/impl/adview/c;

    const-string v1, "javascript:al_onBackPressed();"

    new-instance v2, Lcom/applovin/impl/adview/k$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/k$2;-><init>(Lcom/applovin/impl/adview/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/k;->b()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/applovin/impl/adview/k;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/applovin/impl/adview/k;->e:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/k;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "ExpandedAdDialog"

    const-string v2, "Unable to turn on hardware acceleration - window is null"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/k;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "ExpandedAdDialog"

    const-string v3, "Setting window flags failed."

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
