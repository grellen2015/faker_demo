.class public Lcom/vungle/warren/utility/UnzipUtility;
.super Ljava/lang/Object;
.source "UnzipUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/UnzipUtility$Filter;,
        Lcom/vungle/warren/utility/UnzipUtility$ZipSecurityException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/vungle/warren/utility/UnzipUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/utility/UnzipUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x0

    .line 92
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v1, 0x1000

    .line 93
    :try_start_2
    new-array v1, v1, [B

    .line 95
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 96
    invoke-virtual {v2, v1, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catch_1
    move-object v3, v1

    .line 101
    :catch_2
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 103
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 106
    :cond_2
    invoke-static {p0, p1}, Lcom/vungle/warren/utility/UnzipUtility;->extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    :cond_3
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 110
    :goto_3
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p0

    .line 109
    :goto_4
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, p1, v0}, Lcom/vungle/warren/utility/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/utility/UnzipUtility$Filter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 45
    :cond_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_4

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    .line 53
    invoke-interface {p2, v2}, Lcom/vungle/warren/utility/UnzipUtility$Filter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    :cond_1
    invoke-static {v2, p1}, Lcom/vungle/warren/utility/UnzipUtility;->validateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 57
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    goto :goto_1

    .line 63
    :cond_2
    invoke-static {v0, v2}, Lcom/vungle/warren/utility/UnzipUtility;->extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    .line 64
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 69
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v1
.end method

.method private static validateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 125
    :cond_0
    sget-object p0, Lcom/vungle/warren/utility/UnzipUtility;->TAG:Ljava/lang/String;

    const-string p1, "File is outside extraction target directory."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance p0, Lcom/vungle/warren/utility/UnzipUtility$ZipSecurityException;

    const-string p1, "File is outside extraction target directory."

    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/UnzipUtility$ZipSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
