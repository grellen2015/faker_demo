.class final Lcom/google/android/gms/internal/ads/zzmw;
.super Ljava/lang/Object;


# instance fields
.field private final zzafv:I

.field private zzauh:F

.field private zzaui:F

.field private final zzaxx:I

.field private final zzaxy:I

.field private final zzaxz:I

.field private final zzaya:I

.field private final zzayb:[S

.field private zzayc:I

.field private zzayd:[S

.field private zzaye:I

.field private zzayf:[S

.field private zzayg:I

.field private zzayh:[S

.field private zzayi:I

.field private zzayj:I

.field private zzayk:I

.field private zzayl:I

.field private zzaym:I

.field private zzayn:I

.field private zzayo:I

.field private zzayp:I

.field private zzayq:I

.field private zzayr:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzafv:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    .line 4
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxy:I

    .line 5
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxz:I

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxz:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayb:[S

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayc:I

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaye:I

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayg:I

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayh:[S

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayj:I

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayo:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzauh:F

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaui:F

    return-void
.end method

.method private final zza([SIII)I
    .locals 9

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xff

    :goto_0
    if-gt p3, p4, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_1

    add-int v7, p2, v5

    .line 84
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 85
    aget-short v8, p1, v8

    if-lt v7, v8, :cond_0

    sub-int/2addr v7, v8

    goto :goto_2

    :cond_0
    sub-int v7, v8, v7

    :goto_2
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    mul-int v5, v6, v2

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2

    move v2, p3

    move v0, v6

    :cond_2
    mul-int v5, v6, v4

    mul-int v7, v3, p3

    if-le v5, v7, :cond_3

    move v4, p3

    move v3, v6

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 95
    :cond_4
    div-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayq:I

    .line 96
    div-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayr:I

    return v2
.end method

.method private static zza(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_0

    .line 225
    aget-short v6, p4, v4

    sub-int v7, p0, v2

    mul-int v6, v6, v7

    aget-short v7, p6, v5

    mul-int v7, v7, v2

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v3

    add-int/2addr v3, p1

    add-int/2addr v4, p1

    add-int/2addr v5, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza([SII)V
    .locals 3

    .line 60
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzmw;->zzaj(I)V

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int p2, p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v2, v2, p3

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    return-void
.end method

.method private final zzaj(I)V
    .locals 2

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaye:I

    if-le v0, v1, :cond_0

    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaye:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaye:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaye:I

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaye:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    :cond_0
    return-void
.end method

.method private final zzak(I)V
    .locals 2

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayc:I

    if-le v0, v1, :cond_0

    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayc:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayc:I

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    :cond_0
    return-void
.end method

.method private final zzb([SII)V
    .locals 6

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    div-int/2addr v0, p3

    .line 65
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v1, v1, p3

    .line 66
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int p2, p2, p3

    const/4 p3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    mul-int v5, v2, v1

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 70
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_0
    div-int/2addr v4, v1

    .line 73
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayb:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzhy()V
    .locals 20

    move-object/from16 v0, p0

    .line 98
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    .line 99
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzauh:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaui:F

    div-float/2addr v2, v3

    float-to-double v3, v2

    const-wide v5, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v5, v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gtz v5, :cond_1

    const-wide v9, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v5, v3, v9

    if-gez v5, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    invoke-direct {v0, v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzmw;->zza([SII)V

    .line 174
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    goto/16 :goto_a

    .line 102
    :cond_1
    :goto_0
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    if-lt v5, v9, :cond_12

    .line 103
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    const/4 v15, 0x0

    .line 105
    :goto_1
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayn:I

    if-lez v9, :cond_2

    .line 107
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayn:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 108
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    invoke-direct {v0, v10, v15, v9}, Lcom/google/android/gms/internal/ads/zzmw;->zza([SII)V

    .line 109
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayn:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayn:I

    add-int/2addr v15, v9

    goto/16 :goto_9

    .line 112
    :cond_2
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    .line 113
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzafv:I

    const/16 v11, 0xfa0

    if-le v10, v11, :cond_3

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzafv:I

    div-int/2addr v10, v11

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    .line 114
    :goto_2
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    if-ne v11, v8, :cond_4

    if-ne v10, v8, :cond_4

    .line 115
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxy:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxz:I

    invoke-direct {v0, v9, v15, v10, v11}, Lcom/google/android/gms/internal/ads/zzmw;->zza([SIII)I

    move-result v9

    goto :goto_3

    .line 116
    :cond_4
    invoke-direct {v0, v9, v15, v10}, Lcom/google/android/gms/internal/ads/zzmw;->zzb([SII)V

    .line 117
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayb:[S

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxy:I

    div-int/2addr v12, v10

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxz:I

    div-int/2addr v13, v10

    invoke-direct {v0, v11, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzmw;->zza([SIII)I

    move-result v11

    if-eq v10, v8, :cond_8

    mul-int v11, v11, v10

    shl-int/lit8 v10, v10, 0x2

    sub-int v12, v11, v10

    add-int/2addr v11, v10

    .line 122
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxy:I

    if-ge v12, v10, :cond_5

    .line 123
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxy:I

    .line 124
    :cond_5
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxz:I

    if-le v11, v10, :cond_6

    .line 125
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxz:I

    .line 126
    :cond_6
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    if-ne v10, v8, :cond_7

    .line 127
    invoke-direct {v0, v9, v15, v12, v11}, Lcom/google/android/gms/internal/ads/zzmw;->zza([SIII)I

    move-result v9

    goto :goto_3

    .line 128
    :cond_7
    invoke-direct {v0, v9, v15, v8}, Lcom/google/android/gms/internal/ads/zzmw;->zzb([SII)V

    .line 129
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayb:[S

    invoke-direct {v0, v9, v7, v12, v11}, Lcom/google/android/gms/internal/ads/zzmw;->zza([SIII)I

    move-result v9

    goto :goto_3

    :cond_8
    move v9, v11

    .line 130
    :goto_3
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayq:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayr:I

    if-eqz v10, :cond_c

    .line 131
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayo:I

    if-nez v12, :cond_9

    goto :goto_4

    :cond_9
    mul-int/lit8 v12, v10, 0x3

    if-le v11, v12, :cond_a

    goto :goto_4

    :cond_a
    shl-int/lit8 v10, v10, 0x1

    .line 135
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayp:I

    mul-int/lit8 v11, v11, 0x3

    if-gt v10, v11, :cond_b

    goto :goto_4

    :cond_b
    const/4 v10, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_d

    .line 139
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayo:I

    move v14, v10

    goto :goto_6

    :cond_d
    move v14, v9

    .line 141
    :goto_6
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayq:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayp:I

    .line 142
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayo:I

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v3, v9

    const/high16 v10, 0x40000000    # 2.0f

    if-lez v9, :cond_f

    .line 146
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    cmpl-float v9, v2, v10

    if-ltz v9, :cond_e

    int-to-float v9, v14

    sub-float v10, v2, v6

    div-float/2addr v9, v10

    float-to-int v9, v9

    move v12, v9

    goto :goto_7

    :cond_e
    int-to-float v9, v14

    sub-float/2addr v10, v2

    mul-float v9, v9, v10

    sub-float v10, v2, v6

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 150
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayn:I

    move v12, v14

    .line 151
    :goto_7
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzmw;->zzaj(I)V

    .line 152
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int v16, v15, v14

    move/from16 v17, v9

    move v9, v12

    move/from16 v18, v12

    move/from16 v12, v17

    move-object/from16 v17, v13

    move v8, v14

    move v14, v15

    move/from16 v19, v15

    move-object/from16 v15, v17

    invoke-static/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzmw;->zza(II[SI[SI[SI)V

    .line 153
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int v9, v9, v18

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int v14, v8, v18

    add-int v15, v19, v14

    goto :goto_9

    :cond_f
    move v8, v14

    move/from16 v19, v15

    .line 156
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v2, v9

    if-gez v9, :cond_10

    int-to-float v9, v8

    mul-float v9, v9, v2

    sub-float v10, v6, v2

    div-float/2addr v9, v10

    float-to-int v9, v9

    move/from16 v17, v9

    goto :goto_8

    :cond_10
    int-to-float v9, v8

    mul-float v10, v10, v2

    sub-float/2addr v10, v6

    mul-float v9, v9, v10

    sub-float v10, v6, v2

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 160
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayn:I

    move/from16 v17, v8

    :goto_8
    add-int v14, v8, v17

    .line 161
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/zzmw;->zzaj(I)V

    .line 162
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v9, v9, v19

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v11, v11, v12

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v12, v12, v8

    invoke-static {v15, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int v12, v9, v8

    add-int v8, v19, v8

    move/from16 v9, v17

    move-object v13, v15

    move/from16 v18, v14

    move v14, v8

    move/from16 v16, v19

    invoke-static/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzmw;->zza(II[SI[SI[SI)V

    .line 164
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int v8, v8, v18

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int v15, v19, v17

    .line 167
    :goto_9
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    add-int/2addr v8, v15

    if-le v8, v5, :cond_11

    .line 169
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    sub-int/2addr v2, v15

    .line 170
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v15, v15, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v5, v5, v2

    invoke-static {v3, v15, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    goto :goto_a

    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 175
    :cond_12
    :goto_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaui:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1b

    .line 176
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaui:F

    .line 177
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    if-eq v3, v1, :cond_1b

    .line 178
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzafv:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 179
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzafv:I

    :goto_b
    const/16 v4, 0x4000

    if-gt v2, v4, :cond_1a

    if-le v3, v4, :cond_13

    goto/16 :goto_10

    .line 184
    :cond_13
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    sub-int/2addr v4, v1

    .line 185
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    add-int/2addr v5, v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayg:I

    if-le v5, v6, :cond_14

    .line 186
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayg:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayg:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayg:I

    .line 187
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayh:[S

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayg:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v6, v6, v8

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayh:[S

    .line 188
    :cond_14
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v6, v6, v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayh:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v9, v9, v10

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v10, v10, v4

    invoke-static {v5, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    .line 190
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    const/4 v1, 0x0

    .line 191
    :goto_c
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_19

    .line 192
    :goto_d
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    add-int/2addr v4, v5

    mul-int v4, v4, v2

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayj:I

    mul-int v6, v6, v3

    if-le v4, v6, :cond_16

    .line 193
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzmw;->zzaj(I)V

    const/4 v4, 0x0

    .line 194
    :goto_e
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    if-ge v4, v5, :cond_15

    .line 195
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v6, v6, v8

    add-int/2addr v6, v4

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayh:[S

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v9, v9, v1

    add-int/2addr v9, v4

    .line 197
    aget-short v10, v8, v9

    .line 198
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    add-int/2addr v9, v11

    aget-short v8, v8, v9

    .line 199
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayj:I

    mul-int v9, v9, v3

    .line 200
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    mul-int v11, v11, v2

    .line 201
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    mul-int v12, v12, v2

    sub-int v9, v12, v9

    sub-int/2addr v12, v11

    mul-int v10, v10, v9

    sub-int v9, v12, v9

    mul-int v9, v9, v8

    add-int/2addr v10, v9

    .line 204
    div-int/2addr v10, v12

    int-to-short v8, v10

    .line 205
    aput-short v8, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 207
    :cond_15
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayj:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayj:I

    .line 208
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    goto :goto_d

    .line 209
    :cond_16
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    .line 210
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    if-ne v4, v3, :cond_18

    .line 211
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayi:I

    .line 212
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayj:I

    if-ne v4, v2, :cond_17

    const/4 v4, 0x1

    goto :goto_f

    :cond_17
    const/4 v4, 0x0

    :goto_f
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzsk;->checkState(Z)V

    .line 213
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayj:I

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 215
    :cond_19
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    if-eqz v1, :cond_1b

    .line 217
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayh:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v3, v3, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzayh:[S

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    sub-int/2addr v5, v1

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v5, v5, v6

    invoke-static {v2, v3, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v4, 0x1

    .line 181
    div-int/lit8 v2, v2, 0x2

    .line 182
    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_b

    :cond_1b
    :goto_11
    return-void
.end method


# virtual methods
.method public final setSpeed(F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzauh:F

    return-void
.end method

.method public final zza(F)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaui:F

    return-void
.end method

.method public final zza(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 24
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    div-int/2addr v0, v1

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v1, v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzmw;->zzak(I)V

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v3, v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 28
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmw;->zzhy()V

    return-void
.end method

.method public final zzb(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 31
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 33
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayf:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v2, v2, v4

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzhl()V
    .locals 6

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzauh:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaui:F

    div-float/2addr v1, v2

    .line 38
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    int-to-float v3, v0

    div-float/2addr v3, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaui:F

    div-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    float-to-int v1, v3

    add-int/2addr v2, v1

    .line 39
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzmw;->zzak(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 40
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v4, v4, v5

    if-ge v3, v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayd:[S

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaxx:I

    mul-int v5, v5, v0

    add-int/2addr v5, v3

    aput-short v1, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaya:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmw;->zzhy()V

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    if-le v0, v2, :cond_1

    .line 46
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    .line 47
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayk:I

    .line 48
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayn:I

    .line 49
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzaym:I

    return-void
.end method

.method public final zzhx()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzayl:I

    return v0
.end method
