.class public abstract Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    }
.end annotation


# instance fields
.field final DATABASE_NAME:Ljava/lang/String;

.field final DATABASE_VERSION:I

.field final DEFAULT_BACKUP_THRESHOLD:I

.field final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field final DEFAULT_MAX_NUMBER_OF_EVENTS:I

.field final ERROR_REASON_MAX_LENGTH:I

.field final KEY_PLACEMENT:Ljava/lang/String;

.field final KEY_PROVIDER:Ljava/lang/String;

.field private final MEDIATION_ABT:Ljava/lang/String;

.field final NO_CONNECTIVITY_EVENT_ID_ADDITION:I

.field private mAbt:Ljava/lang/String;

.field mAdUnitType:I

.field private mBackupThreshold:I

.field private mBatchParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mConnectivitySensitiveEventsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDBSyncLock:Ljava/lang/Object;

.field private mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

.field private mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

.field mEventType:Ljava/lang/String;

.field private mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

.field mFormatterType:Ljava/lang/String;

.field private mGenericEventParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHadTopPriorityEvent:Z

.field private mHasServerResponse:Z

.field private mIsEventsEnabled:Z

.field private mLocalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMaxEventsPerBatch:I

.field private mMaxNumberOfEvents:I

.field private mOptOutEvents:[I

.field private mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

.field private mSessionId:Ljava/lang/String;

.field private mTotalEvents:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_BACKUP_THRESHOLD:I

    const/16 v1, 0x64

    .line 45
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_NUMBER_OF_EVENTS:I

    const/16 v2, 0x1388

    .line 46
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    const v3, 0x15f90

    .line 47
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->NO_CONNECTIVITY_EVENT_ID_ADDITION:I

    const/16 v3, 0x32

    .line 48
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->ERROR_REASON_MAX_LENGTH:I

    const/4 v3, 0x5

    .line 50
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_VERSION:I

    const-string v3, "supersonic_sdk.db"

    .line 51
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_NAME:Ljava/lang/String;

    const-string v3, "provider"

    .line 54
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PROVIDER:Ljava/lang/String;

    const-string v3, "placement"

    .line 55
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PLACEMENT:Ljava/lang/String;

    const-string v3, "abt"

    .line 56
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->MEDIATION_ABT:Ljava/lang/String;

    const/4 v3, 0x0

    .line 60
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 66
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 72
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 73
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    .line 74
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBatchParams:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mGenericEventParams:Ljava/util/Map;

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAbt:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDBSyncLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    return p1
.end method

.method static synthetic access$1008(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    return v0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldSendEvents()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    return-void
.end method

.method static synthetic access$1500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/util/ArrayList;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldBackupEventsToDb(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    return-void
.end method

.method static synthetic access$1700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isNoConnectivitydEvent(Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->convertEventtoNotConnected(Lcom/ironsource/eventsmodule/EventData;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldAddSessionDepth(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sessionDepthIsSet(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method private backupEventsToDb()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDBSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 383
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized convertEventtoNotConnected(Lcom/ironsource/eventsmodule/EventData;)I
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x15f90

    add-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    new-instance p1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 313
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p3, :cond_0

    .line 314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 316
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 318
    iget-object p3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private declared-synchronized isNoConnectivitydEvent(Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "none"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendEvents()V
    .locals 6

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 227
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDBSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 229
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    invoke-direct {p0, v3, v2, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->clearEvents(Ljava/lang/String;)V

    .line 232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 235
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 236
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 240
    :try_start_1
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->updateSegmentsData(Lorg/json/JSONObject;)V

    .line 243
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getAbt()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "abt"

    .line 245
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getBatchParams()Ljava/util/Map;

    move-result-object v3

    .line 250
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 251
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 254
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 260
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 263
    :cond_2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v3, v2, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 264
    new-instance v3, Lcom/ironsource/eventsmodule/EventsSender;

    new-instance v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    invoke-direct {v4, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-direct {v3, v4}, Lcom/ironsource/eventsmodule/EventsSender;-><init>(Lcom/ironsource/eventsmodule/IEventsSenderResultListener;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 292
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getEventsServerUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 232
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private sessionDepthIsSet(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 1

    .line 567
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "sessionDepth"

    .line 572
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private shouldAddSessionDepth(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 2

    .line 559
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 560
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x202

    if-eq v0, v1, :cond_0

    .line 561
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_0

    .line 562
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 563
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldBackupEventsToDb(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 415
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/4 v1, 0x0

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shouldSendEvents()Z
    .locals 2

    .line 392
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSegmentsData(Lorg/json/JSONObject;)V
    .locals 4

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "age"

    .line 465
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gen"

    .line 467
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "lvl"

    .line 469
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "pay"

    .line 471
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    const-string v0, "iapt"

    .line 473
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v0, "ucd"

    .line 475
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    if-eqz v0, :cond_7

    .line 479
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentId()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "segmentId"

    .line 481
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    :cond_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getCustomSegments()Lorg/json/JSONObject;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 485
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    return-void
.end method

.method private verifyCurrentFormatter(Ljava/lang/String;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getFormatterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAbt()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAbt:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBatchParams:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getCurrentPlacement(I)Ljava/lang/String;
.end method

.method public getGenericEventParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mGenericEventParams:Ljava/util/Map;

    return-object v0
.end method

.method getProviderNameForEvent(Lcom/ironsource/eventsmodule/EventData;)Ljava/lang/String;
    .locals 2

    .line 435
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "provider"

    const-string v1, ""

    .line 436
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method protected abstract getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
.end method

.method protected abstract increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)V
.end method

.method protected initConnectivitySensitiveEventsSet()V
    .locals 0

    return-void
.end method

.method initState()V
    .locals 3

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 95
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 96
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EventThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    .line 97
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->start()V

    .line 98
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->prepareHandler()V

    .line 99
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 100
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSessionId:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    .line 102
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->initConnectivitySensitiveEventsSet()V

    return-void
.end method

.method protected abstract isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized log(Lcom/ironsource/eventsmodule/EventData;)V
    .locals 2

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->postTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 135
    monitor-exit p0

    throw p1
.end method

.method public sendEventToUrl(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    .locals 3

    .line 450
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 454
    new-instance v0, Lcom/ironsource/eventsmodule/EventsSender;

    invoke-direct {v0}, Lcom/ironsource/eventsmodule/EventsSender;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setABT(Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAbt:Ljava/lang/String;

    return-void
.end method

.method public setBackupThreshold(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 333
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    :cond_0
    return-void
.end method

.method public setBatchParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBatchParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected abstract setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
.end method

.method public setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "auctionTrials"

    .line 576
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "auctionFallback"

    .line 579
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setEventGenericParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mGenericEventParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setFormatterType(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHasServerResponse(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    return-void
.end method

.method public setIsEventsEnabled(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    return-void
.end method

.method public setMaxEventsPerBatch(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 345
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    :cond_0
    return-void
.end method

.method public setMaxNumberOfEvents(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 339
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    :cond_0
    return-void
.end method

.method public setOptOutEvents([ILandroid/content/Context;)V
    .locals 1

    .line 350
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 351
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public declared-synchronized setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V
    .locals 0

    monitor-enter p0

    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 121
    monitor-exit p0

    throw p1
.end method

.method protected abstract shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method protected abstract shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x5

    .line 114
    invoke-static {p1, v0, v1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    .line 115
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    .line 116
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 117
    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    .line 118
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method public triggerEventsSend()V
    .locals 0

    .line 445
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    return-void
.end method
