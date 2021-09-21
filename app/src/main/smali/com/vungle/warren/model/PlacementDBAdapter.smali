.class public Lcom/vungle/warren/model/PlacementDBAdapter;
.super Ljava/lang/Object;
.source "PlacementDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/PlacementDBAdapter$PlacementColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/DBAdapter<",
        "Lcom/vungle/warren/model/Placement;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_PLACEMENT_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS placement(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, incentivized SHORT, auto_cached SHORT, is_valid SHORT, wakeup_time NUMERIC )"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Placement;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 27
    new-instance v0, Lcom/vungle/warren/model/Placement;

    invoke-direct {v0}, Lcom/vungle/warren/model/Placement;-><init>()V

    const-string v1, "item_id"

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    const-string v1, "wakeup_time"

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    const-string v1, "incentivized"

    .line 31
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    const-string v1, "auto_cached"

    .line 32
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    const-string v1, "is_valid"

    .line 33
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/vungle/warren/model/Placement;->isValid:Z

    return-object v0
.end method

.method public bridge synthetic fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/PlacementDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Placement;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    const-string v0, "placement"

    return-object v0
.end method

.method public toContentValues(Lcom/vungle/warren/model/Placement;)Landroid/content/ContentValues;
    .locals 4

    .line 15
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "item_id"

    .line 16
    iget-object v2, p1, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "incentivized"

    .line 17
    iget-boolean v2, p1, Lcom/vungle/warren/model/Placement;->incentivized:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "auto_cached"

    .line 18
    iget-boolean v2, p1, Lcom/vungle/warren/model/Placement;->autoCached:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "wakeup_time"

    .line 19
    iget-wide v2, p1, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "is_valid"

    .line 20
    iget-boolean p1, p1, Lcom/vungle/warren/model/Placement;->isValid:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 11
    check-cast p1, Lcom/vungle/warren/model/Placement;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/PlacementDBAdapter;->toContentValues(Lcom/vungle/warren/model/Placement;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
