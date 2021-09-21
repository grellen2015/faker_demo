.class public Lcom/chartboost/sdk/impl/at;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
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

.field private g:Landroid/view/SurfaceHolder;

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string p1, "VideoSurfaceView"

    .line 57
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 78
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/SurfaceHolder;

    .line 82
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    .line 96
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->f()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    if-eqz p1, :cond_0

    .line 396
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->f:I

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    .line 158
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    .line 159
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 160
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 161
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/at;->setFocusable(Z)V

    .line 162
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/at;->setFocusableInTouchMode(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->requestFocus()Z

    .line 164
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 165
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->f:I

    return-void
.end method

.method private g()V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 204
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/at;->a(Z)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 212
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    .line 213
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 214
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 215
    iput v2, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 216
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 217
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 218
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 219
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->o:I

    .line 220
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 221
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 222
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 225
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 229
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 231
    iget-object v3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 234
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "VideoSurfaceView"

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    iput v2, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 244
    iput v2, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 245
    iget-object v2, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v2, v1, v0}, Lcom/chartboost/sdk/impl/at;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_1
    move-exception v3

    const-string v4, "VideoSurfaceView"

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    iput v2, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 238
    iput v2, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 239
    iget-object v2, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v2, v1, v0}, Lcom/chartboost/sdk/impl/at;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private h()Z
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

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

    .line 402
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->h()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 404
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 406
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 440
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 442
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->q:I

    goto :goto_0

    .line 444
    :cond_0
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->q:I

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/at;->a(Landroid/net/Uri;Ljava/util/Map;)V

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

    .line 180
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->b:Landroid/net/Uri;

    .line 181
    iput-object p2, p0, Lcom/chartboost/sdk/impl/at;->c:Ljava/util/Map;

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->q:I

    .line 183
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->g()V

    .line 184
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 410
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->h()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 413
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 416
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    if-lez v0, :cond_0

    .line 423
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    return v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 426
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 428
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 429
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 433
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 449
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

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

    .line 324
    iput p2, p0, Lcom/chartboost/sdk/impl/at;->o:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x5

    .line 298
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 299
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    if-eq v0, p1, :cond_0

    .line 300
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 301
    iget-object p1, p0, Lcom/chartboost/sdk/impl/at;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/chartboost/sdk/impl/at;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "VideoSurfaceView"

    .line 309
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

    const/4 p1, -0x1

    .line 310
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 311
    iput p1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    .line 314
    iget-object p1, p0, Lcom/chartboost/sdk/impl/at;->p:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/chartboost/sdk/impl/at;->p:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x0

    .line 111
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/at;->getDefaultSize(II)I

    move-result p1

    .line 112
    invoke-static {v0, p2}, Lcom/chartboost/sdk/impl/at;->getDefaultSize(II)I

    move-result p2

    .line 114
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    if-lez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/chartboost/sdk/impl/at;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 116
    iget v1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/chartboost/sdk/impl/at;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p2, p2

    mul-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, v0

    .line 121
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/at;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x2

    .line 261
    iput v0, p0, Lcom/chartboost/sdk/impl/at;->e:I

    .line 263
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/at;->i:I

    .line 264
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/at;->j:I

    .line 265
    iget-object p1, p0, Lcom/chartboost/sdk/impl/at;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/chartboost/sdk/impl/at;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 269
    :cond_0
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->q:I

    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/at;->a(I)V

    .line 275
    :cond_1
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/chartboost/sdk/impl/at;->j:I

    if-eqz p1, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    iget v2, p0, Lcom/chartboost/sdk/impl/at;->j:I

    invoke-interface {p1, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 279
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->k:I

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    if-ne p1, v1, :cond_3

    iget p1, p0, Lcom/chartboost/sdk/impl/at;->l:I

    iget v1, p0, Lcom/chartboost/sdk/impl/at;->j:I

    if-ne p1, v1, :cond_3

    .line 283
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    if-ne p1, v0, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->a()V

    goto :goto_0

    .line 290
    :cond_2
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    if-ne p1, v0, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 252
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/chartboost/sdk/impl/at;->i:I

    .line 253
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/at;->j:I

    .line 254
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/chartboost/sdk/impl/at;->j:I

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget p2, p0, Lcom/chartboost/sdk/impl/at;->i:I

    iget p3, p0, Lcom/chartboost/sdk/impl/at;->j:I

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 363
    iput p3, p0, Lcom/chartboost/sdk/impl/at;->k:I

    .line 364
    iput p4, p0, Lcom/chartboost/sdk/impl/at;->l:I

    .line 365
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->f:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 366
    :goto_0
    iget v1, p0, Lcom/chartboost/sdk/impl/at;->i:I

    if-ne v1, p3, :cond_1

    iget p3, p0, Lcom/chartboost/sdk/impl/at;->j:I

    if-ne p3, p4, :cond_1

    const/4 p2, 0x1

    .line 367
    :cond_1
    iget-object p3, p0, Lcom/chartboost/sdk/impl/at;->h:Landroid/media/MediaPlayer;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 368
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->q:I

    if-eqz p1, :cond_2

    .line 369
    iget p1, p0, Lcom/chartboost/sdk/impl/at;->q:I

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/at;->a(I)V

    .line 371
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->a()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/SurfaceHolder;

    .line 377
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/at;->g()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->g:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 383
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/at;->a(Z)V

    return-void
.end method
