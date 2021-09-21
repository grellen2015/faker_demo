.class public abstract Lcom/chartboost/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/chartboost/sdk/c;

.field public c:Z

.field protected d:Lorg/json/JSONObject;

.field public final e:Lcom/chartboost/sdk/Model/c;

.field protected f:I

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:Z

.field private j:Z

.field private k:Lcom/chartboost/sdk/e$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/chartboost/sdk/e;->c:Z

    .line 202
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Lcom/chartboost/sdk/e;->h:Z

    iput-boolean v1, p0, Lcom/chartboost/sdk/e;->i:Z

    .line 207
    iput-object p2, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    .line 208
    iput-object p3, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/c;

    .line 209
    iput-object p1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 211
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/e;->f:I

    .line 212
    iput-boolean v0, p0, Lcom/chartboost/sdk/e;->j:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string v1, "#"

    .line 383
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 390
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 393
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 394
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#"

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 396
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 403
    :cond_3
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception v1

    const-string v2, "CBViewProtocol"

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/chartboost/sdk/e;->f:I

    return v0
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object p1, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    .line 376
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public a(ZLandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0, p1, p2, v0}, Lcom/chartboost/sdk/e;->a(ZLandroid/view/View;Z)V

    return-void
.end method

.method public a(ZLandroid/view/View;Z)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_3

    .line 333
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 336
    monitor-exit v1

    return-void

    .line 337
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    if-nez p3, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 341
    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 345
    :cond_5
    new-instance p3, Lcom/chartboost/sdk/e$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/chartboost/sdk/e$1;-><init>(Lcom/chartboost/sdk/e;ZLandroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 v1, 0x1

    const-wide/16 v0, 0x1f4

    .line 360
    iget-object v2, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    iget-object v2, v2, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/chartboost/sdk/impl/aw;->a(ZLandroid/view/View;J)V

    .line 362
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/chartboost/sdk/e;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "assets"

    .line 221
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    .line 222
    iget-object p1, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    .line 223
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    const-string p1, "CBViewProtocol"

    const-string v0, "Media got from the response is null or empty"

    .line 224
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
.end method

.method public b()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->i()V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Model/c;->a(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    iput-object v1, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 246
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    .line 249
    :cond_0
    iget-boolean v2, p0, Lcom/chartboost/sdk/e;->i:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/chartboost/sdk/e;->h:Z

    if-nez v2, :cond_1

    .line 250
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    if-nez v2, :cond_2

    .line 254
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e;->b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v2, :cond_4

    .line 256
    iget-object v2, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/e$a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 259
    :cond_3
    iput-object v1, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    .line 260
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    :cond_4
    return-object v1
.end method

.method public d()V
    .locals 4

    .line 272
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->f()V

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 276
    iget-object v3, p0, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Lcom/chartboost/sdk/e$a;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e$a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/chartboost/sdk/e;->k:Lcom/chartboost/sdk/e$a;

    return-void
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/chartboost/sdk/e;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/chartboost/sdk/e;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/chartboost/sdk/e;->j:Z

    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->c()V

    return-void
.end method

.method protected i()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->d()V

    return-void
.end method

.method public j()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 4

    .line 428
    iget-boolean v0, p0, Lcom/chartboost/sdk/e;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 429
    iput-boolean v1, p0, Lcom/chartboost/sdk/e;->c:Z

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v2, v0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v2

    iget-object v3, v0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 432
    :cond_1
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e$a;->a(Z)V

    :cond_2
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lcom/chartboost/sdk/e;->c:Z

    return-void
.end method
