.class public Lcom/chartboost/sdk/Model/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:Z

.field public final D:I

.field public final E:Z

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:J

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "configVariant"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->a:Ljava/lang/String;

    const-string v0, "prefetchDisable"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->b:Z

    const-string v0, "publisherDisable"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->c:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "invalidateFolderList"

    .line 77
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 81
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 83
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->d:Ljava/util/List;

    const-string v0, "native"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v1, "enabled"

    const/4 v3, 0x1

    .line 92
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->e:Z

    const-string v1, "inplayEnabled"

    .line 93
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->f:Z

    const-string v1, "interstitialEnabled"

    .line 94
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->g:Z

    const-string v1, "lockOrientation"

    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->h:Z

    const-string v1, "prefetchSession"

    const/4 v4, 0x3

    .line 96
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/Model/e;->i:I

    const-string v1, "rewardVideoEnabled"

    .line 97
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->j:Z

    const-string v0, "trackingLevels"

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    const-string v1, "critical"

    .line 103
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->k:Z

    const-string v1, "includeStackTrace"

    .line 104
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->r:Z

    const-string v1, "error"

    .line 105
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->l:Z

    const-string v1, "debug"

    .line 106
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->m:Z

    const-string v1, "session"

    .line 107
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->n:Z

    const-string v1, "system"

    .line 108
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->o:Z

    const-string v1, "timing"

    .line 109
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->p:Z

    const-string v1, "user"

    .line 110
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->q:Z

    const-string v0, "getAdRetryBaseMs"

    .line 112
    sget-wide v5, Lcom/chartboost/sdk/Libraries/b;->b:J

    invoke-virtual {p1, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/Model/e;->s:J

    const-string v0, "getAdRetryMaxBackoffExponent"

    const/4 v1, 0x5

    .line 115
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/Model/e;->t:I

    const-string v0, "webview"

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    const-string v1, "Amazon"

    .line 127
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v1, v5, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :goto_1
    const-string v5, "cacheMaxBytes"

    const/high16 v6, 0x6400000

    .line 130
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/chartboost/sdk/Model/e;->u:I

    const-string v5, "cacheMaxUnits"

    const/16 v6, 0xa

    .line 132
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0xa

    .line 133
    :goto_2
    iput v5, p0, Lcom/chartboost/sdk/Model/e;->v:I

    .line 134
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v6, "cacheTTLs"

    sget v7, Lcom/chartboost/sdk/Libraries/b;->a:I

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/chartboost/sdk/Model/e;->w:I

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "directories"

    .line 137
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 139
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_8

    .line 141
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 142
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 143
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 146
    :cond_8
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/chartboost/sdk/Model/e;->x:Ljava/util/List;

    if-eqz v1, :cond_9

    const-string v1, "enabled"

    .line 149
    invoke-static {}, Lcom/chartboost/sdk/Model/e;->a()Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->y:Z

    const-string v1, "inplayEnabled"

    .line 150
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->z:Z

    const-string v1, "interstitialEnabled"

    .line 151
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->A:Z

    const-string v1, "invalidatePendingImpression"

    .line 153
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x3

    .line 155
    :goto_5
    iput v1, p0, Lcom/chartboost/sdk/Model/e;->B:I

    const-string v1, "lockOrientation"

    .line 160
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->C:Z

    const-string v1, "prefetchSession"

    .line 161
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/Model/e;->D:I

    const-string v1, "rewardVideoEnabled"

    .line 162
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->E:Z

    const-string v1, "version"

    const-string v5, "v2"

    .line 163
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    const-string v0, "%s/%s%s"

    .line 165
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "webview"

    aput-object v5, v1, v2

    iget-object v5, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v5, v1, v3

    const-string v5, "/interstitial/get"

    const/4 v6, 0x2

    aput-object v5, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->G:Ljava/lang/String;

    const-string v0, "%s/%s/%s"

    .line 166
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "webview"

    aput-object v5, v1, v2

    iget-object v5, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v5, v1, v3

    const-string v5, "prefetch"

    aput-object v5, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->H:Ljava/lang/String;

    const-string v0, "%s/%s%s"

    .line 167
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "webview"

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "/reward/get"

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/e;->I:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    sget-object v1, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    sget-object v4, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    if-eq v1, v4, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 174
    :goto_6
    sget-object v4, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    sget-object v5, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    if-eq v4, v5, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    const-string v4, "certificationProviders"

    .line 176
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v4, "moat"

    .line 179
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v4, "moat"

    .line 181
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "loggingEnabled"

    .line 184
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "locationEnabled"

    .line 186
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "idfaCollectionEnabled"

    .line 188
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 195
    :cond_d
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/e;->J:Z

    .line 196
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/e;->K:Z

    .line 197
    iput-boolean v3, p0, Lcom/chartboost/sdk/Model/e;->L:Z

    .line 199
    invoke-static {v0}, Lcom/chartboost/sdk/impl/o;->a(Ljava/util/List;)V

    return-void
.end method

.method private static a()Z
    .locals 6

    const/4 v0, 0x3

    .line 204
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 206
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/s;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "[^\\d.]"

    const-string v4, ""

    .line 213
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\."

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 217
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 220
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v0, v3

    if-le v4, v5, :cond_1

    const/4 v0, 0x1

    return v0

    .line 222
    :cond_1
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return v2

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v2

    :array_0
    .array-data 4
        0x4
        0x4
        0x2
    .end array-data
.end method
