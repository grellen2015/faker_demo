.class public Lcom/chartboost/sdk/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/e;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/e;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    .line 17
    iput-object p2, p0, Lcom/chartboost/sdk/impl/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-boolean p1, p1, Lcom/chartboost/sdk/impl/c;->h:Z

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    monitor-enter p1

    .line 33
    :try_start_0
    iget-object p2, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/e;->b(Ljava/lang/String;)V

    .line 34
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/aj;Lorg/json/JSONObject;)V
    .locals 1

    .line 22
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-boolean p1, p1, Lcom/chartboost/sdk/impl/c;->h:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/chartboost/sdk/i;->t:Z

    if-eqz p1, :cond_1

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    monitor-enter p1

    .line 24
    :try_start_0
    iget-object p2, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/e;->b(Ljava/lang/String;)V

    .line 25
    monitor-exit p1

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
