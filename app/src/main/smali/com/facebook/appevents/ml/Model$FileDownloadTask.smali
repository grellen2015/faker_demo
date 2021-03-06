.class Lcom/facebook/appevents/ml/Model$FileDownloadTask;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field destFile:Ljava/io/File;

.field onSuccess:Ljava/lang/Runnable;

.field uriStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->uriStr:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->destFile:Ljava/io/File;

    .line 285
    iput-object p3, p0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->onSuccess:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 291
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "facebook_ml/"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 298
    :cond_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->uriStr:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 302
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 304
    new-array p1, v0, [B

    .line 305
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 306
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 308
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->destFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 310
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 311
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    const/4 p1, 0x1

    .line 312
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 278
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 321
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 278
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
