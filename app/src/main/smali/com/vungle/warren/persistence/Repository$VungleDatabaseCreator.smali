.class Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VungleDatabaseCreator"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Landroid/content/Context;

    return-void
.end method

.method private deleteDatabase(Ljava/lang/String;)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method private dropOldFilesData()V
    .locals 3

    const-string v0, "vungle"

    .line 753
    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->deleteDatabase(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 757
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 758
    invoke-static {v1, v2}, Landroid/support/v4/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 759
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 760
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    new-instance v1, Ljava/io/File;

    const-string v2, ".vungle"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 763
    :try_start_0
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 765
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 769
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 771
    new-instance v1, Ljava/io/File;

    const-string v2, "vungle"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 773
    :try_start_1
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 775
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 781
    :cond_3
    :goto_2
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downloads_vungle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 783
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method public create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 709
    invoke-direct {p0}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->dropOldFilesData()V

    const-string v0, "CREATE TABLE IF NOT EXISTS advertisement(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE, ad_config TEXT,ad_type INT, expire_time NUMERIC, delay NUMERIC, show_close_delay INT, show_close_incentivized INT, countdown INT, video_height INT, video_width INT, cta_overlay_enabled SHORT, cta_click_area NUMERIC, retry_count INT, enable_moat SHORT, requires_non_market_install SHORT, app_id TEXT, campaign TEXT, video_url TEXT, md5 TEXT, postroll_bundle_url TEXT, cta_destination_url TEXT, cta_url TEXT, ad_token TEXT, video_identifier TEXT, mute_urls TEXT, unmute_urls TEXT, close_urls TEXT, postroll_click_urls TEXT, postroll_view_urls TEXT, click_urls TEXT, video_click_urls TEXT, template_url TEXT, TEMPLATE_ID TEXT, TEMPLATE_TYPE TEXT, moat_extra_vast TEXT, ad_market_id TEXT,bid_token TEXT,  checkpoints TEXT, template_settings TEXT, mraid_files TEXT, cacheable_assets TEXT, state INT, placement_id TEXT)"

    .line 711
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS placement(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, incentivized SHORT, auto_cached SHORT, is_valid SHORT, wakeup_time NUMERIC )"

    .line 712
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cookie(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, bools TEXT, ints TEXT, longs TEXT, strings TEXT )"

    .line 713
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS report(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE,appId TEXT, placementId TEXT, adToken TEXT, incentivized SHORT, adStartTime NUMERIC, url TEXT, ad_duration NUMERIC, tt_download NUMERIC, campaign TEXT, videoViewed NUMERIC, ad_type TEXT, template_id TEXT, was_CTAC_licked SHORT, clicked_through TEXT, errors TEXT, user_actions TEXT, user_id TEXT, ordinal INT, videoLength NUMERIC, status INT )"

    .line 714
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS adAsset ( _id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, paren_id TEXT , ad_identifier TEXT NOT NULL, server_path TEXT, local_path TEXT NOT NULL, file_status SHORT, file_type SHORT, file_size INT, retry_count SHORT, retry_error SHORT, unique ( local_path, ad_identifier ));"

    .line 715
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public deleteData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS advertisement"

    .line 720
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS cookie"

    .line 721
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS placement"

    .line 722
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS report"

    .line 723
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS adAsset"

    .line 724
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 729
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 731
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 732
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_metadata"

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sqlite_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 738
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 744
    :cond_3
    invoke-virtual {p0, p1}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    const-string p2, "ALTER TABLE report ADD COLUMN status INTEGER DEFAULT 1"

    .line 702
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
