.class public Lcom/chartboost/sdk/impl/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chartboost/sdk/impl/ai;

.field final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/chartboost/sdk/impl/ah;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ai;Landroid/os/Handler;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ak;->c:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ak;->d:Lcom/chartboost/sdk/impl/ah;

    .line 45
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ak;->a:Lcom/chartboost/sdk/impl/ai;

    .line 46
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ak;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V
    .locals 7

    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 89
    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    return-void

    :cond_0
    const-string v1, "http"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/impl/aj;)V

    return-void

    .line 98
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/ak$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/ak$1;-><init>(Lcom/chartboost/sdk/impl/ak;Ljava/lang/String;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V

    .line 146
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ak;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const/4 v3, 0x0

    .line 83
    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    return-void
.end method

.method a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/impl/aj;)V
    .locals 11

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 152
    iput v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    :cond_0
    if-nez p3, :cond_1

    .line 160
    sget-object p3, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x0

    .line 162
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    return-void

    :cond_2
    const/high16 v0, 0x10000000

    .line 167
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    instance-of v2, p3, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 169
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "market://"

    .line 173
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://market.android.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 176
    :try_start_2
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    instance-of v2, p3, Landroid/app/Activity;

    if-nez v2, :cond_4

    .line 178
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception p3

    move-object v3, p2

    move-object p2, p3

    :goto_0
    const-string p3, "CBURLOpener"

    const-string v0, "Exception raised openeing an inavld playstore URL"

    .line 182
    invoke-static {p3, v0, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 183
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    return-void

    :cond_5
    const/4 v7, 0x0

    .line 187
    sget-object v9, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    :goto_1
    move-object v3, p2

    :goto_2
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/impl/aj;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/aj;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 56
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 57
    iput v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    :cond_0
    if-nez p2, :cond_1

    .line 62
    sget-object p1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz p1, :cond_3

    .line 63
    sget-object p1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {p1, p3, p4}, Lcom/chartboost/sdk/a;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 65
    iget-object p2, p1, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/aj;

    if-eqz p2, :cond_2

    .line 66
    iget-object p2, p0, Lcom/chartboost/sdk/impl/ak;->d:Lcom/chartboost/sdk/impl/ah;

    iget-object p1, p1, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 68
    iget-object p1, p0, Lcom/chartboost/sdk/impl/ak;->d:Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {p1, p5}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ad;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 196
    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_0

    const/high16 v3, 0x10000000

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    .line 202
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    const-string v1, "CBURLOpener"

    const-string v2, "Cannot open URL"

    .line 205
    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    const-class v1, Lcom/chartboost/sdk/impl/ak;

    const-string v2, "canOpenURL"

    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method
