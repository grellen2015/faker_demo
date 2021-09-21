.class Lcom/chartboost/sdk/impl/v$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/v$a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v$a;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "InterstitialVideoViewProtocol"

    const-string v1, "controls %s automatically from timer"

    const/4 v2, 0x1

    .line 359
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v4, v4, Lcom/chartboost/sdk/impl/v;->y:Z

    if-eqz v4, :cond_0

    const-string v4, "hidden"

    goto :goto_0

    :cond_0
    const-string v4, "shown"

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/v;->y:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ab;->a(ZZ)V

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v$a;->l:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$a$3;->a:Lcom/chartboost/sdk/impl/v$a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v$a;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
