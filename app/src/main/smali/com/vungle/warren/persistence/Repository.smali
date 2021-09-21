.class public Lcom/vungle/warren/persistence/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;,
        Lcom/vungle/warren/persistence/Repository$FutureResult;,
        Lcom/vungle/warren/persistence/Repository$SaveCallback;,
        Lcom/vungle/warren/persistence/Repository$LoadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Repository"

.field public static VERSION:I = 0x2


# instance fields
.field private adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/vungle/warren/persistence/DBAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final appCtx:Landroid/content/Context;

.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field protected final dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final designer:Lcom/vungle/warren/persistence/Designer;

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 68
    sget v5, Lcom/vungle/warren/persistence/Repository;->VERSION:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/persistence/Repository;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/vungle/warren/persistence/Repository$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/persistence/Repository$1;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    iput-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/persistence/Repository;->appCtx:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 74
    iput-object p4, p0, Lcom/vungle/warren/persistence/Repository;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 75
    new-instance p3, Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance p4, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;

    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->appCtx:Landroid/content/Context;

    invoke-direct {p4, v0}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, p1, p5, p4}, Lcom/vungle/warren/persistence/DatabaseHelper;-><init>(Landroid/content/Context;ILcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;)V

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    .line 76
    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->loadModel(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/persistence/Repository;)Lcom/vungle/warren/persistence/Designer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/persistence/Repository;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacementIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->getAdsForPlacement(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->saveModel(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vungle/warren/persistence/Repository;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllModels(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssetModels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteAdInternal(Ljava/lang/String;)V

    return-void
.end method

.method private deleteAdInternal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteAssetForAdId(Ljava/lang/String;)V

    .line 412
    const-class v0, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/Designer;->deleteAssets(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private deleteAssetForAdId(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/model/AdAsset;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 384
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_identifier=?"

    .line 385
    iput-object v0, v1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v0, 0x1

    .line 386
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iput-object v0, v1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 387
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->delete(Lcom/vungle/warren/persistence/Query;)V

    return-void
.end method

.method private deleteModel(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DBAdapter;

    .line 376
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    invoke-interface {p1}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string p1, "item_id=?"

    .line 377
    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 p1, 0x1

    .line 378
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 379
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->delete(Lcom/vungle/warren/persistence/Query;)V

    return-void
.end method

.method private deleteModel(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 392
    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 108
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DBAdapter;

    .line 117
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 119
    invoke-static {p2, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 120
    invoke-interface {p1, v1}, Lcom/vungle/warren/persistence/DBAdapter;->fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1

    .line 109
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getAdsForPlacement(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "item_id"

    .line 551
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    const-string v1, "placement_id=?"

    .line 552
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v1, 0x1

    .line 553
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 555
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 558
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "item_id"

    .line 559
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 563
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private loadAllAdAssetModels(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "adAsset"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_identifier = ? "

    .line 358
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v1, 0x1

    .line 359
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 360
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 361
    const-class v0, Lcom/vungle/warren/model/AdAsset;

    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadAllModels(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    if-nez v0, :cond_0

    .line 99
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance v2, Lcom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadModel(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/persistence/DBAdapter;

    .line 132
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    invoke-interface {p2}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "item_id = ? "

    .line 133
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v1, 0x1

    .line 134
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 143
    invoke-interface {p2, v0}, Lcom/vungle/warren/persistence/DBAdapter;->fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadValidPlacementIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "placement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "is_valid = ?"

    .line 445
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const-string v1, "1"

    .line 446
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    const-string v1, "item_id"

    .line 447
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "item_id"

    .line 453
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 456
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method private runAndWait(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 797
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 792
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-nez v0, :cond_0

    .line 795
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    throw p1
.end method

.method private saveModel(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 155
    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    .line 156
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/warren/persistence/DatabaseHelper;->insertWithConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method


# virtual methods
.method public clearAllData()V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->dropDb()V

    .line 571
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->clearCache()V

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/vungle/warren/persistence/Repository$13;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$13;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public deleteAdvertisement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 397
    new-instance v0, Lcom/vungle/warren/persistence/Repository$14;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$14;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public findAdsForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 541
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$19;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$19;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$7;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$7;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$16;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$16;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getValidPlacements()Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 478
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$17;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$17;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/vungle/warren/persistence/Repository$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/persistence/Repository$2;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "TT;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$3;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/persistence/Repository$LoadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/vungle/warren/persistence/Repository$LoadCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/persistence/Repository$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/persistence/Repository$4;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$8;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$8;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;>;"
        }
    .end annotation

    .line 348
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$12;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$12;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllReportToSend()Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$9;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$9;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadReadyOrFailedReportToSend()Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$10;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$10;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadValidPlacements()Lcom/vungle/warren/persistence/Repository$FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/Repository$FutureResult<",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/model/Placement;",
            ">;>;"
        }
    .end annotation

    .line 427
    new-instance v0, Lcom/vungle/warren/persistence/Repository$FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$15;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$15;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Repository$FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/vungle/warren/persistence/Repository$5;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$5;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V
    .locals 2
    .param p2    # Lcom/vungle/warren/persistence/Repository$SaveCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/vungle/warren/persistence/Repository$SaveCallback;",
            ")V"
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/persistence/Repository$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$6;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 220
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/vungle/warren/model/Advertisement$State;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 602
    new-instance v0, Lcom/vungle/warren/persistence/Repository$20;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/vungle/warren/persistence/Repository$20;-><init>(Lcom/vungle/warren/persistence/Repository;ILcom/vungle/warren/model/Advertisement;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setValidPlacements(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Placement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 498
    new-instance v0, Lcom/vungle/warren/persistence/Repository$18;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$18;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 329
    new-instance v6, Lcom/vungle/warren/persistence/Repository$11;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/persistence/Repository$11;-><init>(Lcom/vungle/warren/persistence/Repository;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method
