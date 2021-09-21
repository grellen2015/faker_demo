.class public Lcom/vungle/warren/model/Report$UserAction;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAction"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private timestamp:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    .line 406
    iput-wide p3, p0, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vungle/warren/model/Report$UserAction;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/model/Report$UserAction;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 412
    instance-of v0, p1, Lcom/vungle/warren/model/Report$UserAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 413
    check-cast p1, Lcom/vungle/warren/model/Report$UserAction;

    .line 414
    iget-object v0, p1, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 415
    :cond_0
    iget-object v0, p1, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 416
    :cond_1
    iget-wide v2, p1, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public toJson()Lcom/google/gson/JsonObject;
    .locals 4

    .line 423
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "action"

    .line 424
    iget-object v2, p0, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "value"

    .line 428
    iget-object v2, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "timestamp_millis"

    .line 431
    iget-wide v2, p0, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method
