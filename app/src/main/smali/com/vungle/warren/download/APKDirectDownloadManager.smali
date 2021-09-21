.class public Lcom/vungle/warren/download/APKDirectDownloadManager;
.super Ljava/lang/Object;
.source "APKDirectDownloadManager.java"


# static fields
.field private static final APK_POSTFIX:Ljava/lang/String; = "apk"

.field public static final DIRECT_DOWNLOAD_FLAG_DISABLED:I = 0x0

.field public static final DIRECT_DOWNLOAD_FLAG_ENABLED:I = 0x1

.field public static final DIRECT_DOWNLOAD_FLAG_NOT_SET:I = -0x1

.field private static final FOLDER_APK:Ljava/lang/String; = "apk"

.field private static final FOLDER_NAME:Ljava/lang/String; = "apks_vungle"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "1"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "ApkDirectDownload"

.field private static final TAG:Ljava/lang/String; = "DirectDownloadManager"

.field private static _instance:Lcom/vungle/warren/download/APKDirectDownloadManager;


# instance fields
.field private apkDirectDownloadStatus:I

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private downloader:Lcom/vungle/warren/downloader/AssetDownloader;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notifyManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/vungle/warren/download/APKDirectDownloadManager;

    invoke-direct {v0}, Lcom/vungle/warren/download/APKDirectDownloadManager;-><init>()V

    sput-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notificationList:Ljava/util/List;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->apkDirectDownloadStatus:I

    return-void
.end method

.method static synthetic access$000()Lcom/vungle/warren/download/APKDirectDownloadManager;
    .locals 1

    .line 39
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vungle/warren/download/APKDirectDownloadManager;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->dismissNotification(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/download/APKDirectDownloadManager;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notificationList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/download/APKDirectDownloadManager;ILcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/download/APKDirectDownloadManager;->notifyProgress(ILcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vungle/warren/download/APKDirectDownloadManager;Ljava/io/File;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->installApk(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vungle/warren/download/APKDirectDownloadManager;)Ljava/io/File;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getCacheDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private checkExternalStorageAvailable()Z
    .locals 4

    .line 266
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DirectDownloadManager"

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage state error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clearDownloadApkCache()V
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vungle/warren/download/APKDirectDownloadManager$2;

    invoke-direct {v1, p0}, Lcom/vungle/warren/download/APKDirectDownloadManager$2;-><init>(Lcom/vungle/warren/download/APKDirectDownloadManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private dismissNotification(I)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notifyManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static download(Ljava/lang/String;)V
    .locals 10

    .line 133
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 141
    :cond_1
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    invoke-static {p0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->isApkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 145
    sget-object v2, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iget-object v2, v2, Lcom/vungle/warren/download/APKDirectDownloadManager;->notificationList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v2, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    invoke-direct {v2, v0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getApkDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "DirectDownloadManager"

    const-string v1, "apk file is missing!"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    invoke-direct {v0, p0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->openUrl(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_2
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/vungle/warren/locale/LocaleString;->getLocaleText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 156
    new-instance v2, Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v2

    move-object v6, p0

    invoke-direct/range {v3 .. v9}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 158
    sget-object p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iget-object p0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    new-instance v3, Lcom/vungle/warren/download/APKDirectDownloadManager$1;

    invoke-direct {v3, v1, v0}, Lcom/vungle/warren/download/APKDirectDownloadManager$1;-><init>(ILjava/io/File;)V

    invoke-virtual {p0, v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/ui/VungleWebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "intent_url"

    .line 199
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 200
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private getApkDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 251
    invoke-direct {p0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 255
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 260
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "apk"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getCacheDirectory()Ljava/io/File;
    .locals 3

    .line 282
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "apks_vungle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 369
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iget-object v0, v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->context:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iget-object v0, v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/vungle/warren/downloader/AssetDownloader;)V
    .locals 2

    .line 69
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->context:Ljava/lang/ref/WeakReference;

    .line 70
    sget-object p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    invoke-direct {p0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->clearDownloadApkCache()V

    .line 71
    sget-object p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iget-object p0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    if-nez p0, :cond_0

    .line 72
    sget-object p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iput-object p1, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->downloader:Lcom/vungle/warren/downloader/AssetDownloader;

    :cond_0
    return-void
.end method

.method private installApk(Ljava/io/File;)V
    .locals 3

    .line 295
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "DirectDownloadManager"

    const-string v0, "context is null"

    .line 296
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 299
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_1

    .line 305
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.vungle.download.provider"

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    :goto_0
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 312
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DirectDownloadManager"

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "identifier is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/vungle/warren/download/APKDirectDownloadManager;->dismissNotification(I)V

    return-void
.end method

.method public static isApkUrl(Ljava/lang/String;)Z
    .locals 1

    .line 208
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDirectDownloadEnabled(ZZ)Z
    .locals 3

    .line 87
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    invoke-direct {v0}, Lcom/vungle/warren/download/APKDirectDownloadManager;->checkExternalStorageAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iget v0, v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->apkDirectDownloadStatus:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    return v1

    :cond_1
    return p1

    :cond_2
    if-eqz p0, :cond_3

    return p1

    :cond_3
    return v1
.end method

.method private notifyProgress(ILcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 5

    const-string v0, "DirectDownloadManager"

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify id is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "DirectDownloadManager"

    const-string p2, "context is null."

    .line 323
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notifyManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 329
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notifyManager:Landroid/app/NotificationManager;

    .line 331
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 332
    iget-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x1080082

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 335
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "1"

    const-string v3, "ApkDirectDownload"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 337
    iget-object v2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 338
    iget-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 343
    :cond_1
    iget v0, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 344
    iget-object p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {v2}, Lcom/vungle/warren/locale/LocaleString;->getLocaleText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 345
    invoke-virtual {p2, v4, v4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 346
    :cond_2
    iget v0, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    if-eq v0, v2, :cond_4

    iget v0, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {v3}, Lcom/vungle/warren/locale/LocaleString;->getLocaleText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 352
    invoke-static {v1}, Lcom/vungle/warren/locale/LocaleString;->getLocaleText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 353
    iget p2, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0x64

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 354
    iget-object v1, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0, p2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 347
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {v3}, Lcom/vungle/warren/locale/LocaleString;->getLocaleText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 348
    invoke-static {v1}, Lcom/vungle/warren/locale/LocaleString;->getLocaleText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 349
    invoke-virtual {p2, v4, v4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 357
    :goto_1
    iget-object p2, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->notifyManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/vungle/warren/download/APKDirectDownloadManager;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    invoke-static {}, Lcom/vungle/warren/download/APKDirectDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DirectDownloadManager"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setDirectDownloadStatus(I)V
    .locals 1

    .line 128
    sget-object v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->_instance:Lcom/vungle/warren/download/APKDirectDownloadManager;

    iput p0, v0, Lcom/vungle/warren/download/APKDirectDownloadManager;->apkDirectDownloadStatus:I

    return-void
.end method
