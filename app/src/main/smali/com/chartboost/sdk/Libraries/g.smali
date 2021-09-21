.class public Lcom/chartboost/sdk/Libraries/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, ".chartboost"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 20
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v0, "css"

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->b:Ljava/io/File;

    .line 24
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v0, "html"

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->c:Ljava/io/File;

    .line 25
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v0, "images"

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    .line 26
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v0, "js"

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->e:Ljava/io/File;

    .line 27
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v0, "templates"

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->f:Ljava/io/File;

    .line 28
    iget-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v0, "videos"

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method
