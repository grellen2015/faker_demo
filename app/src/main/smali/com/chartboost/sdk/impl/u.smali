.class public Lcom/chartboost/sdk/impl/u;
.super Lcom/chartboost/sdk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/u$a;
    }
.end annotation


# instance fields
.field j:Lcom/chartboost/sdk/Libraries/h;

.field k:Lcom/chartboost/sdk/Libraries/h;

.field l:Lcom/chartboost/sdk/Libraries/h;

.field m:Lcom/chartboost/sdk/Libraries/h;

.field n:Lcom/chartboost/sdk/Libraries/h;

.field o:Lcom/chartboost/sdk/Libraries/h;

.field protected p:F

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/e;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    const-string p1, "ImageViewProtocol"

    .line 32
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->q:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    iput p1, p0, Lcom/chartboost/sdk/impl/u;->p:F

    .line 226
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 227
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 228
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 229
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 230
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 231
    new-instance p1, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V
    .locals 2

    if-eqz p2, :cond_0

    .line 279
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v1

    div-float/2addr v0, v1

    mul-float v0, v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result p2

    div-float/2addr v0, p2

    mul-float v0, v0, p3

    float-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    .line 241
    invoke-super {p0, p1}, Lcom/chartboost/sdk/e;->a(Lorg/json/JSONObject;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v1, "frame-portrait"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v1, "close-portrait"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 245
    :cond_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->h:Z

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v1, "frame-landscape"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v1, "close-landscape"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 247
    :cond_3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->i:Z

    .line 249
    :cond_4
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v1, "ad-portrait"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 250
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->h:Z

    .line 251
    :cond_5
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v1, "ad-landscape"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 252
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->i:Z

    .line 254
    :cond_6
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "frame-landscape"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "frame-portrait"

    .line 255
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "close-landscape"

    .line 256
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "close-portrait"

    .line 257
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "ad-landscape"

    .line 258
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "ad-portrait"

    .line 259
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_0
    const-string p1, "ImageViewProtocol"

    const-string v1, "Error while downloading the assets"

    .line 260
    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return v0
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "offset"

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    new-instance v0, Landroid/graphics/Point;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 271
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
    .locals 1

    .line 236
    new-instance v0, Lcom/chartboost/sdk/impl/u$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/u$a;-><init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/chartboost/sdk/e;->d()V

    .line 288
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 295
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 296
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 297
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 298
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 299
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    return-void
.end method
