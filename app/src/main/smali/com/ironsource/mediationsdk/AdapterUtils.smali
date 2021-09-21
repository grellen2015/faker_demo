.class public Lcom/ironsource/mediationsdk/AdapterUtils;
.super Ljava/lang/Object;
.source "AdapterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPixels(Landroid/app/Activity;I)I
    .locals 1

    int-to-float p1, p1

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static isLargeScreen(Landroid/app/Activity;)Z
    .locals 2

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 11
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    .line 12
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, p0

    const/high16 p0, 0x44340000    # 720.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/high16 p0, 0x44360000    # 728.0f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
