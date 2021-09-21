.class final Lcom/facebook/appevents/ml/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/Model$Weight;,
        Lcom/facebook/appevents/ml/Model$FileDownloadTask;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "facebook_ml/"

.field private static final SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static convs_1_bias:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static convs_2_bias:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static convs_3_bias:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static embedding:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final EMBEDDING_SIZE:I

.field private final SEQ_LEN:I

.field private modelFile:Ljava/io/File;

.field private modelUri:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private ruleFile:Ljava/io/File;

.field private ruleUri:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private thresholds:[F

.field private useCase:Ljava/lang/String;

.field private versionID:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "fb_mobile_add_to_cart"

    const-string v1, "fb_mobile_complete_registration"

    const-string v2, "other"

    const-string v3, "fb_mobile_purchase"

    .line 52
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/Model;->SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[F)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 81
    iput v0, p0, Lcom/facebook/appevents/ml/Model;->SEQ_LEN:I

    const/16 v0, 0x40

    .line 82
    iput v0, p0, Lcom/facebook/appevents/ml/Model;->EMBEDDING_SIZE:I

    .line 86
    iput-object p1, p0, Lcom/facebook/appevents/ml/Model;->useCase:Ljava/lang/String;

    .line 87
    iput p2, p0, Lcom/facebook/appevents/ml/Model;->versionID:I

    .line 88
    iput-object p5, p0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    .line 89
    iput-object p3, p0, Lcom/facebook/appevents/ml/Model;->modelUri:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/facebook/appevents/ml/Model;->ruleUri:Ljava/lang/String;

    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "facebook_ml/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 93
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "facebook_ml/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_rule"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    .line 95
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    .line 96
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/ml/Model;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/facebook/appevents/ml/Model;->initializeWeights()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/facebook/appevents/ml/Model;Ljava/lang/Runnable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/appevents/ml/Model;->downloadRule(Ljava/lang/Runnable;)V

    return-void
.end method

.method private downloadModel(Ljava/lang/Runnable;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->modelUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;

    iget-object v1, p0, Lcom/facebook/appevents/ml/Model;->modelUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private downloadRule(Ljava/lang/Runnable;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->ruleUri:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/facebook/appevents/ml/Model$FileDownloadTask;

    iget-object v1, p0, Lcom/facebook/appevents/ml/Model;->ruleUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/ml/Model$FileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 130
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private initializeWeights()Z
    .locals 15

    const/4 v0, 0x0

    .line 140
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->modelFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 142
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 143
    new-array v1, v2, [B

    .line 144
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 145
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    return v0

    .line 151
    :cond_0
    invoke-static {v1, v0, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 152
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    add-int/lit8 v5, v4, 0x4

    if-ge v2, v5, :cond_1

    return v0

    .line 159
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 160
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 164
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 165
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 171
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 173
    array-length v7, v6

    move v8, v5

    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v5, v7, :cond_5

    aget-object v10, v6, v5

    .line 175
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 176
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [I

    const/4 v9, 0x0

    const/4 v13, 0x1

    .line 177
    :goto_2
    array-length v14, v12

    if-ge v9, v14, :cond_3

    .line 178
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    aput v14, v12, v9

    .line 179
    aget v14, v12, v9

    mul-int v13, v13, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 v9, v13, 0x4

    add-int v11, v8, v9

    if-le v11, v2, :cond_4

    return v0

    .line 186
    :cond_4
    invoke-static {v1, v8, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 187
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    new-array v9, v13, [F

    .line 189
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v9, v0, v13}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 190
    new-instance v8, Lcom/facebook/appevents/ml/Model$Weight;

    invoke-direct {v8, v12, v9}, Lcom/facebook/appevents/ml/Model$Weight;-><init>([I[F)V

    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move v8, v11

    goto :goto_1

    :cond_5
    const-string v1, "embed.weight"

    .line 194
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->embedding:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "convs.0.weight"

    .line 195
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "convs.1.weight"

    .line 196
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "convs.2.weight"

    .line 197
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    .line 198
    sget-object v1, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    sget-object v2, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v3, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v3, v3, v0

    sget-object v5, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v5, v5, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v5, v5, v9

    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v2, v3, v5, v6}, Lcom/facebook/appevents/ml/Operator;->transpose3D([FIII)[F

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    .line 200
    sget-object v1, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    sget-object v2, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v3, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v3, v3, v0

    sget-object v5, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v5, v5, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v5, v5, v9

    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v7

    invoke-static {v2, v3, v5, v6}, Lcom/facebook/appevents/ml/Operator;->transpose3D([FIII)[F

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    .line 202
    sget-object v1, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    sget-object v2, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v3, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v3, v3, v0

    sget-object v5, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v5, v5, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v5, v5, v9

    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v7

    invoke-static {v2, v3, v5, v6}, Lcom/facebook/appevents/ml/Operator;->transpose3D([FIII)[F

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    const-string v1, "convs.0.bias"

    .line 204
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->convs_1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "convs.1.bias"

    .line 205
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->convs_2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "convs.2.bias"

    .line 206
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->convs_3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "fc1.weight"

    .line 207
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "fc2.weight"

    .line 208
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "fc3.weight"

    .line 209
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    .line 210
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    sget-object v2, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v3, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v3, v3, v0

    sget-object v5, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v5, v5, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v5, v5, v9

    invoke-static {v2, v3, v5}, Lcom/facebook/appevents/ml/Operator;->transpose2D([FII)[F

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    .line 212
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    sget-object v2, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v3, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v3, v3, v0

    sget-object v5, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v5, v5, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v5, v5, v9

    invoke-static {v2, v3, v5}, Lcom/facebook/appevents/ml/Operator;->transpose2D([FII)[F

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    .line 214
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    sget-object v2, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v3, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v3, v3, v0

    sget-object v5, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v5, v5, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v5, v5, v9

    invoke-static {v2, v3, v5}, Lcom/facebook/appevents/ml/Operator;->transpose2D([FII)[F

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    const-string v1, "fc1.bias"

    .line 216
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "fc2.bias"

    .line 217
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    const-string v1, "fc3.bias"

    .line 218
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/Model$Weight;

    sput-object v1, Lcom/facebook/appevents/ml/Model;->fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    return v0
.end method


# virtual methods
.method getRuleFile()Ljava/io/File;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->ruleFile:Ljava/io/File;

    return-object v0
.end method

.method initialize(Ljava/lang/Runnable;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/facebook/appevents/ml/Model$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/appevents/ml/Model$1;-><init>(Lcom/facebook/appevents/ml/Model;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/facebook/appevents/ml/Model;->downloadModel(Ljava/lang/Runnable;)V

    return-void
.end method

.method predict([FLjava/lang/String;)Ljava/lang/String;
    .locals 20
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x80

    move-object/from16 v2, p2

    .line 228
    invoke-static {v2, v1}, Lcom/facebook/appevents/ml/Utils;->vectorize(Ljava/lang/String;I)[I

    move-result-object v2

    .line 229
    sget-object v3, Lcom/facebook/appevents/ml/Model;->embedding:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v1, v5}, Lcom/facebook/appevents/ml/Operator;->embedding([I[FIII)[F

    move-result-object v2

    .line 230
    sget-object v3, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v3, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v3, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    const/4 v5, 0x2

    aget v11, v3, v5

    sget-object v3, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v3, v3, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    const/4 v13, 0x0

    aget v12, v3, v13

    const/4 v8, 0x1

    const/16 v9, 0x80

    const/16 v10, 0x40

    move-object v6, v2

    invoke-static/range {v6 .. v12}, Lcom/facebook/appevents/ml/Operator;->conv1D([F[FIIIII)[F

    move-result-object v3

    .line 232
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v6, v5

    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v6, v13

    move-object v6, v2

    invoke-static/range {v6 .. v12}, Lcom/facebook/appevents/ml/Operator;->conv1D([F[FIIIII)[F

    move-result-object v14

    .line 234
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v11, v6, v5

    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v12, v6, v13

    move-object v6, v2

    invoke-static/range {v6 .. v12}, Lcom/facebook/appevents/ml/Operator;->conv1D([F[FIIIII)[F

    move-result-object v2

    .line 236
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    sget-object v8, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v13

    invoke-static {v3, v6, v4, v7, v8}, Lcom/facebook/appevents/ml/Operator;->add([F[FIII)[F

    .line 238
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    sget-object v8, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v13

    invoke-static {v14, v6, v4, v7, v8}, Lcom/facebook/appevents/ml/Operator;->add([F[FIII)[F

    .line 240
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    sget-object v8, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v13

    invoke-static {v2, v6, v4, v7, v8}, Lcom/facebook/appevents/ml/Operator;->add([F[FIII)[F

    .line 243
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v5

    rsub-int v6, v6, 0x80

    add-int/2addr v6, v4

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v13

    mul-int v6, v6, v7

    invoke-static {v3, v6}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    .line 244
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v5

    rsub-int v6, v6, 0x80

    add-int/2addr v6, v4

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v13

    mul-int v6, v6, v7

    invoke-static {v14, v6}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    .line 245
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v5

    rsub-int v6, v6, 0x80

    add-int/2addr v6, v4

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v13

    mul-int v6, v6, v7

    invoke-static {v2, v6}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    .line 247
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v5

    rsub-int v6, v6, 0x80

    add-int/2addr v6, v4

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v13

    sget-object v8, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    rsub-int v8, v8, 0x80

    add-int/2addr v8, v4

    invoke-static {v3, v6, v7, v8}, Lcom/facebook/appevents/ml/Operator;->maxPool1D([FIII)[F

    move-result-object v3

    .line 249
    sget-object v6, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v6, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v6, v6, v5

    rsub-int v6, v6, 0x80

    add-int/2addr v6, v4

    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v13

    sget-object v8, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v5

    rsub-int v8, v8, 0x80

    add-int/2addr v8, v4

    invoke-static {v14, v6, v7, v8}, Lcom/facebook/appevents/ml/Operator;->maxPool1D([FIII)[F

    move-result-object v6

    .line 251
    sget-object v7, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v7, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v7, v7, v5

    rsub-int v7, v7, 0x80

    add-int/2addr v7, v4

    sget-object v8, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v8, v8, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v8, v8, v13

    sget-object v9, Lcom/facebook/appevents/ml/Model;->convs_3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v9, v9, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v5, v9, v5

    sub-int/2addr v1, v5

    add-int/2addr v1, v4

    invoke-static {v2, v7, v8, v1}, Lcom/facebook/appevents/ml/Operator;->maxPool1D([FIII)[F

    move-result-object v1

    .line 254
    invoke-static {v3, v6}, Lcom/facebook/appevents/ml/Operator;->concatenate([F[F)[F

    move-result-object v2

    invoke-static {v2, v1}, Lcom/facebook/appevents/ml/Operator;->concatenate([F[F)[F

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lcom/facebook/appevents/ml/Operator;->concatenate([F[F)[F

    move-result-object v5

    .line 257
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v1, v1, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v9, v1, v4

    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v1, v1, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v1, v13

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Lcom/facebook/appevents/ml/Operator;->dense([F[F[FIII)[F

    move-result-object v14

    .line 260
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v1, v1, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v1, v1, v13

    invoke-static {v14, v1}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    .line 261
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v15, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v1, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v2, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v18, v2, v4

    sget-object v2, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v19, v2, v13

    const/16 v17, 0x1

    move-object/from16 v16, v1

    invoke-static/range {v14 .. v19}, Lcom/facebook/appevents/ml/Operator;->dense([F[F[FIII)[F

    move-result-object v5

    .line 264
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v1, v1, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v1, v1, v13

    invoke-static {v5, v1}, Lcom/facebook/appevents/ml/Operator;->relu([FI)V

    .line 265
    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v6, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v7, v1, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v1, v1, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v9, v1, v4

    sget-object v1, Lcom/facebook/appevents/ml/Model;->fc3_weight:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v1, v1, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v10, v1, v13

    invoke-static/range {v5 .. v10}, Lcom/facebook/appevents/ml/Operator;->dense([F[F[FIII)[F

    move-result-object v1

    .line 268
    sget-object v2, Lcom/facebook/appevents/ml/Model;->fc3_bias:Lcom/facebook/appevents/ml/Model$Weight;

    iget-object v2, v2, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    aget v2, v2, v13

    invoke-static {v1, v2}, Lcom/facebook/appevents/ml/Operator;->softmax([FI)V

    .line 270
    :goto_0
    iget-object v2, v0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    array-length v2, v2

    if-ge v13, v2, :cond_1

    .line 271
    aget v2, v1, v13

    iget-object v3, v0, Lcom/facebook/appevents/ml/Model;->thresholds:[F

    aget v3, v3, v13

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 272
    sget-object v1, Lcom/facebook/appevents/ml/Model;->SUGGESTED_EVENTS_PREDICTION:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "other"

    return-object v1
.end method
