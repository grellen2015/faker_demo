.class public Lcom/vungle/warren/model/Advertisement$Checkpoint;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Advertisement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checkpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
        ">;"
    }
.end annotation


# instance fields
.field private percentage:B

.field private urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonArray;B)V
    .locals 3

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1144
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1148
    :cond_0
    iput-byte p2, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    return-void

    .line 1141
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty URLS!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "checkpoint"

    .line 1119
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "checkpoint"

    .line 1120
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    const-string v0, "urls"

    .line 1125
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "urls"

    .line 1126
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 1127
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1128
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1129
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "null"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2

    .line 1130
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1136
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Checkpoint missing reporting URL!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1122
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Checkpoint missing percentage!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/vungle/warren/model/Advertisement$Checkpoint;)I
    .locals 1
    .param p1    # Lcom/vungle/warren/model/Advertisement$Checkpoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1162
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    int-to-float v0, v0

    iget-byte p1, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1114
    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->compareTo(Lcom/vungle/warren/model/Advertisement$Checkpoint;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1167
    instance-of v0, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1168
    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    .line 1169
    iget-byte v0, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    iget-byte v2, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    if-eq v0, v2, :cond_0

    return v1

    .line 1170
    :cond_0
    iget-object v0, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 1171
    :goto_0
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1172
    iget-object v2, p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public getPercentage()B
    .locals 1

    .line 1156
    iget-byte v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->percentage:B

    return v0
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement$Checkpoint;->urls:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1181
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
