.class public Lcom/chartboost/sdk/Libraries/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;

.field private d:Landroid/graphics/Bitmap;

.field private final e:Lcom/chartboost/sdk/Libraries/f;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/chartboost/sdk/Libraries/f;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    .line 36
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    .line 37
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    .line 40
    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/h$a;->e:Lcom/chartboost/sdk/Libraries/f;

    return-void
.end method

.method private g()V
    .locals 3

    .line 150
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 151
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 153
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    .line 154
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MemoryBitmap"

    const-string v2, "Error decoding file size"

    .line 156
    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "decodeSize"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/h$a;->b()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MemoryBitmap"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading image \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' from cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->e:Lcom/chartboost/sdk/Libraries/f;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/io/File;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MemoryBitmap"

    const-string v1, "decode() - bitmap not found"

    .line 60
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 65
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 66
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 71
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 72
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const v3, 0x8000

    .line 73
    new-array v3, v3, [B

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 75
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    .line 78
    :try_start_0
    array-length v2, v0

    invoke-static {v0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MemoryBitmap"

    const-string v3, "Exception raised decoding bitmap"

    .line 83
    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "decodeByteArray"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v2

    const-string v3, "MemoryBitmap"

    const-string v5, "OutOfMemoryError suppressed - trying larger sample size"

    .line 80
    invoke-static {v3, v5, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 95
    :cond_3
    :goto_2
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->a:I

    return v0
.end method

.method public d()V
    .locals 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "recycle"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public e()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    if-ltz v0, :cond_1

    .line 125
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    return v0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h$a;->g()V

    .line 128
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 138
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    if-ltz v0, :cond_1

    .line 139
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    return v0

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/h$a;->g()V

    .line 142
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h$a;->g:I

    return v0
.end method
