.class Lcom/moat/analytics/mobile/vng/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->b:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->c:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/vng/l;->d:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/moat/analytics/mobile/vng/l;->e:I

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sa"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fd28fb8353d87dc1a1db3246752e21ccc3328cbf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "8f1d08a2d6496191a5ebae8f0590f513e2619489"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/l;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/vng/l;->b(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/vng/l;->a:Z

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/vng/l;->b:Z

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/vng/l;->c:Z

    iget-boolean v1, p0, Lcom/moat/analytics/mobile/vng/l;->c:Z

    if-eqz v1, :cond_2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/vng/l;->b:Z

    :cond_2
    const-string p1, "in"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "in"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_3

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_3

    iput p1, p0, Lcom/moat/analytics/mobile/vng/l;->d:I

    :cond_3
    const-string p1, "es"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "es"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/moat/analytics/mobile/vng/l;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->b:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/vng/l;->d:I

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 6

    const/16 v0, 0x10

    const/4 v1, 0x1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "ob"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "ob"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    return v1
.end method

.method private b(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ap"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/moat/analytics/mobile/vng/q;->d()Lcom/moat/analytics/mobile/vng/q$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/q$a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ap"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    :cond_1
    return v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->b:Z

    return v0
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->c:Z

    return v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/moat/analytics/mobile/vng/l;->d:I

    return v0
.end method

.method d()I
    .locals 1

    iget v0, p0, Lcom/moat/analytics/mobile/vng/l;->e:I

    return v0
.end method

.method e()Lcom/moat/analytics/mobile/vng/v$d;
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/l;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/moat/analytics/mobile/vng/v$d;->b:Lcom/moat/analytics/mobile/vng/v$d;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/moat/analytics/mobile/vng/v$d;->a:Lcom/moat/analytics/mobile/vng/v$d;

    :goto_0
    return-object v0
.end method
