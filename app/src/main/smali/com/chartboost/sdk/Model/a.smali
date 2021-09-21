.class public Lcom/chartboost/sdk/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:I

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final o:I

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Lcom/chartboost/sdk/Model/b;

.field public final s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/chartboost/sdk/Model/a;->b:I

    .line 56
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    const-string v0, "ad_id"

    .line 58
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    const-string v0, "cgn"

    .line 59
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    const-string v0, "creative"

    .line 60
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    const-string v0, "deep-link"

    .line 61
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Ljava/lang/String;

    const-string v0, "link"

    .line 62
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->j:Ljava/lang/String;

    const-string v0, "to"

    .line 63
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->m:Ljava/lang/String;

    const-string v0, "animation"

    .line 64
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Model/a;->o:I

    const-string v0, "media-type"

    .line 65
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v0, "name"

    .line 66
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->q:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->s:Ljava/util/HashSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    const-string p1, ""

    const-string p3, "webview"

    .line 76
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "elements"

    .line 77
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v3, p1

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 78
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 79
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    .line 80
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    .line 81
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    .line 82
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    .line 83
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "param"

    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 86
    iget-object v7, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "reward_amount"

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_0
    const-string v6, "reward_currency"

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v4

    goto :goto_2

    :cond_1
    const-string v8, "html"

    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v6, "body"

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v6, v5

    .line 116
    :cond_3
    :goto_1
    new-instance v8, Lcom/chartboost/sdk/Model/b;

    invoke-direct {v8, v7, v5, v4}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 120
    :cond_5
    iput v2, p0, Lcom/chartboost/sdk/Model/a;->k:I

    .line 121
    iput-object v3, p0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    const-string v1, "body"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Model/b;

    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    .line 123
    iget-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    if-eqz p1, :cond_8

    const-string p1, "template"

    .line 125
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    const-string p1, "events"

    .line 127
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 129
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 133
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 134
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 136
    :cond_6
    iget-object v2, p0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const-string p1, "certification_providers"

    .line 140
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 142
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_f

    .line 143
    iget-object p2, p0, Lcom/chartboost/sdk/Model/a;->s:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 124
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "WebView AdUnit does not have a template html body asset"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/4 p1, 0x0

    if-eqz p3, :cond_a

    const-string p3, "icons"

    .line 148
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "lg"

    .line 149
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "/"

    .line 150
    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p3, v1

    .line 151
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 152
    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    const-string v2, "lg"

    new-instance v3, Lcom/chartboost/sdk/Model/b;

    const-string v4, "inPlayIcons"

    invoke-direct {v3, v4, p3, p2}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iput v0, p0, Lcom/chartboost/sdk/Model/a;->k:I

    const-string p2, ""

    .line 154
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    goto :goto_9

    :cond_a
    const-string p3, "assets"

    .line 156
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 157
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "video-portrait"

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "video-landscape"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    const-string v3, "images"

    goto :goto_8

    :cond_c
    :goto_7
    const-string v3, "videos"

    :goto_8
    const-string v4, "id"

    .line 164
    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checksum"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d
    const-string v5, "url"

    .line 168
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v5, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    new-instance v6, Lcom/chartboost/sdk/Model/b;

    invoke-direct {v6, v3, v4, v2}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    const-string p3, "reward"

    .line 172
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/chartboost/sdk/Model/a;->k:I

    const-string p3, "currency-name"

    .line 173
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->l:Ljava/lang/String;

    .line 175
    :goto_9
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    const-string p1, ""

    .line 176
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    :cond_f
    return-void
.end method
