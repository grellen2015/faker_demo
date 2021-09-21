.class Lcom/tenjin/android/ReferrerUpdater;
.super Ljava/lang/Object;
.source "ReferrerUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/tenjin/android/ReferrerUpdater;


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tenjin/android/ReferrerUpdater;->listeners:Ljava/util/Set;

    return-void
.end method

.method static getInstance()Lcom/tenjin/android/ReferrerUpdater;
    .locals 2

    .line 12
    sget-object v0, Lcom/tenjin/android/ReferrerUpdater;->instance:Lcom/tenjin/android/ReferrerUpdater;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lcom/tenjin/android/ReferrerUpdater;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/tenjin/android/ReferrerUpdater;->instance:Lcom/tenjin/android/ReferrerUpdater;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/tenjin/android/ReferrerUpdater;

    invoke-direct {v0}, Lcom/tenjin/android/ReferrerUpdater;-><init>()V

    sput-object v0, Lcom/tenjin/android/ReferrerUpdater;->instance:Lcom/tenjin/android/ReferrerUpdater;

    .line 19
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method addOnReferrerListener(Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tenjin/android/ReferrerUpdater;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method notifyReferrerUpdated()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tenjin/android/ReferrerUpdater;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;

    .line 38
    invoke-interface {v1}, Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;->onReferrerUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeOnReferrerListener(Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tenjin/android/ReferrerUpdater;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
