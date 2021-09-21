.class public Lcom/chartboost/sdk/impl/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aw;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/d;)V
    .locals 8

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 84
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_5

    .line 89
    iget-object v0, p2, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bc;

    if-nez v0, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p2, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->d()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    .line 95
    invoke-virtual {p5, p2}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    const-string p1, "AnimationManager"

    const-string p2, "Transition of impression canceled due to lack of view"

    .line 96
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p5

    .line 100
    invoke-virtual {p5}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lcom/chartboost/sdk/impl/aw$1;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/impl/aw$1;-><init>(Lcom/chartboost/sdk/impl/aw;Landroid/view/View;ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    invoke-virtual {p5, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p1, "AnimationManager"

    const-string p2, "Transition of impression canceled due to lack of container"

    .line 90
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/impl/aw;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Lcom/chartboost/sdk/d;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/aw;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/d;)V

    return-void
.end method

.method a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V
    .locals 29

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 115
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 116
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz v1, :cond_18

    .line 119
    iget-object v6, v1, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bc;

    if-nez v6, :cond_0

    goto/16 :goto_10

    .line 125
    :cond_0
    iget-object v6, v1, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/bc;->d()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_1

    .line 128
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of view"

    .line 129
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_2
    iget v8, v1, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    iget v8, v1, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v8, v5, :cond_4

    .line 135
    :cond_3
    iget-object v6, v1, Lcom/chartboost/sdk/Model/c;->s:Lcom/chartboost/sdk/impl/bc;

    .line 138
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 139
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    const v11, 0x3e99999a    # 0.3f

    .line 150
    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    const-wide/16 v12, 0x1f4

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    :pswitch_1
    if-eqz p4, :cond_5

    neg-float v1, v8

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz p4, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    neg-float v3, v8

    .line 246
    :goto_1
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v1, v3, v14, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 247
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    invoke-virtual {v7, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 249
    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_2
    if-eqz p4, :cond_7

    move v1, v8

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz p4, :cond_8

    const/4 v8, 0x0

    .line 236
    :cond_8
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v1, v8, v14, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 237
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 239
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_3
    if-eqz p4, :cond_9

    .line 155
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v14, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_3

    .line 156
    :cond_9
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    :goto_3
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 159
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 160
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_4
    if-eqz p4, :cond_a

    move v1, v9

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-eqz p4, :cond_b

    const/4 v9, 0x0

    .line 215
    :cond_b
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v14, v14, v1, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 216
    invoke-virtual {v3, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 217
    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 218
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_5
    if-eqz p4, :cond_c

    neg-float v1, v9

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    if-eqz p4, :cond_d

    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    neg-float v3, v9

    .line 225
    :goto_6
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v14, v14, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 226
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 227
    invoke-virtual {v7, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 228
    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_6
    if-eqz p4, :cond_e

    .line 164
    new-instance v21, Lcom/chartboost/sdk/impl/ba;

    const/high16 v16, -0x3d900000    # -60.0f

    const/16 v17, 0x0

    div-float v18, v8, v1

    div-float v19, v9, v1

    const/16 v20, 0x0

    move-object/from16 v15, v21

    invoke-direct/range {v15 .. v20}, Lcom/chartboost/sdk/impl/ba;-><init>(FFFFZ)V

    goto :goto_7

    .line 166
    :cond_e
    new-instance v15, Lcom/chartboost/sdk/impl/ba;

    const/16 v23, 0x0

    div-float v25, v8, v1

    div-float v26, v9, v1

    const/16 v27, 0x0

    const/high16 v24, 0x42700000    # 60.0f

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/chartboost/sdk/impl/ba;-><init>(FFFFZ)V

    .line 167
    :goto_7
    invoke-virtual {v15, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 169
    invoke-virtual {v4, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_f

    .line 171
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v10, v7, v10, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_8

    .line 172
    :cond_f
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v7, v10, v7, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 173
    :goto_8
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 174
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 175
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_10

    .line 178
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    mul-float v8, v8, v11

    neg-float v3, v9

    mul-float v3, v3, v10

    invoke-direct {v1, v8, v14, v3, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 180
    :cond_10
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    mul-float v8, v8, v11

    invoke-direct {v1, v14, v8, v14, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    :goto_9
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 182
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 183
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_7
    const-wide/16 v7, 0x0

    if-eqz p4, :cond_11

    .line 255
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v15, 0x3f19999a    # 0.6f

    const v16, 0x3f8ccccd    # 1.1f

    const v17, 0x3f19999a    # 0.6f

    const v18, 0x3f8ccccd    # 1.1f

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x1

    const/high16 v22, 0x3f000000    # 0.5f

    move-object v14, v1

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    long-to-float v3, v12

    const v9, 0x3f19999a    # 0.6f

    mul-float v9, v9, v3

    .line 256
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 258
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 259
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 261
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f51745c

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3f51745c

    move-object v14, v1

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v7, 0x3e4ccccc    # 0.19999999f

    mul-float v7, v7, v3

    .line 262
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    .line 263
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 265
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 266
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v16, 0x3f8e38e4

    const v18, 0x3f8e38e4

    move-object v14, v1

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v7, 0x3dccccc8    # 0.099999964f

    mul-float v7, v7, v3

    .line 269
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v7

    .line 270
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v7, v3

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 271
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 272
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    .line 275
    :cond_11
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x1

    const/high16 v22, 0x3f000000    # 0.5f

    move-object v14, v1

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 276
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 278
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 279
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_d

    :pswitch_8
    if-eqz p4, :cond_12

    .line 188
    new-instance v15, Lcom/chartboost/sdk/impl/ba;

    const/high16 v24, -0x3d900000    # -60.0f

    const/16 v25, 0x0

    div-float v26, v8, v1

    div-float v27, v9, v1

    const/16 v28, 0x1

    move-object/from16 v23, v15

    invoke-direct/range {v23 .. v28}, Lcom/chartboost/sdk/impl/ba;-><init>(FFFFZ)V

    goto :goto_a

    .line 190
    :cond_12
    new-instance v15, Lcom/chartboost/sdk/impl/ba;

    const/16 v17, 0x0

    div-float v19, v8, v1

    div-float v20, v9, v1

    const/16 v21, 0x1

    const/high16 v18, 0x42700000    # 60.0f

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Lcom/chartboost/sdk/impl/ba;-><init>(FFFFZ)V

    .line 191
    :goto_a
    invoke-virtual {v15, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 192
    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 193
    invoke-virtual {v4, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_13

    .line 195
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v10, v7, v10, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_b

    .line 196
    :cond_13
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v7, v10, v7, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 197
    :goto_b
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 199
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_14

    .line 202
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v8

    mul-float v3, v3, v10

    mul-float v9, v9, v11

    invoke-direct {v1, v3, v14, v9, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_c

    .line 204
    :cond_14
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    mul-float v9, v9, v11

    invoke-direct {v1, v14, v8, v14, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 205
    :goto_c
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 206
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 207
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_d
    const/4 v1, 0x7

    if-ne v0, v1, :cond_16

    if-eqz v2, :cond_15

    .line 289
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_15
    move-object/from16 v0, p0

    goto :goto_f

    :cond_16
    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    .line 294
    iget-object v1, v0, Lcom/chartboost/sdk/impl/aw;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    :cond_17
    move-object/from16 v0, p0

    .line 296
    :goto_e
    invoke-virtual {v6, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_f
    return-void

    :cond_18
    :goto_10
    move-object/from16 v0, p0

    const-string v1, "AnimationManager"

    const-string v3, "Transition of impression canceled due to lack of container"

    .line 120
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_19

    .line 122
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(ZLandroid/view/View;J)V
    .locals 4

    .line 310
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 314
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    .line 315
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 316
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(ZLandroid/view/View;Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .line 302
    iget p3, p3, Lcom/chartboost/sdk/Model/a;->b:I

    const-wide/16 v0, 0x1f4

    .line 305
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/chartboost/sdk/impl/aw;->a(ZLandroid/view/View;J)V

    return-void
.end method
