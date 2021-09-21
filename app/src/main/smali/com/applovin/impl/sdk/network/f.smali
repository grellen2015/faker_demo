.class public Lcom/applovin/impl/sdk/network/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/network/f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->a(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->b(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->c(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->d(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->e(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/f$a;->f(Lcom/applovin/impl/sdk/network/f$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/f;->g:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/impl/sdk/network/f;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/network/f$a;Lcom/applovin/impl/sdk/network/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/f;-><init>(Lcom/applovin/impl/sdk/network/f$a;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uniqueId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backupUrl"

    const-string v3, ""

    invoke-static {p1, v2, v3, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attemptNumber"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "parameters"

    invoke-static {p1, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "parameters"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :goto_0
    const-string v4, "httpHeaders"

    invoke-static {p1, v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "httpHeaders"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :goto_1
    const-string v5, "requestBody"

    invoke-static {p1, v5}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "requestBody"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    :goto_2
    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    iput-object v4, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    iput-object v5, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    const-string p2, "isEncodingEnabled"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/f;->g:Z

    iput v2, p0, Lcom/applovin/impl/sdk/network/f;->h:I

    return-void
.end method

.method public static k()Lcom/applovin/impl/sdk/network/f$a;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/network/f$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/network/f$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    return-object v0
.end method

.method d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    return-object v0
.end method

.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/applovin/impl/sdk/network/f;

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/f;->g:Z

    return v0
.end method

.method g()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/network/f;->h:I

    return v0
.end method

.method h()V
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/network/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/sdk/network/f;->h:I

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method i()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "postback_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    return-void
.end method

.method j()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "uniqueId"

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "targetUrl"

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "backupUrl"

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEncodingEnabled"

    iget-boolean v2, p0, Lcom/applovin/impl/sdk/network/f;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "attemptNumber"

    iget v2, p0, Lcom/applovin/impl/sdk/network/f;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v1, "parameters"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/f;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v1, "httpHeaders"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    if-eqz v1, :cond_2

    const-string v1, "requestBody"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostbackRequest{uniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "targetUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", backupUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", attemptNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/sdk/network/f;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
