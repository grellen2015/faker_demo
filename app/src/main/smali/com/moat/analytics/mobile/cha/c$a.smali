.class final Lcom/moat/analytics/mobile/cha/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ॱ(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p0, :cond_0

    const-string p0, "ActivityState"

    const-string v2, "App became visible"

    .line 151
    invoke-static {v1, p0, v0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object p0

    iget p0, p0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v0, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    if-ne p0, v0, :cond_1

    .line 153
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/cha/f;

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/cha/f;->ˋ:Z

    if-nez p0, :cond_1

    .line 154
    invoke-static {}, Lcom/moat/analytics/mobile/cha/n;->ˏ()Lcom/moat/analytics/mobile/cha/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/n;->ˋ()V

    return-void

    :cond_0
    const-string p0, "ActivityState"

    const-string v2, "App became invisible"

    .line 158
    invoke-static {v1, p0, v0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object p0

    iget p0, p0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v0, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    if-ne p0, v0, :cond_1

    .line 160
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/cha/f;

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/cha/f;->ˋ:Z

    if-nez p0, :cond_1

    .line 161
    invoke-static {}, Lcom/moat/analytics/mobile/cha/n;->ˏ()Lcom/moat/analytics/mobile/cha/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/n;->ॱ()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 63
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/c;->ॱ(I)I

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 133
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˊ()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˊ()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 134
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ॱ()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {v2}, Lcom/moat/analytics/mobile/cha/c$a;->ॱ(Z)V

    .line 137
    :cond_0
    invoke-static {v2}, Lcom/moat/analytics/mobile/cha/c;->ˎ(Z)Z

    :cond_1
    const/4 v0, 0x6

    .line 139
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/c;->ॱ(I)I

    const-string v0, "ActivityState"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity destroyed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/c;->ˊ(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 145
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x4

    .line 100
    :try_start_0
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/c;->ॱ(I)I

    .line 101
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/c;->ˊ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    :cond_0
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity paused: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x3

    .line 85
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/c;->ॱ(I)I

    .line 86
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/cha/t;->ˎ()V

    const-string v1, "ActivityState"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity resumed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/f;->ˏ:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/e;->ˎ(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 93
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 69
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x2

    .line 70
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/c;->ॱ(I)I

    .line 71
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ॱ()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 72
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/c$a;->ॱ(Z)V

    .line 74
    :cond_0
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/c;->ˎ(Z)Z

    const/4 v0, 0x3

    const-string v1, "ActivityState"

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 113
    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/cha/c;->ˊ()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/c;->ˎ(Z)Z

    .line 115
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/c$a;->ॱ(Z)V

    :cond_0
    const/4 v0, 0x5

    .line 117
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/c;->ॱ(I)I

    .line 118
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/c;->ˊ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    :cond_1
    const-string v0, "ActivityState"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity stopped: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p0, p1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method
