.class public Lcom/hippogames/simpleandroidnotifications/AppIconHelper;
.super Ljava/lang/Object;
.source "AppIconHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAppIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 20
    invoke-static {p0}, Lcom/hippogames/simpleandroidnotifications/AppIconHelper;->MergeAppIcon26(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static MergeAppIcon26(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 28
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    .line 34
    check-cast p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v1, 0x2

    .line 37
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    .line 41
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 46
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v2, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 51
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
