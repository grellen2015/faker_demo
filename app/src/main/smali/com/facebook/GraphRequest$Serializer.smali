.class Lcom/facebook/GraphRequest$Serializer;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/OutputStream;

.field private useUrlEncode:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V
    .locals 1

    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2038
    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    const/4 v0, 0x0

    .line 2039
    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    .line 2042
    iput-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    .line 2043
    iput-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    .line 2044
    iput-boolean p3, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    return-void
.end method

.method private getInvalidTypeError()Ljava/lang/RuntimeException;
    .locals 2

    .line 2080
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2233
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_1

    .line 2234
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2237
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {}, Lcom/facebook/GraphRequest;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2238
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 2239
    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 2243
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2245
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 2244
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2245
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2243
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "image/png"

    .line 2123
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string p2, ""

    const/4 v0, 0x0

    .line 2126
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2127
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2128
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz p2, :cond_0

    .line 2129
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<Image>"

    invoke-virtual {p2, p1, v0}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content/unknown"

    .line 2134
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    const-string v0, ""

    const/4 v1, 0x0

    .line 2136
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2138
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "<Data: %d>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length p2, p2

    .line 2141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2139
    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2217
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    .line 2218
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string p1, "; filename=\"%s\""

    .line 2220
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p1, ""

    .line 2222
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    const-string p1, "%s: %s"

    const/4 p2, 0x2

    .line 2224
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Content-Type"

    aput-object v0, p2, v2

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string p1, ""

    .line 2226
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2228
    :cond_2
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string p3, "%s="

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    .line 2150
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of p3, p3, Lcom/facebook/ProgressNoopOutputStream;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 2155
    invoke-static {p2}, Lcom/facebook/internal/Utility;->getContentSize(Landroid/net/Uri;)J

    move-result-wide p2

    .line 2157
    iget-object v1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v1, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {v1, p2, p3}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    const/4 p2, 0x0

    goto :goto_0

    .line 2160
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 2161
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 2162
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 2163
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p2, p3}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p2

    add-int/2addr p2, v0

    :goto_0
    const-string p3, ""

    .line 2166
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2167
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2168
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz p3, :cond_2

    .line 2169
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2169
    invoke-virtual {p3, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, "content/unknown"

    .line 2183
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of p3, p3, Lcom/facebook/ProgressNoopOutputStream;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 2189
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast p3, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    const/4 p2, 0x0

    goto :goto_0

    .line 2191
    :cond_1
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2193
    iget-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p3, p2}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p2

    add-int/2addr p2, v0

    :goto_0
    const-string p3, ""

    .line 2195
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2196
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2197
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz p3, :cond_2

    .line 2198
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2198
    invoke-virtual {p3, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2250
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    iget-boolean p1, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez p1, :cond_0

    const-string p1, "\r\n"

    const/4 p2, 0x0

    .line 2252
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/RequestOutputStream;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/RequestOutputStream;

    invoke-interface {v0, p3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/GraphRequest;)V

    .line 2052
    :cond_0
    invoke-static {p2}, Lcom/facebook/GraphRequest;->access$000(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2053
    invoke-static {p2}, Lcom/facebook/GraphRequest;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2054
    :cond_1
    instance-of p3, p2, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    .line 2055
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2056
    :cond_2
    instance-of p3, p2, [B

    if-eqz p3, :cond_3

    .line 2057
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2058
    :cond_3
    instance-of p3, p2, Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 2059
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2060
    :cond_4
    instance-of p3, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz p3, :cond_5

    .line 2061
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2062
    :cond_5
    instance-of p3, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz p3, :cond_8

    .line 2063
    check-cast p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 2065
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->getResource()Landroid/os/Parcelable;

    move-result-object p3

    .line 2066
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->getMimeType()Ljava/lang/String;

    move-result-object p2

    .line 2067
    instance-of v0, p3, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    .line 2068
    check-cast p3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2069
    :cond_6
    instance-of v0, p3, Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 2070
    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2072
    :cond_7
    invoke-direct {p0}, Lcom/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2075
    :cond_8
    invoke-direct {p0}, Lcom/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public writeRecordBoundary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2205
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_0

    const-string v0, "--%s"

    const/4 v1, 0x1

    .line 2206
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/GraphRequest;->access$200()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2088
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/RequestOutputStream;

    if-nez v0, :cond_0

    .line 2089
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/RequestOutputStream;

    const/4 v1, 0x0

    .line 2094
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "["

    const/4 v2, 0x0

    .line 2095
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2097
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphRequest;

    .line 2098
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2099
    invoke-interface {v0, v3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/GraphRequest;)V

    const/4 v3, 0x1

    if-lez v1, :cond_1

    const-string v5, ",%s"

    .line 2101
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v5, "%s"

    .line 2103
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p3, "]"

    .line 2107
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p3, v0}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2108
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz p3, :cond_3

    .line 2109
    iget-object p3, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2114
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%s"

    const/4 v1, 0x1

    .line 2115
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2116
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2117
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
