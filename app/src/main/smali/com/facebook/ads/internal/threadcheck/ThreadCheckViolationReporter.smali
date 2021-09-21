.class public Lcom/facebook/ads/internal/threadcheck/ThreadCheckViolationReporter;
.super Ljava/lang/Object;
.source "ThreadCheckViolationReporter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "THREADCHECK"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uiThreadViolationDetected(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "THREADCHECK"

    .line 22
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "@UiThread annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s."

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object p1, v5, p0

    const/4 p0, 0x2

    aput-object p2, v5, p0

    const/4 p0, 0x3

    aput-object v1, v5, p0

    const/4 p0, 0x4

    aput-object v0, v5, p0

    .line 24
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 22
    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static workerThreadViolationDetected(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "THREADCHECK"

    .line 43
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "@WorkerThread annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s."

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object p1, v5, p0

    const/4 p0, 0x2

    aput-object p2, v5, p0

    const/4 p0, 0x3

    aput-object v1, v5, p0

    const/4 p0, 0x4

    aput-object v0, v5, p0

    .line 45
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 43
    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
