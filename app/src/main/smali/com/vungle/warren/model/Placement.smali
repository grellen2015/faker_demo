.class public Lcom/vungle/warren/model/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Placement"


# instance fields
.field autoCached:Z

.field identifier:Ljava/lang/String;

.field incentivized:Z

.field isValid:Z

.field wakeupTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    const-string v1, "reference_id"

    .line 81
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "reference_id"

    .line 82
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    const-string v1, "is_auto_cached"

    .line 90
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "is_auto_cached"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    const-string v1, "is_incentivized"

    .line 93
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "is_incentivized"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    return-void

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing placement reference ID, cannot use placement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    .line 57
    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    .line 58
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    .line 59
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    check-cast p1, Lcom/vungle/warren/model/Placement;

    .line 134
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->autoCached:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 135
    :cond_2
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->incentivized:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 136
    :cond_3
    iget-wide v2, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    iget-wide v4, p1, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 137
    :cond_4
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->isValid:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 138
    :cond_5
    iget-object v2, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_6
    iget-object p1, p1, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz p1, :cond_7

    :goto_0
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupTime()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-wide v1, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    iget-wide v3, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAutoCached()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    return v0
.end method

.method public isIncentivized()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    return v0
.end method

.method public setValid(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    return-void
.end method

.method public setWakeupTime(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    return-void
.end method

.method public snooze(J)V
    .locals 4

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", autoCached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incentivized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wakeupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
