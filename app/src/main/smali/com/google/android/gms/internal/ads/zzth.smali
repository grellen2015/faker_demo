.class public final Lcom/google/android/gms/internal/ads/zzth;
.super Lcom/google/android/gms/internal/ads/zzpe;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final zzbod:[I


# instance fields
.field private zzaez:Landroid/view/Surface;

.field private zzafb:Z

.field private zzafd:J

.field private zzaff:I

.field private zzafg:I

.field private zzafh:F

.field private zzaul:I

.field private zzawy:Z

.field private final zzboe:Lcom/google/android/gms/internal/ads/zztl;

.field private final zzbof:Lcom/google/android/gms/internal/ads/zzto;

.field private final zzbog:J

.field private final zzboh:I

.field private final zzboi:Z

.field private final zzboj:[J

.field private zzbok:[Lcom/google/android/gms/internal/ads/zzlh;

.field private zzbol:Lcom/google/android/gms/internal/ads/zztj;

.field private zzbom:Landroid/view/Surface;

.field private zzbon:I

.field private zzboo:J

.field private zzbop:I

.field private zzboq:I

.field private zzbor:I

.field private zzbos:F

.field private zzbot:I

.field private zzbou:I

.field private zzbov:I

.field private zzbow:I

.field private zzbox:F

.field zzboy:Lcom/google/android/gms/internal/ads/zztk;

.field private zzboz:J

.field private zzbpa:I

.field private final zzlj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 408
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzth;->zzbod:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpg;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zztn;I)V
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object/from16 v8, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzth;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpg;JLcom/google/android/gms/internal/ads/zznj;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zztn;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpg;JLcom/google/android/gms/internal/ads/zznj;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zztn;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzpg;",
            "J",
            "Lcom/google/android/gms/internal/ads/zznj<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/zztn;",
            "I)V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 p5, 0x0

    .line 3
    invoke-direct {p0, p4, p2, p5, p3}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(ILcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zznj;Z)V

    const-wide/16 p4, 0x0

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbog:J

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboh:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzlj:Landroid/content/Context;

    .line 7
    new-instance p4, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboe:Lcom/google/android/gms/internal/ads/zztl;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzto;

    invoke-direct {p1, p7, p8}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zztn;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    .line 10
    sget p1, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/4 p4, 0x1

    const/16 p5, 0x16

    if-gt p1, p5, :cond_0

    const-string p1, "foster"

    sget-object p5, Lcom/google/android/gms/internal/ads/zzsy;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NVIDIA"

    sget-object p5, Lcom/google/android/gms/internal/ads/zzsy;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 11
    :cond_0
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboi:Z

    const/16 p1, 0xa

    .line 12
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboz:J

    .line 14
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbos:F

    .line 19
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbon:I

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkk()V

    return-void
.end method

.method private static zza(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 387
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    mul-int p1, p1, p2

    goto :goto_3

    :pswitch_1
    mul-int p1, p1, p2

    goto :goto_2

    :pswitch_2
    const-string p0, "BRAVIA 4K 2015"

    .line 391
    sget-object v1, Lcom/google/android/gms/internal/ads/zzsy;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x10

    .line 393
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzsy;->zzb(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzsy;->zzb(II)I

    move-result p0

    mul-int p1, p1, p0

    shl-int/lit8 p0, p1, 0x4

    shl-int/lit8 p1, p0, 0x4

    goto :goto_2

    :pswitch_3
    mul-int p1, p1, p2

    :goto_2
    const/4 v3, 0x2

    :goto_3
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 403
    div-int/2addr p1, v3

    return p1

    :cond_3
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    .line 322
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzsx;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 323
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 324
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsx;->endSection()V

    .line 325
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zznc;->zzabl:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zznc;->zzabl:I

    return-void
.end method

.method private final zza(Landroid/media/MediaCodec;IJJ)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzej()V

    const-string p3, "releaseOutputBuffer"

    .line 336
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzsx;->beginSection(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 338
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsx;->endSection()V

    .line 339
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zznc;->zzabk:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zznc;->zzabk:I

    const/4 p1, 0x0

    .line 340
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboq:I

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkj()V

    return-void
.end method

.method private static zza(ZLcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzlh;)Z
    .locals 2

    .line 404
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlh;->zzatq:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzlh;->zzatq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzth;->zzj(Lcom/google/android/gms/internal/ads/zzlh;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzth;->zzj(Lcom/google/android/gms/internal/ads/zzlh;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final zzb(Landroid/media/MediaCodec;IJ)V
    .locals 0

    .line 327
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzej()V

    const-string p3, "releaseOutputBuffer"

    .line 328
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzsx;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 329
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 330
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsx;->endSection()V

    .line 331
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zznc;->zzabk:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zznc;->zzabk:I

    const/4 p1, 0x0

    .line 332
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboq:I

    .line 333
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkj()V

    return-void
.end method

.method private final zzej()V
    .locals 5

    .line 364
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbou:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbov:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbow:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbot:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbox:F

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbot:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzto;->zzb(IIIF)V

    .line 366
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbou:I

    .line 367
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbov:I

    .line 368
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbot:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbow:I

    .line 369
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbox:F

    :cond_1
    return-void
.end method

.method private static zzer(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzlh;)I
    .locals 2

    .line 382
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzafs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 383
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzafs:I

    return p0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzatq:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzth;->zza(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzlh;)I
    .locals 2

    .line 407
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzatt:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzatt:I

    return p0
.end method

.method private final zzkh()V
    .locals 4

    .line 346
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbog:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbog:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    return-void
.end method

.method private final zzki()V
    .locals 3

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafb:Z

    .line 350
    sget v0, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzawy:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzir()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v1, Lcom/google/android/gms/internal/ads/zztk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/zztk;-><init>(Lcom/google/android/gms/internal/ads/zzth;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzti;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboy:Lcom/google/android/gms/internal/ads/zztk;

    :cond_0
    return-void
.end method

.method private final zzkk()V
    .locals 2

    const/4 v0, -0x1

    .line 359
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbou:I

    .line 360
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbov:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 361
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbox:F

    .line 362
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbow:I

    return-void
.end method

.method private final zzkl()V
    .locals 5

    .line 371
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbou:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbov:I

    if-eq v0, v1, :cond_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbot:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzto;->zzb(IIIF)V

    :cond_1
    return-void
.end method

.method private final zzkm()V
    .locals 6

    .line 374
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbop:I

    if-lez v0, :cond_0

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 376
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafd:J

    sub-long v2, v0, v2

    .line 377
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbop:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzto;->zzg(IJ)V

    const/4 v2, 0x0

    .line 378
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbop:I

    .line 379
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafd:J

    :cond_0
    return-void
.end method

.method private final zzn(Z)Z
    .locals 2

    .line 343
    sget v0, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzawy:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzlj:Landroid/content/Context;

    .line 344
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztd;->zzc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final isReady()Z
    .locals 9

    .line 70
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzpe;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafb:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-eq v0, v4, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzir()Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_2

    .line 72
    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    return v1

    .line 74
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    .line 76
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    .line 78
    :cond_4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    return v4
.end method

.method protected final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4

    const-string v0, "crop-right"

    .line 246
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "crop-left"

    .line 247
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-top"

    .line 248
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "crop-right"

    .line 250
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "width"

    .line 251
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    if-eqz v0, :cond_2

    const-string v0, "crop-bottom"

    .line 253
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-top"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "height"

    .line 254
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    .line 255
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbos:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    .line 256
    sget p2, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_4

    .line 257
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbor:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_3

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbor:I

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_5

    .line 258
    :cond_3
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    .line 259
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    .line 260
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 261
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    goto :goto_3

    .line 263
    :cond_4
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbor:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbot:I

    .line 264
    :cond_5
    :goto_3
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbon:I

    .line 265
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method protected final onStarted()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzpe;->onStarted()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbop:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafd:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    return-void
.end method

.method protected final onStopped()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkm()V

    .line 86
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzpe;->onStopped()V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzlh;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpk;
        }
    .end annotation

    .line 22
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzlh;->zzatq:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsp;->zzbf(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 26
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzlh;->zzatr:Lcom/google/android/gms/internal/ads/zzne;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 28
    :goto_0
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzne;->zzazg:I

    if-ge v3, v5, :cond_2

    .line 29
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzne;->zzap(I)Lcom/google/android/gms/internal/ads/zzne$zza;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzne$zza;->zzazh:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 31
    :cond_2
    invoke-interface {p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzpg;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzpd;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    .line 34
    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzlh;->zzatn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzpd;->zzat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    if-lez v3, :cond_6

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    if-lez v3, :cond_6

    .line 36
    sget v1, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    .line 37
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzlh;->zzats:F

    float-to-double v3, p2

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpd;->zza(IID)Z

    move-result v1

    goto :goto_2

    .line 38
    :cond_4
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    mul-int v1, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()I

    move-result v3

    if-gt v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    const-string v0, "MediaCodecVideoRenderer"

    .line 40
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzsy;->zzbnq:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] ["

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_6
    :goto_2
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzpd;->zzabo:Z

    if-eqz p2, :cond_7

    const/16 p2, 0x8

    goto :goto_3

    :cond_7
    const/4 p2, 0x4

    .line 42
    :goto_3
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzpd;->zzawy:Z

    if-eqz p1, :cond_8

    const/16 v2, 0x10

    :cond_8
    if-eqz v1, :cond_9

    const/4 p1, 0x3

    goto :goto_4

    :cond_9
    const/4 p1, 0x2

    :goto_4
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method

.method public final zza(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzku;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 106
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    .line 108
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-eqz p1, :cond_0

    .line 109
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzis()Lcom/google/android/gms/internal/ads/zzpd;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzpd;->zzaer:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzth;->zzn(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzlj:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzpd;->zzaer:Z

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zztd;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zztd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    .line 113
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    .line 114
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    if-eq p1, p2, :cond_7

    .line 115
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzks;->getState()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzir()Landroid/media/MediaCodec;

    move-result-object v0

    .line 119
    sget v2, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzed()V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzea()V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-eq p2, v0, :cond_5

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkl()V

    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzki()V

    if-ne p1, v1, :cond_6

    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkh()V

    return-void

    .line 130
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkk()V

    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzki()V

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 132
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-eq p2, p1, :cond_8

    .line 133
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkl()V

    .line 135
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafb:Z

    if-eqz p1, :cond_8

    .line 136
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzto;->zzc(Landroid/view/Surface;)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 139
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbon:I

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzir()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 142
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbon:I

    .line 143
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_a
    return-void

    .line 145
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpe;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zznd;)V
    .locals 1

    .line 243
    sget p1, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzawy:Z

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkj()V

    :cond_0
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzpd;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzlh;Landroid/media/MediaCrypto;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpk;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 148
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbok:[Lcom/google/android/gms/internal/ads/zzlh;

    .line 149
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    .line 150
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    .line 151
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzth;->zzi(Lcom/google/android/gms/internal/ads/zzlh;)I

    move-result v7

    .line 152
    array-length v8, v4

    const/4 v9, -0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_0

    .line 153
    new-instance v4, Lcom/google/android/gms/internal/ads/zztj;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zztj;-><init>(III)V

    goto/16 :goto_c

    .line 155
    :cond_0
    array-length v8, v4

    move v13, v6

    move v14, v7

    const/4 v6, 0x0

    move v7, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v15, v4, v5

    .line 156
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzpd;->zzabo:Z

    invoke-static {v10, v3, v15}, Lcom/google/android/gms/internal/ads/zzth;->zza(ZLcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzlh;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 157
    iget v10, v15, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    if-eq v10, v9, :cond_2

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    if-ne v10, v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :goto_2
    or-int/2addr v6, v10

    .line 158
    iget v10, v15, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 159
    iget v10, v15, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 160
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzth;->zzi(Lcom/google/android/gms/internal/ads/zzlh;)I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v14, v13

    move v13, v10

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_10

    const-string v4, "MediaCodecVideoRenderer"

    const/16 v5, 0x42

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    if-le v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    .line 166
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    goto :goto_4

    :cond_6
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    :goto_4
    if-eqz v4, :cond_7

    .line 167
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    goto :goto_5

    :cond_7
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    :goto_5
    int-to-float v8, v6

    int-to-float v10, v5

    div-float/2addr v8, v10

    .line 169
    sget-object v10, Lcom/google/android/gms/internal/ads/zzth;->zzbod:[I

    array-length v15, v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v15, :cond_f

    aget v12, v10, v11

    int-to-float v9, v12

    mul-float v9, v9, v8

    float-to-int v9, v9

    if-le v12, v5, :cond_f

    if-gt v9, v6, :cond_8

    goto :goto_a

    :cond_8
    move/from16 v16, v5

    .line 173
    sget v5, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    move/from16 v17, v6

    const/16 v6, 0x15

    if-lt v5, v6, :cond_b

    if-eqz v4, :cond_9

    move v5, v9

    goto :goto_7

    :cond_9
    move v5, v12

    :goto_7
    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    move v12, v9

    .line 176
    :goto_8
    invoke-virtual {v1, v5, v12}, Lcom/google/android/gms/internal/ads/zzpd;->zze(II)Landroid/graphics/Point;

    move-result-object v5

    .line 177
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzats:F

    .line 178
    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v12, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v18, v5

    float-to-double v5, v6

    invoke-virtual {v1, v9, v12, v5, v6}, Lcom/google/android/gms/internal/ads/zzpd;->zza(IID)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v10, v18

    goto :goto_b

    :cond_b
    const/16 v5, 0x10

    .line 181
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzsy;->zzb(II)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 182
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/ads/zzsy;->zzb(II)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    mul-int v9, v6, v5

    .line 183
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpi;->zziw()I

    move-result v12

    if-gt v9, v12, :cond_e

    .line 184
    new-instance v10, Landroid/graphics/Point;

    if-eqz v4, :cond_c

    move v8, v5

    goto :goto_9

    :cond_c
    move v8, v6

    :goto_9
    if-eqz v4, :cond_d

    move v5, v6

    .line 185
    :cond_d
    invoke-direct {v10, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_b

    :cond_e
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    move/from16 v6, v17

    const/4 v9, -0x1

    goto :goto_6

    :cond_f
    :goto_a
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_10

    .line 191
    iget v4, v10, Landroid/graphics/Point;->x:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 192
    iget v4, v10, Landroid/graphics/Point;->y:I

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 193
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzatq:Ljava/lang/String;

    .line 194
    invoke-static {v4, v7, v13}, Lcom/google/android/gms/internal/ads/zzth;->zza(Ljava/lang/String;II)I

    move-result v4

    .line 195
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    const-string v4, "MediaCodecVideoRenderer"

    const/16 v5, 0x39

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Codec max resolution adjusted to: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_10
    new-instance v4, Lcom/google/android/gms/internal/ads/zztj;

    invoke-direct {v4, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zztj;-><init>(III)V

    .line 198
    :goto_c
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbol:Lcom/google/android/gms/internal/ads/zztj;

    .line 199
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbol:Lcom/google/android/gms/internal/ads/zztj;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzth;->zzboi:Z

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzth;->zzaul:I

    .line 200
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzlh;->zzen()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v7, "max-width"

    .line 201
    iget v8, v4, Lcom/google/android/gms/internal/ads/zztj;->width:I

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v7, "max-height"

    .line 202
    iget v8, v4, Lcom/google/android/gms/internal/ads/zztj;->height:I

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 203
    iget v7, v4, Lcom/google/android/gms/internal/ads/zztj;->zzbpb:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_11

    const-string v7, "max-input-size"

    .line 204
    iget v4, v4, Lcom/google/android/gms/internal/ads/zztj;->zzbpb:I

    invoke-virtual {v3, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_11
    if-eqz v5, :cond_12

    const-string v4, "auto-frc"

    const/4 v5, 0x0

    .line 206
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_12
    if-eqz v6, :cond_13

    const-string v4, "tunneled-playback"

    const/4 v5, 0x1

    .line 209
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    .line 210
    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 213
    :cond_13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    if-nez v4, :cond_15

    .line 214
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzpd;->zzaer:Z

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzth;->zzn(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzsk;->checkState(Z)V

    .line 215
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-nez v4, :cond_14

    .line 216
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzth;->zzlj:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzpd;->zzaer:Z

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zztd;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    .line 217
    :cond_14
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    .line 218
    :cond_15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 219
    sget v1, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_16

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzawy:Z

    if-eqz v1, :cond_16

    .line 220
    new-instance v1, Lcom/google/android/gms/internal/ads/zztk;

    invoke-direct {v1, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zztk;-><init>(Lcom/google/android/gms/internal/ads/zzth;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzti;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzboy:Lcom/google/android/gms/internal/ads/zztk;

    :cond_16
    return-void
.end method

.method protected final zza([Lcom/google/android/gms/internal/ads/zzlh;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzku;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbok:[Lcom/google/android/gms/internal/ads/zzlh;

    .line 52
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboz:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 53
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboz:J

    goto :goto_1

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const-string v0, "MediaCodecVideoRenderer"

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    const/16 v1, 0x41

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    .line 58
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzpe;->zza([Lcom/google/android/gms/internal/ads/zzlh;J)V

    return-void
.end method

.method protected final zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 v3, p9

    .line 268
    :goto_0
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    aget-wide v9, v0, v5

    cmp-long v0, v3, v9

    if-ltz v0, :cond_0

    .line 269
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    aget-wide v9, v0, v5

    iput-wide v9, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboz:J

    .line 270
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    sub-int/2addr v0, v8

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    .line 271
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    invoke-static {v0, v8, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 272
    :cond_0
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboz:J

    sub-long v9, v3, v9

    if-eqz p11, :cond_1

    .line 274
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzth;->zza(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_1
    const/4 v0, 0x0

    sub-long v11, v3, p1

    .line 277
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-ne v0, v6, :cond_3

    .line 278
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzth;->zzer(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzth;->zza(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_2
    return v5

    .line 282
    :cond_3
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzafb:Z

    const/16 v6, 0x15

    if-nez v0, :cond_5

    .line 283
    sget v0, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    if-lt v0, v6, :cond_4

    .line 284
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzth;->zza(Landroid/media/MediaCodec;IJJ)V

    goto :goto_1

    .line 285
    :cond_4
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzth;->zzb(Landroid/media/MediaCodec;IJ)V

    :goto_1
    return v8

    .line 287
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzks;->getState()I

    move-result v0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_6

    return v5

    .line 289
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v13, v13, v15

    sub-long v13, v13, p3

    sub-long/2addr v11, v13

    .line 291
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    mul-long v11, v11, v15

    add-long/2addr v11, v13

    .line 293
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboe:Lcom/google/android/gms/internal/ads/zztl;

    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zztl;->zzg(JJ)J

    move-result-wide v11

    sub-long v3, v11, v13

    .line 294
    div-long/2addr v3, v15

    .line 296
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzth;->zzer(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "dropVideoBuffer"

    .line 299
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsx;->beginSection(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 301
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsx;->endSection()V

    .line 302
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zznc;->zzabm:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zznc;->zzabm:I

    .line 303
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbop:I

    add-int/2addr v0, v8

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbop:I

    .line 304
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboq:I

    add-int/2addr v0, v8

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboq:I

    .line 305
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboq:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zznc;->zzazd:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zznc;->zzazd:I

    .line 306
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzth;->zzbop:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzth;->zzboh:I

    if-ne v0, v1, :cond_7

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkm()V

    :cond_7
    return v8

    .line 309
    :cond_8
    sget v0, Lcom/google/android/gms/internal/ads/zzsy;->SDK_INT:I

    if-lt v0, v6, :cond_9

    const-wide/32 v13, 0xc350

    cmp-long v0, v3, v13

    if-gez v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v9

    move-wide v5, v11

    .line 311
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzth;->zza(Landroid/media/MediaCodec;IJJ)V

    return v8

    :cond_9
    const-wide/16 v11, 0x7530

    cmp-long v0, v3, v11

    if-gez v0, :cond_b

    const-wide/16 v5, 0x2af8

    cmp-long v0, v3, v5

    if-lez v0, :cond_a

    const-wide/16 v5, 0x2710

    sub-long/2addr v3, v5

    .line 315
    :try_start_0
    div-long/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 318
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 319
    :cond_a
    :goto_2
    invoke-direct {v7, v1, v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzth;->zzb(Landroid/media/MediaCodec;IJ)V

    return v8

    :cond_b
    return v5
.end method

.method protected final zza(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzlh;)Z
    .locals 0

    .line 267
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzth;->zza(ZLcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzlh;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzlh;->width:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbol:Lcom/google/android/gms/internal/ads/zztj;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zztj;->width:I

    if-gt p1, p2, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzlh;->height:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbol:Lcom/google/android/gms/internal/ads/zztj;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zztj;->height:I

    if-gt p1, p2, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzlh;->zzafs:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbol:Lcom/google/android/gms/internal/ads/zztj;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zztj;->zzbpb:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzpd;)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzpd;->zzaer:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzth;->zzn(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final zzd(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzku;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzpe;->zzd(JZ)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzki()V

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboq:I

    .line 63
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboj:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboz:J

    .line 65
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    :cond_0
    if-eqz p3, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkh()V

    return-void

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboo:J

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzlh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzku;
        }
    .end annotation

    .line 236
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzd(Lcom/google/android/gms/internal/ads/zzlh;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzto;->zzc(Lcom/google/android/gms/internal/ads/zzlh;)V

    .line 239
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzlh;->zzaft:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzlh;->zzaft:F

    .line 240
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbos:F

    .line 241
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzth;->zzj(Lcom/google/android/gms/internal/ads/zzlh;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbor:I

    return-void
.end method

.method protected final zzd(Ljava/lang/String;JJ)V
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzto;->zzc(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzdz()V
    .locals 3

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaff:I

    .line 89
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafg:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 90
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafh:F

    .line 91
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbos:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboz:J

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbpa:I

    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzkk()V

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzth;->zzki()V

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboe:Lcom/google/android/gms/internal/ads/zztl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztl;->disable()V

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboy:Lcom/google/android/gms/internal/ads/zztk;

    .line 98
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzawy:Z

    .line 99
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzdz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznc;->zzdk()V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzto;->zzd(Lcom/google/android/gms/internal/ads/zznc;)V

    return-void

    :catchall_0
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznc;->zzdk()V

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzto;->zzd(Lcom/google/android/gms/internal/ads/zznc;)V

    throw v0
.end method

.method protected final zzed()V
    .locals 4

    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzpe;->zzed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-ne v1, v2, :cond_0

    .line 225
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 227
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    return-void

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 228
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 229
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    .line 230
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 232
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbom:Landroid/view/Surface;

    :cond_3
    throw v1
.end method

.method protected final zzg(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzku;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzg(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzks;->zzgq()Lcom/google/android/gms/internal/ads/zzlq;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzaul:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaul:I

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaul:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzawy:Z

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbhl:Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzto;->zzc(Lcom/google/android/gms/internal/ads/zznc;)V

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzboe:Lcom/google/android/gms/internal/ads/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zztl;->enable()V

    return-void
.end method

.method final zzkj()V
    .locals 2

    .line 355
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzafb:Z

    .line 357
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->zzbof:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzth;->zzaez:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzto;->zzc(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
