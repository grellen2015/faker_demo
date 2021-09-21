.class public Lcom/ironsource/eventsmodule/EventsSender;
.super Landroid/os/AsyncTask;
.source "EventsSender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final APPLICATION_JSON:Ljava/lang/String;

.field private final CONTENT_TYPE_FIELD:Ljava/lang/String;

.field private final SERVER_REQUEST_ENCODING:Ljava/lang/String;

.field private final SERVER_REQUEST_METHOD:Ljava/lang/String;

.field private final SERVER_REQUEST_TIMEOUT:I

.field private extraData:Ljava/util/ArrayList;

.field private mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x3a98

    .line 20
    iput v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_TIMEOUT:I

    const-string v0, "POST"

    .line 21
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_METHOD:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 22
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_ENCODING:Ljava/lang/String;

    const-string v0, "Content-Type"

    .line 23
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->CONTENT_TYPE_FIELD:Ljava/lang/String;

    const-string v0, "application/json"

    .line 24
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->APPLICATION_JSON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/eventsmodule/IEventsSenderResultListener;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x3a98

    .line 20
    iput v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_TIMEOUT:I

    const-string v0, "POST"

    .line 21
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_METHOD:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 22
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->SERVER_REQUEST_ENCODING:Ljava/lang/String;

    const-string v0, "Content-Type"

    .line 23
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->CONTENT_TYPE_FIELD:Ljava/lang/String;

    const-string v0, "application/json"

    .line 24
    iput-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->APPLICATION_JSON:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7

    const/4 v0, 0x0

    .line 49
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x1

    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 50
    aget-object v3, p1, v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/ironsource/eventsmodule/EventsSender;->extraData:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    .line 52
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 53
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "POST"

    .line 54
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    .line 55
    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 57
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 62
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 66
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 68
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 72
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 74
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 76
    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/ironsource/eventsmodule/EventsSender;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    iget-object v1, p0, Lcom/ironsource/eventsmodule/EventsSender;->extraData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/eventsmodule/IEventsSenderResultListener;->onEventsSenderResult(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ironsource/eventsmodule/EventsSender;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
