.class final Lcom/moat/analytics/mobile/cha/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˋ:Landroid/content/Context;

.field private synthetic ˎ:Lcom/moat/analytics/mobile/cha/h;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/h;Landroid/content/Context;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/h$2;->ˎ:Lcom/moat/analytics/mobile/cha/h;

    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/h$2;->ˋ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 116
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_VIEW_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/h$2;->ˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 118
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/h$2;->ˎ:Lcom/moat/analytics/mobile/cha/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/h;->ˎ(Lcom/moat/analytics/mobile/cha/h;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    .line 119
    iget-object v2, p0, Lcom/moat/analytics/mobile/cha/h$2;->ˎ:Lcom/moat/analytics/mobile/cha/h;

    const-string v3, "No more active trackers"

    invoke-static {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/h$2;->ˎ:Lcom/moat/analytics/mobile/cha/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/h;->ˊ(Lcom/moat/analytics/mobile/cha/h;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 123
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method
