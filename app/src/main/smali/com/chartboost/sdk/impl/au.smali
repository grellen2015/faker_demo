.class public Lcom/chartboost/sdk/impl/au;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/chartboost/sdk/impl/av$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/Surface;

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:Landroid/media/MediaPlayer$OnCompletionListener;

.field private l:Landroid/media/MediaPlayer$OnPreparedListener;

.field private m:I

.field private n:Landroid/media/MediaPlayer$OnErrorListener;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const-string p1, "VideoTextureView"

    .line 63
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 84
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->f:I

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->g:Landroid/view/Surface;

    .line 88
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    .line 100
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->f()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 346
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    if-eqz p1, :cond_0

    .line 350
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->f:I

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->i:I

    .line 115
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->j:I

    .line 116
    invoke-virtual {p0, p0}, Lcom/chartboost/sdk/impl/au;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/au;->setFocusable(Z)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/au;->setFocusableInTouchMode(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->requestFocus()Z

    .line 120
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 121
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->f:I

    return-void
.end method

.method private g()V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->g:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 172
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/au;->a(Z)V

    .line 180
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->h()V

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 183
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    .line 184
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 185
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 186
    iput v2, p0, Lcom/chartboost/sdk/impl/au;->d:I

    .line 187
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 188
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 190
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->m:I

    .line 193
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 197
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 199
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/au;->g:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 200
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 201
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 202
    iget-object v3, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 205
    iput v1, p0, Lcom/chartboost/sdk/impl/au;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "VideoTextureView"

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    iput v2, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 215
    iput v2, p0, Lcom/chartboost/sdk/impl/au;->f:I

    .line 216
    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v2, v1, v0}, Lcom/chartboost/sdk/impl/au;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_1
    move-exception v3

    const-string v4, "VideoTextureView"

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    iput v2, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 209
    iput v2, p0, Lcom/chartboost/sdk/impl/au;->f:I

    .line 210
    iget-object v2, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v2, v1, v0}, Lcom/chartboost/sdk/impl/au;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 223
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x13

    .line 226
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    .line 228
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/impl/au;->j:I

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/au;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "play video"

    const-string v2, "read size error"

    .line 233
    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private i()Z
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 356
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->i()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 358
    iput v1, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 360
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/au;->f:I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 394
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 396
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->o:I

    goto :goto_0

    .line 398
    :cond_0
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->o:I

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 4

    .line 133
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->i:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/chartboost/sdk/impl/au;->j:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 135
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->i:I

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float p2, p2

    iget v1, p0, Lcom/chartboost/sdk/impl/au;->j:I

    int-to-float v1, v1

    div-float v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 136
    iget v1, p0, Lcom/chartboost/sdk/impl/au;->i:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/au;->j:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    .line 138
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr v1, p1

    div-float/2addr v0, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    div-float/2addr p2, v3

    .line 139
    invoke-virtual {v2, v1, v0, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/au;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->n:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/au;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->b:Landroid/net/Uri;

    .line 149
    iput-object p2, p0, Lcom/chartboost/sdk/impl/au;->c:Ljava/util/Map;

    const/4 p1, 0x0

    .line 150
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->o:I

    .line 151
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->g()V

    .line 152
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->requestLayout()V

    .line 153
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 364
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->i()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 367
    iput v1, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 370
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/au;->f:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 375
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->d:I

    if-lez v0, :cond_0

    .line 377
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->d:I

    return v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/au;->d:I

    .line 380
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->d:I

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 382
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->d:I

    .line 383
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 387
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 403
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 303
    iput p2, p0, Lcom/chartboost/sdk/impl/au;->m:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x5

    .line 269
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->f:I

    .line 270
    iget v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    if-eq v0, p1, :cond_0

    .line 271
    iput p1, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 272
    iget-object p1, p0, Lcom/chartboost/sdk/impl/au;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/chartboost/sdk/impl/au;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "VideoTextureView"

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->g()V

    return p1

    :cond_0
    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 289
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->f:I

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->n:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->n:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p2

    if-eqz p2, :cond_1

    return p1

    :cond_1
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x2

    .line 248
    iput v0, p0, Lcom/chartboost/sdk/impl/au;->e:I

    .line 250
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/au;->i:I

    .line 251
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/au;->j:I

    .line 252
    iget-object p1, p0, Lcom/chartboost/sdk/impl/au;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/chartboost/sdk/impl/au;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 256
    :cond_0
    iget p1, p0, Lcom/chartboost/sdk/impl/au;->o:I

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/au;->a(I)V

    .line 262
    :cond_1
    iget p1, p0, Lcom/chartboost/sdk/impl/au;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->a()V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 419
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/au;->g:Landroid/view/Surface;

    .line 420
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/au;->g()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    .line 426
    iput-object p1, p0, Lcom/chartboost/sdk/impl/au;->g:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 427
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/au;->a(Z)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 433
    iget p1, p0, Lcom/chartboost/sdk/impl/au;->f:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 434
    :goto_0
    iget-object p2, p0, Lcom/chartboost/sdk/impl/au;->h:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 435
    iget p1, p0, Lcom/chartboost/sdk/impl/au;->o:I

    if-eqz p1, :cond_1

    .line 436
    iget p1, p0, Lcom/chartboost/sdk/impl/au;->o:I

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/au;->a(I)V

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->a()V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 239
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/chartboost/sdk/impl/au;->i:I

    .line 240
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/au;->j:I

    .line 241
    iget p1, p0, Lcom/chartboost/sdk/impl/au;->i:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/chartboost/sdk/impl/au;->j:I

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/au;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/au;->a(II)V

    :cond_0
    return-void
.end method
