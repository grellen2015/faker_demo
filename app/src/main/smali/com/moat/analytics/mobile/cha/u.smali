.class final Lcom/moat/analytics/mobile/cha/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/u$b;,
        Lcom/moat/analytics/mobile/cha/u$a;,
        Lcom/moat/analytics/mobile/cha/u$c;
    }
.end annotation


# static fields
.field private static ʼ:I = 0x0

.field private static ˋॱ:I = 0x1


# instance fields
.field private ʻ:Landroid/location/Location;

.field private ʽ:Lorg/json/JSONObject;

.field private ˊ:Landroid/graphics/Rect;

.field private ˊॱ:Lorg/json/JSONObject;

.field private ˋ:Lorg/json/JSONObject;

.field private ˎ:Landroid/graphics/Rect;

.field private ˏ:Lcom/moat/analytics/mobile/cha/u$c;

.field ॱ:Ljava/lang/String;

.field private ᐝ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    const-string v0, "{}"

    .line 105
    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u;->ॱ:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/moat/analytics/mobile/cha/u$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/u$c;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    return-void
.end method

.method private static ˊ(Landroid/view/View;)F
    .locals 8

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_0
    const/16 v1, 0x19

    if-eqz p0, :cond_0

    const/16 v2, 0x19

    goto :goto_1

    :cond_0
    const/16 v2, 0x45

    :goto_1
    if-eq v2, v1, :cond_1

    goto :goto_4

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eq v1, v3, :cond_3

    goto :goto_4

    :cond_3
    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eq v2, v3, :cond_5

    goto :goto_4

    .line 211
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    const/16 v2, 0x1b

    if-eqz v1, :cond_6

    const/16 v1, 0x1b

    goto :goto_3

    :cond_6
    const/16 v1, 0x5d

    :goto_3
    if-eq v1, v2, :cond_7

    :goto_4
    return v0

    .line 212
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v0, v0, v1

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0
.end method

.method private static ˋ(Landroid/graphics/Rect;Ljava/util/HashSet;)I
    .locals 12
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    .line 464
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 468
    new-instance p1, Lcom/moat/analytics/mobile/cha/u$1;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/cha/u$1;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 475
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 498
    sget v3, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v3, v3, 0x3b

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eq v3, v4, :cond_2

    .line 476
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 477
    :goto_3
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_3

    .line 480
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 481
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    const/16 v6, 0x55

    if-ge v2, v5, :cond_4

    const/16 v5, 0x26

    goto :goto_5

    :cond_4
    const/16 v5, 0x55

    :goto_5
    if-eq v5, v6, :cond_d

    .line 482
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_6

    goto/16 :goto_c

    .line 483
    :cond_6
    new-instance v5, Landroid/graphics/Rect;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v7, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v2, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 484
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 485
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x9

    if-eqz v8, :cond_7

    const/16 v8, 0x19

    goto :goto_8

    :cond_7
    const/16 v8, 0x9

    :goto_8
    if-eq v8, v9, :cond_c

    .line 478
    sget v8, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v8, v8, 0x17

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v8, v8, 0x2

    .line 485
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 486
    invoke-static {v8, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_9

    :cond_8
    const/4 v9, 0x0

    :goto_9
    if-eq v9, v4, :cond_9

    goto :goto_7

    .line 487
    :cond_9
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v10, 0x10

    if-le v9, v2, :cond_a

    const/16 v9, 0x10

    goto :goto_a

    :cond_a
    const/16 v9, 0x41

    :goto_a
    if-eq v9, v10, :cond_b

    goto :goto_b

    .line 488
    :cond_b
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v10, v2

    mul-int v9, v9, v10

    add-int/2addr v3, v9

    .line 489
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 491
    :goto_b
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v8, v9, :cond_c

    goto :goto_7

    :cond_c
    :goto_c
    move v2, v6

    goto/16 :goto_4

    :cond_d
    move v1, v3

    :cond_e
    return v1
.end method

.method private static ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 3

    .line 520
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v1, :cond_1

    return-object p0

    .line 524
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 525
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 526
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 527
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 528
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method static ˋ(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    const/16 v0, 0x2b

    if-eqz p0, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e

    :goto_0
    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    .line 228
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_1
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static ˋ(Landroid/graphics/Rect;Landroid/view/View;)Lcom/moat/analytics/mobile/cha/u$b;
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 396
    new-instance v1, Lcom/moat/analytics/mobile/cha/u$b;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/cha/u$b;-><init>()V

    .line 8280
    :try_start_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    move-object/from16 v3, p1

    const/4 v4, 0x0

    .line 8283
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x49

    const/16 v7, 0x5f

    if-nez v5, :cond_0

    const/16 v5, 0x5f

    goto :goto_1

    :cond_0
    const/16 v5, 0x49

    :goto_1
    const/4 v8, 0x3

    const/16 v9, 0x31

    const/4 v10, 0x0

    const/16 v11, 0x35

    const/4 v12, 0x1

    if-eq v5, v7, :cond_1

    goto :goto_5

    .line 450
    :cond_1
    sget v5, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v5, v5, 0x51

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    if-eq v5, v12, :cond_4

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-ne v3, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eq v5, v12, :cond_6

    goto :goto_8

    .line 8283
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v3, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_a

    :cond_6
    :goto_5
    add-int/2addr v4, v12

    const/16 v5, 0x32

    const/16 v7, 0x5c

    if-le v4, v5, :cond_7

    const/16 v5, 0x35

    goto :goto_6

    :cond_7
    const/16 v5, 0x5c

    :goto_6
    if-eq v5, v7, :cond_8

    .line 450
    sget v3, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_2
    const-string v3, "VisibilityInfo"

    const-string v4, "Short-circuiting chain retrieval, reached max"

    .line 8285
    invoke-static {v8, v3, v10, v4}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 8288
    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8289
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_9

    const/16 v5, 0x1d

    goto :goto_7

    :cond_9
    const/16 v5, 0x31

    :goto_7
    if-eq v5, v9, :cond_a

    .line 8290
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    .line 400
    :cond_a
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v4, 0x40

    if-eqz v3, :cond_b

    goto :goto_9

    :cond_b
    const/16 v6, 0x40

    :goto_9
    if-eq v6, v4, :cond_e

    .line 450
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    goto :goto_a

    :cond_c
    const/4 v2, 0x1

    :goto_a
    if-eqz v2, :cond_d

    :cond_d
    return-object v1

    :cond_e
    :try_start_3
    const-string v3, "VisibilityInfo"

    const-string v4, "starting covering rect search"

    move-object/from16 v5, p1

    .line 404
    invoke-static {v3, v5, v4}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v10

    .line 411
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    const/4 v4, 0x1

    :goto_c
    if-eq v4, v12, :cond_30

    .line 412
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 415
    new-instance v5, Lcom/moat/analytics/mobile/cha/u$a;

    invoke-direct {v5, v4, v3}, Lcom/moat/analytics/mobile/cha/u$a;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/cha/u$a;)V

    .line 418
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    goto :goto_d

    :cond_10
    const/4 v6, 0x1

    :goto_d
    if-eqz v6, :cond_12

    :cond_11
    :goto_e
    move-object/from16 v2, p0

    goto/16 :goto_26

    .line 401
    :cond_12
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    const/16 v7, 0x13

    add-int/2addr v6, v7

    rem-int/lit16 v13, v6, 0x80

    sput v13, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_13

    const/4 v6, 0x0

    goto :goto_f

    :cond_13
    const/4 v6, 0x1

    :goto_f
    const/16 v13, 0x12

    if-eq v6, v12, :cond_15

    .line 421
    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    const/16 v14, 0x47

    if-eqz v6, :cond_14

    const/16 v6, 0x5a

    goto :goto_10

    :cond_14
    const/16 v6, 0x47

    :goto_10
    if-eq v6, v14, :cond_11

    goto :goto_12

    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_16

    const/16 v6, 0x12

    goto :goto_11

    :cond_16
    const/16 v6, 0x53

    :goto_11
    const/16 v14, 0x53

    if-eq v6, v14, :cond_11

    .line 423
    :goto_12
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 424
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_13
    if-ge v15, v14, :cond_17

    const/4 v2, 0x1

    goto :goto_14

    :cond_17
    const/4 v2, 0x0

    :goto_14
    if-eq v2, v12, :cond_18

    goto :goto_e

    .line 421
    :cond_18
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_19

    const/4 v2, 0x0

    goto :goto_15

    :cond_19
    const/4 v2, 0x1

    :goto_15
    if-eq v2, v12, :cond_1b

    .line 427
    :try_start_5
    iget v2, v1, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    const/16 v9, 0x1f4

    if-lt v2, v9, :cond_1a

    const/4 v2, 0x1

    goto :goto_16

    :cond_1a
    const/4 v2, 0x0

    :goto_16
    if-eq v2, v12, :cond_1d

    goto :goto_18

    :cond_1b
    iget v2, v1, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    const/16 v9, 0x1f4

    if-lt v2, v9, :cond_1c

    const/4 v2, 0x0

    goto :goto_17

    :cond_1c
    const/4 v2, 0x1

    :goto_17
    if-eq v2, v12, :cond_1e

    :cond_1d
    const-string v0, "VisibilityInfo"

    const-string v2, "Short-circuiting cover retrieval, reached max"

    .line 428
    invoke-static {v8, v0, v10, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 431
    :cond_1e
    :goto_18
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, v4, :cond_1f

    const/4 v9, 0x1

    goto :goto_19

    :cond_1f
    const/4 v9, 0x0

    :goto_19
    if-eq v9, v12, :cond_2f

    .line 436
    iget v9, v1, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    add-int/2addr v9, v12

    iput v9, v1, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    if-eqz v16, :cond_20

    const/4 v9, 0x0

    goto :goto_1a

    :cond_20
    const/16 v9, 0x31

    :goto_1a
    if-eqz v9, :cond_27

    .line 8305
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v8, 0x15

    if-lt v9, v8, :cond_21

    const/16 v8, 0x4d

    goto :goto_1b

    :cond_21
    const/16 v8, 0x13

    :goto_1b
    if-eq v8, v7, :cond_26

    .line 427
    sget v8, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v8, v8, 0x73

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_22

    const/16 v8, 0x24

    goto :goto_1c

    :cond_22
    const/16 v8, 0x48

    :goto_1c
    const/16 v9, 0x48

    if-eq v8, v9, :cond_24

    .line 8306
    :try_start_6
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_23

    const/4 v8, 0x0

    goto :goto_1d

    :cond_23
    const/4 v8, 0x1

    :goto_1d
    if-eqz v8, :cond_2a

    goto :goto_1f

    :cond_24
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_25

    const/4 v8, 0x0

    goto :goto_1e

    :cond_25
    const/4 v8, 0x1

    :goto_1e
    if-eqz v8, :cond_2a

    :cond_26
    :goto_1f
    const/4 v8, 0x0

    goto :goto_22

    .line 8302
    :cond_27
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_28

    const/4 v8, 0x0

    goto :goto_20

    :cond_28
    const/4 v8, 0x1

    :goto_20
    if-eq v8, v12, :cond_2a

    .line 8303
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_29

    const/16 v8, 0x35

    goto :goto_21

    :cond_29
    const/16 v8, 0x5e

    :goto_21
    if-eq v8, v11, :cond_2a

    goto :goto_1f

    :cond_2a
    const/4 v8, 0x1

    :goto_22
    if-eqz v8, :cond_2b

    const/16 v8, 0x10

    goto :goto_23

    :cond_2b
    const/16 v8, 0x12

    :goto_23
    if-eq v8, v13, :cond_2e

    .line 439
    new-instance v8, Lcom/moat/analytics/mobile/cha/u$a;

    invoke-direct {v8, v2, v3}, Lcom/moat/analytics/mobile/cha/u$a;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/cha/u$a;)V

    move-object/from16 v2, p0

    invoke-static {v8, v2, v1}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Lcom/moat/analytics/mobile/cha/u$a;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/cha/u$b;)V

    .line 440
    iget-boolean v8, v1, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v8, :cond_2c

    const/4 v8, 0x0

    goto :goto_24

    :cond_2c
    const/4 v8, 0x1

    :goto_24
    if-eqz v8, :cond_2d

    goto :goto_25

    :cond_2d
    return-object v1

    :cond_2e
    move-object/from16 v2, p0

    goto :goto_25

    :cond_2f
    move-object/from16 v2, p0

    const/16 v16, 0x1

    :goto_25
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x3

    const/16 v9, 0x31

    goto/16 :goto_13

    :goto_26
    move-object v3, v5

    const/4 v8, 0x3

    const/16 v9, 0x31

    goto/16 :goto_b

    :catch_0
    move-exception v0

    .line 448
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    :cond_30
    :goto_27
    return-object v1
.end method

.method private static ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 4

    .line 560
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x2

    .line 561
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 562
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 563
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 564
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 565
    aget p0, v0, v3

    aget v3, v1, v3

    sub-int/2addr p0, v3

    .line 566
    aget v0, v0, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 567
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    return v2

    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data

    :array_1
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method static synthetic ˎ(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x"

    .line 509
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "y"

    .line 510
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "w"

    .line 511
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h"

    .line 512
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static ˏ(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    .line 574
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 575
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 576
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 577
    aget v0, v0, v2

    .line 578
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    nop

    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private static ˏ(Lcom/moat/analytics/mobile/cha/u$a;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/cha/u$b;)V
    .locals 13

    .line 355
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7266
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    const/16 v2, 0x4a

    const/16 v3, 0x13

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v1, 0x4a

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 7348
    :cond_2
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/2addr v0, v4

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/2addr v0, v5

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_4

    return-void

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    :goto_4
    const/16 v1, 0x5b

    const/16 v2, 0x5a

    const/16 v8, 0x30

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto/16 :goto_15

    .line 7348
    :cond_6
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v9, v0, 0x80

    sput v9, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/2addr v0, v5

    .line 360
    const-class v0, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    iget-object v9, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7313
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v11, 0x4

    if-lt v10, v3, :cond_7

    const/4 v3, 0x4

    goto :goto_5

    :cond_7
    const/4 v3, 0x1

    :goto_5
    if-eq v3, v11, :cond_9

    :cond_8
    :goto_6
    const/4 v3, 0x1

    goto :goto_b

    .line 7348
    :cond_9
    sget v3, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v3, v3, 0x71

    rem-int/lit16 v10, v3, 0x80

    sput v10, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/2addr v3, v5

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    if-eq v3, v7, :cond_c

    .line 7314
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v10, 0x59

    if-eqz v3, :cond_b

    const/16 v3, 0x59

    goto :goto_8

    :cond_b
    const/16 v3, 0x30

    :goto_8
    if-eq v3, v10, :cond_e

    goto :goto_6

    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_d

    const/16 v3, 0x3d

    goto :goto_9

    :cond_d
    const/4 v3, 0x6

    :goto_9
    const/4 v10, 0x6

    if-eq v3, v10, :cond_8

    :cond_e
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    if-nez v3, :cond_f

    const/16 v3, 0x1f

    goto :goto_a

    :cond_f
    const/16 v3, 0xd

    :goto_a
    const/16 v9, 0x1f

    if-eq v3, v9, :cond_8

    const/4 v3, 0x0

    :goto_b
    const/16 v9, 0x46

    if-eqz v0, :cond_10

    const/16 v0, 0x46

    goto :goto_c

    :cond_10
    const/16 v0, 0x5b

    :goto_c
    if-eq v0, v9, :cond_11

    goto :goto_11

    :cond_11
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v9, v0, 0x80

    sput v9, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/2addr v0, v5

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_d

    :cond_12
    const/4 v0, 0x1

    :goto_d
    if-eq v0, v7, :cond_14

    if-eqz v3, :cond_13

    const/4 v0, 0x1

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_16

    goto :goto_10

    :cond_14
    if-eqz v3, :cond_15

    const/16 v0, 0x53

    goto :goto_f

    :cond_15
    const/16 v0, 0x39

    :goto_f
    const/16 v3, 0x39

    if-eq v0, v3, :cond_16

    :goto_10
    const/4 v0, 0x0

    goto :goto_12

    :cond_16
    :goto_11
    const/4 v0, 0x1

    .line 368
    :goto_12
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    .line 369
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v9, :cond_17

    const/16 v11, 0x5a

    goto :goto_14

    :cond_17
    const/16 v11, 0x63

    :goto_14
    const/16 v12, 0x63

    if-eq v11, v12, :cond_1a

    .line 371
    iget v11, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    add-int/2addr v11, v7

    iput v11, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    const/16 v12, 0x1f4

    if-le v11, v12, :cond_18

    return-void

    .line 372
    :cond_18
    new-instance v11, Lcom/moat/analytics/mobile/cha/u$a;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-direct {v11, v12, p0}, Lcom/moat/analytics/mobile/cha/u$a;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/cha/u$a;)V

    .line 373
    invoke-static {v11, p1, p2}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Lcom/moat/analytics/mobile/cha/u$a;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/cha/u$b;)V

    .line 374
    iget-boolean v11, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    if-eqz v11, :cond_19

    return-void

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_1a
    :goto_15
    const/16 v3, 0x34

    if-eqz v0, :cond_1b

    const/16 v0, 0x34

    goto :goto_16

    :cond_1b
    const/16 v0, 0x10

    :goto_16
    if-eq v0, v3, :cond_1c

    goto/16 :goto_1d

    .line 7322
    :cond_1c
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    .line 7323
    invoke-virtual {v0, p1, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_17

    :cond_1d
    const/16 v2, 0x30

    :goto_17
    if-eq v2, v8, :cond_26

    .line 7326
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1e

    const/4 v2, 0x0

    goto :goto_18

    :cond_1e
    const/4 v2, 0x1

    :goto_18
    if-eqz v2, :cond_1f

    goto :goto_1a

    .line 7327
    :cond_1f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7328
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    goto :goto_19

    :cond_20
    const/4 v2, 0x1

    :goto_19
    if-eqz v2, :cond_21

    return-void

    .line 7329
    :cond_21
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    .line 7330
    invoke-virtual {v2, v0, v2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    move-object v0, v2

    .line 7338
    :goto_1a
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v2

    iget-boolean v2, v2, Lcom/moat/analytics/mobile/cha/t;->ˋ:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_1b

    :cond_23
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_24

    const-string v2, "VisibilityInfo"

    .line 7339
    iget-object v3, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Covered by %s-%s alpha=%f"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7341
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    .line 7342
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7343
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v4, v5

    .line 7340
    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7339
    invoke-static {v2, v3, p0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7346
    :cond_24
    iget-object p0, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˋ:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7347
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_1c

    :cond_25
    const/16 v1, 0x19

    :goto_1c
    const/16 p0, 0x19

    if-eq v1, p0, :cond_26

    .line 7314
    sget p0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/2addr p0, v5

    .line 7348
    iput-boolean v7, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    :cond_26
    :goto_1d
    return-void
.end method


# virtual methods
.method final ˋ(Ljava/lang/String;Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "{}"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5c

    .line 182
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    const/4 v7, 0x5

    add-int/2addr v6, v7

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v6, v6, 0x2

    .line 1594
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v8, 0x11

    if-lt v6, v8, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    const/16 v9, 0x30

    const/16 v10, 0x39

    if-eq v6, v5, :cond_8

    .line 182
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v6, v6, 0x71

    rem-int/lit16 v11, v6, 0x80

    sput v11, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v6, v6, 0x2

    .line 1595
    :try_start_1
    sget-object v6, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_2

    const/16 v6, 0x39

    goto :goto_2

    :cond_2
    const/16 v6, 0x19

    :goto_2
    const/16 v11, 0x19

    if-eq v6, v11, :cond_8

    .line 182
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/2addr v6, v10

    rem-int/lit16 v11, v6, 0x80

    sput v11, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_5

    .line 1596
    :try_start_2
    sget-object v6, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    if-eqz v6, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-eq v11, v5, :cond_7

    goto :goto_6

    :cond_5
    sget-object v6, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    const/16 v11, 0x3c

    goto :goto_5

    :cond_6
    const/16 v11, 0x30

    :goto_5
    if-eq v11, v9, :cond_8

    .line 1598
    :cond_7
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1599
    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_7

    .line 1604
    :cond_8
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1605
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1606
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 2188
    :goto_7
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v12, 0x13

    if-lt v6, v12, :cond_9

    const/4 v6, 0x0

    goto :goto_8

    :cond_9
    const/4 v6, 0x1

    :goto_8
    const/16 v12, 0x5a

    const/16 v13, 0x45

    const/16 v14, 0x5b

    if-eqz v6, :cond_12

    if-eqz v0, :cond_a

    const/16 v6, 0x39

    goto :goto_9

    :cond_a
    const/16 v6, 0x9

    :goto_9
    if-eq v6, v10, :cond_b

    goto :goto_d

    .line 1597
    :cond_b
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v6, v6, 0x2d

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_a

    :cond_c
    const/16 v6, 0x41

    :goto_a
    if-eq v6, v5, :cond_e

    .line 2191
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_d

    const/16 v6, 0x5b

    goto :goto_b

    :cond_d
    const/16 v6, 0x45

    :goto_b
    if-eq v6, v13, :cond_10

    goto :goto_e

    .line 1597
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v6, :cond_f

    const/16 v6, 0x5a

    goto :goto_c

    :cond_f
    const/16 v6, 0x14

    :goto_c
    if-eq v6, v12, :cond_11

    :cond_10
    :goto_d
    const/4 v6, 0x0

    goto :goto_11

    :cond_11
    :goto_e
    const/4 v6, 0x1

    goto :goto_11

    :cond_12
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v6, v6, 0x33

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    goto :goto_f

    :cond_13
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_10

    .line 2189
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto :goto_10

    :cond_14
    const/4 v6, 0x0

    :goto_10
    if-eq v6, v5, :cond_15

    goto :goto_d

    .line 1597
    :cond_15
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/2addr v6, v13

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v6, v6, 0x2

    goto :goto_e

    :goto_11
    const/16 v10, 0x25

    if-eqz v0, :cond_16

    const/16 v13, 0x36

    goto :goto_12

    :cond_16
    const/16 v13, 0x25

    :goto_12
    if-eq v13, v10, :cond_1c

    sget v13, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v13, v13, 0x65

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_17

    const/16 v12, 0x5b

    goto :goto_13

    :cond_17
    const/16 v12, 0x1f

    :goto_13
    if-eq v12, v14, :cond_19

    .line 2196
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v12

    if-eqz v12, :cond_18

    const/16 v12, 0xe

    goto :goto_14

    :cond_18
    const/16 v12, 0x10

    :goto_14
    const/16 v13, 0x10

    if-eq v12, v13, :cond_1c

    goto :goto_16

    .line 1597
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    goto :goto_15

    :cond_1a
    const/4 v12, 0x0

    :goto_15
    if-eq v12, v5, :cond_1b

    goto :goto_17

    :cond_1b
    :goto_16
    const/4 v12, 0x1

    goto :goto_18

    :cond_1c
    :goto_17
    const/4 v12, 0x0

    :goto_18
    const/4 v13, 0x4

    if-eqz v0, :cond_1d

    const/16 v14, 0x52

    goto :goto_19

    :cond_1d
    const/4 v14, 0x4

    :goto_19
    if-eq v14, v13, :cond_20

    .line 2200
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isShown()Z

    move-result v14

    if-nez v14, :cond_1e

    const/16 v14, 0x40

    goto :goto_1a

    :cond_1e
    const/16 v14, 0x25

    :goto_1a
    if-eq v14, v10, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v14, 0x0

    goto :goto_1c

    :cond_20
    :goto_1b
    const/4 v14, 0x1

    :goto_1c
    if-nez v0, :cond_21

    const/4 v8, 0x1

    goto :goto_1d

    :cond_21
    const/4 v8, 0x0

    :goto_1d
    if-eq v8, v5, :cond_22

    .line 2204
    invoke-static/range {p2 .. p2}, Lcom/moat/analytics/mobile/cha/u;->ˊ(Landroid/view/View;)F

    move-result v8

    goto :goto_1e

    :cond_22
    const/4 v8, 0x0

    :goto_1e
    const-string v10, "dr"

    .line 123
    iget v13, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v2, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "dv"

    .line 124
    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v2, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "adKey"

    move-object/from16 v13, p1

    .line 125
    invoke-interface {v2, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "isAttached"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v6, :cond_23

    const/16 v13, 0x17

    goto :goto_1f

    :cond_23
    const/16 v13, 0x1e

    :goto_1f
    const/16 v15, 0x17

    if-eq v13, v15, :cond_24

    const/4 v13, 0x0

    goto :goto_21

    .line 1597
    :cond_24
    sget v13, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v13, v13, 0x59

    rem-int/lit16 v15, v13, 0x80

    sput v15, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_25

    const/16 v13, 0x2e

    goto :goto_20

    :cond_25
    const/16 v13, 0x4f

    :goto_20
    const/16 v15, 0x4f

    const/4 v13, 0x1

    .line 126
    :goto_21
    :try_start_6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "inFocus"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v12, :cond_26

    const/16 v13, 0x55

    goto :goto_22

    :cond_26
    const/4 v13, 0x1

    :goto_22
    const/16 v15, 0x55

    if-eq v13, v15, :cond_27

    const/4 v13, 0x0

    goto :goto_23

    .line 1597
    :cond_27
    sget v13, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v13, v13, 0x13

    rem-int/lit16 v15, v13, 0x80

    sput v15, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v13, v13, 0x2

    const/4 v13, 0x1

    .line 127
    :goto_23
    :try_start_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "isHidden"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v14, :cond_28

    const/16 v13, 0x30

    goto :goto_24

    :cond_28
    const/16 v13, 0x2a

    :goto_24
    if-eq v13, v9, :cond_29

    const/4 v9, 0x0

    goto :goto_26

    .line 1597
    :cond_29
    sget v9, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v9, v9, 0x1b

    rem-int/lit16 v13, v9, 0x80

    sput v13, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_2a

    const/4 v9, 0x1

    goto :goto_25

    :cond_2a
    const/4 v9, 0x0

    :goto_25
    const/4 v9, 0x1

    .line 128
    :goto_26
    :try_start_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "opacity"

    .line 129
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    iget v8, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2223
    iget v9, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2224
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v0, :cond_2b

    const/16 v8, 0x58

    goto :goto_27

    :cond_2b
    const/16 v8, 0x39

    :goto_27
    const/16 v9, 0x58

    if-eq v8, v9, :cond_2c

    .line 2228
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_28

    :cond_2c
    invoke-static/range {p2 .. p2}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    .line 2232
    :goto_28
    new-instance v9, Lcom/moat/analytics/mobile/cha/u$c;

    invoke-direct {v9}, Lcom/moat/analytics/mobile/cha/u$c;-><init>()V

    .line 2554
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    mul-int v13, v13, v15

    if-eqz v0, :cond_2d

    const/4 v15, 0x5

    goto :goto_29

    :cond_2d
    const/16 v15, 0x4a

    :goto_29
    if-eq v15, v7, :cond_2e

    goto/16 :goto_36

    .line 1597
    :cond_2e
    sget v7, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v7, v7, 0x15

    rem-int/lit16 v15, v7, 0x80

    sput v15, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v6, :cond_2f

    const/16 v6, 0x43

    goto :goto_2a

    :cond_2f
    const/16 v6, 0x56

    :goto_2a
    const/16 v7, 0x56

    if-eq v6, v7, :cond_41

    if-eqz v12, :cond_30

    const/16 v6, 0xa

    goto :goto_2b

    :cond_30
    const/16 v6, 0x28

    :goto_2b
    const/16 v7, 0x28

    if-eq v6, v7, :cond_41

    sget v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v6, v6, 0x57

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v14, :cond_31

    const/16 v6, 0x29

    goto :goto_2c

    :cond_31
    const/16 v6, 0x4e

    :goto_2c
    const/16 v7, 0x4e

    if-eq v6, v7, :cond_41

    if-lez v13, :cond_32

    const/4 v6, 0x1

    goto :goto_2d

    :cond_32
    const/16 v6, 0xd

    :goto_2d
    if-eq v6, v5, :cond_33

    goto/16 :goto_36

    :cond_33
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v6, v6, 0x65

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_34

    const/16 v6, 0x26

    goto :goto_2e

    :cond_34
    const/16 v6, 0x39

    :goto_2e
    const/16 v7, 0x26

    if-eq v6, v7, :cond_36

    .line 2236
    :try_start_9
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2239
    invoke-static {v0, v6}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/16 v7, 0x9

    const/16 v15, 0x9

    goto :goto_2f

    :cond_35
    const/16 v15, 0x31

    const/16 v7, 0x9

    :goto_2f
    if-eq v15, v7, :cond_38

    goto/16 :goto_36

    .line 2236
    :cond_36
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2239
    invoke-static {v0, v6}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_37

    const/4 v7, 0x1

    goto :goto_30

    :cond_37
    const/4 v7, 0x0

    :goto_30
    if-eq v7, v5, :cond_38

    goto :goto_36

    .line 3554
    :cond_38
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int v7, v7, v12

    if-ge v7, v13, :cond_39

    const/4 v12, 0x1

    goto :goto_31

    :cond_39
    const/4 v12, 0x0

    :goto_31
    if-eqz v12, :cond_3a

    const-string v12, "VisibilityInfo"

    const/4 v14, 0x0

    const-string v15, "Ad is clipped"

    .line 2242
    invoke-static {v12, v14, v15}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2244
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 2245
    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_3b

    const/4 v12, 0x1

    goto :goto_32

    :cond_3b
    const/4 v12, 0x0

    :goto_32
    if-eq v12, v5, :cond_3c

    goto :goto_36

    .line 2246
    :cond_3c
    iput-object v6, v9, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    .line 2247
    invoke-static {v6, v0}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/view/View;)Lcom/moat/analytics/mobile/cha/u$b;

    move-result-object v0

    .line 2248
    iget-boolean v12, v0, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    if-eqz v12, :cond_3d

    const/4 v12, 0x1

    goto :goto_33

    :cond_3d
    const/4 v12, 0x0

    :goto_33
    if-eq v12, v5, :cond_40

    .line 2251
    iget-object v0, v0, Lcom/moat/analytics/mobile/cha/u$b;->ˋ:Ljava/util/HashSet;

    invoke-static {v6, v0}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Ljava/util/HashSet;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-lez v0, :cond_3e

    const/16 v6, 0x5a

    :goto_34
    const/4 v12, 0x4

    goto :goto_35

    :cond_3e
    const/4 v6, 0x4

    goto :goto_34

    :goto_35
    if-eq v6, v12, :cond_3f

    .line 2239
    sget v6, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v6, v6, 0x23

    rem-int/lit16 v12, v6, 0x80

    sput v12, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v6, v6, 0x2

    int-to-double v14, v0

    int-to-double v4, v7

    div-double/2addr v14, v4

    .line 2253
    :try_start_a
    iput-wide v14, v9, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    :cond_3f
    sub-int/2addr v7, v0

    int-to-double v4, v7

    int-to-double v6, v13

    div-double/2addr v4, v6

    .line 2256
    iput-wide v4, v9, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    goto :goto_36

    :cond_40
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2249
    iput-wide v4, v9, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    .line 134
    :cond_41
    :goto_36
    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    goto :goto_37

    :cond_42
    const/4 v0, 0x0

    :goto_37
    const/16 v4, 0x47

    if-eqz v0, :cond_47

    .line 2239
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_43

    :try_start_b
    iget-wide v5, v9, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v12, v0, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    cmpl-double v0, v5, v12

    if-nez v0, :cond_47

    goto :goto_39

    .line 134
    :cond_43
    iget-wide v5, v9, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v12, v0, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    cmpl-double v0, v5, v12

    if-nez v0, :cond_44

    const/16 v0, 0x26

    goto :goto_38

    :cond_44
    const/16 v0, 0x47

    :goto_38
    if-eq v0, v4, :cond_47

    :goto_39
    iget-object v0, v9, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-object v5, v5, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_3a

    :cond_45
    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_47

    iget-wide v5, v9, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v12, v0, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    cmpl-double v0, v5, v12

    if-eqz v0, :cond_46

    goto :goto_3b

    :cond_46
    const/4 v5, 0x0

    goto :goto_3c

    .line 138
    :cond_47
    :goto_3b
    iput-object v9, v1, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-object v5, v5, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    .line 4504
    invoke-static {v5, v11}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v5}, Lcom/moat/analytics/mobile/cha/u;->ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v5

    .line 139
    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;

    const/4 v5, 0x1

    :goto_3c
    const-string v0, "coveredPercent"

    .line 142
    iget-wide v6, v9, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˊॱ:Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_3d

    :cond_48
    const/4 v0, 0x0

    :goto_3d
    if-eqz v0, :cond_49

    .line 2239
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    const/16 v6, 0x25

    add-int/2addr v0, v6

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    .line 143
    :try_start_c
    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˎ:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 144
    :cond_49
    iput-object v10, v1, Lcom/moat/analytics/mobile/cha/u;->ˎ:Landroid/graphics/Rect;

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    .line 5504
    invoke-static {v10, v11}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v5}, Lcom/moat/analytics/mobile/cha/u;->ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v5

    .line 145
    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˊॱ:Lorg/json/JSONObject;

    const/4 v5, 0x1

    .line 148
    :cond_4a
    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ʽ:Lorg/json/JSONObject;

    if-eqz v0, :cond_4b

    const/16 v0, 0x12

    goto :goto_3e

    :cond_4b
    const/16 v0, 0x47

    :goto_3e
    if-eq v0, v4, :cond_4c

    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ˊ:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 149
    :cond_4c
    iput-object v8, v1, Lcom/moat/analytics/mobile/cha/u;->ˊ:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    .line 6504
    invoke-static {v8, v11}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/u;->ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v4

    .line 150
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ʽ:Lorg/json/JSONObject;

    const/4 v5, 0x1

    .line 153
    :cond_4d
    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    :goto_3f
    const/4 v4, 0x1

    goto :goto_40

    :cond_4e
    const/4 v0, 0x1

    goto :goto_3f

    :goto_40
    if-eq v0, v4, :cond_50

    .line 2239
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v0, v0, 0x2

    .line 153
    :try_start_d
    iget-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    invoke-interface {v2, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const/4 v0, 0x0

    :goto_41
    const/4 v4, 0x1

    goto :goto_42

    :cond_4f
    const/4 v0, 0x1

    goto :goto_41

    :goto_42
    if-eq v0, v4, :cond_51

    .line 154
    :cond_50
    iput-object v2, v1, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    const/4 v5, 0x1

    .line 158
    :cond_51
    invoke-static {}, Lcom/moat/analytics/mobile/cha/n;->ˏ()Lcom/moat/analytics/mobile/cha/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/cha/n;->ˊ()Landroid/location/Location;

    move-result-object v0

    .line 159
    iget-object v2, v1, Lcom/moat/analytics/mobile/cha/u;->ʻ:Landroid/location/Location;

    invoke-static {v0, v2}, Lcom/moat/analytics/mobile/cha/n;->ˎ(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    if-nez v2, :cond_52

    const/16 v2, 0x15

    goto :goto_43

    :cond_52
    const/16 v2, 0x5d

    :goto_43
    const/16 v6, 0x5d

    if-eq v2, v6, :cond_53

    .line 2239
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    .line 161
    :try_start_e
    iput-object v0, v1, Lcom/moat/analytics/mobile/cha/u;->ʻ:Landroid/location/Location;

    const/4 v5, 0x1

    :cond_53
    if-eqz v5, :cond_54

    const/4 v2, 0x0

    goto :goto_44

    :cond_54
    const/4 v2, 0x1

    :goto_44
    if-eqz v2, :cond_55

    goto/16 :goto_4b

    .line 165
    :cond_55
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v5, "screen"

    .line 166
    iget-object v6, v1, Lcom/moat/analytics/mobile/cha/u;->ˊॱ:Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "view"

    .line 167
    iget-object v6, v1, Lcom/moat/analytics/mobile/cha/u;->ʽ:Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "visible"

    .line 168
    iget-object v6, v1, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "maybe"

    .line 169
    iget-object v6, v1, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "visiblePercent"

    .line 170
    iget-object v6, v1, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v6, v6, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_56

    const/16 v8, 0x3e

    const/16 v5, 0x3c

    goto :goto_45

    :cond_56
    const/16 v5, 0x3c

    const/16 v8, 0x3c

    :goto_45
    if-eq v8, v5, :cond_5b

    const-string v5, "location"

    if-nez v0, :cond_57

    goto :goto_46

    :cond_57
    const/4 v4, 0x0

    :goto_46
    if-eqz v4, :cond_58

    const/4 v0, 0x0

    goto :goto_47

    .line 6543
    :cond_58
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v6, "latitude"

    .line 6544
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "longitude"

    .line 6545
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "timestamp"

    .line 6546
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "horizontalAccuracy"

    .line 6547
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    :goto_47
    if-nez v0, :cond_59

    const/16 v4, 0xe

    goto :goto_48

    :cond_59
    const/16 v4, 0x55

    :goto_48
    const/16 v6, 0xe

    if-eq v4, v6, :cond_5a

    .line 6536
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_49

    :cond_5a
    const/4 v4, 0x0

    .line 172
    :goto_49
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_5b
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 175
    :try_start_f
    iput-object v2, v1, Lcom/moat/analytics/mobile/cha/u;->ॱ:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_4b

    :catch_0
    move-exception v0

    move-object v3, v2

    goto :goto_4a

    :catch_1
    move-exception v0

    .line 181
    :goto_4a
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 182
    iput-object v3, v1, Lcom/moat/analytics/mobile/cha/u;->ॱ:Ljava/lang/String;

    return-void

    :cond_5c
    :goto_4b
    return-void
.end method
