.class final Lcom/moat/analytics/mobile/cha/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/t$b;,
        Lcom/moat/analytics/mobile/cha/t$c;,
        Lcom/moat/analytics/mobile/cha/t$e;,
        Lcom/moat/analytics/mobile/cha/t$d;,
        Lcom/moat/analytics/mobile/cha/t$a;
    }
.end annotation


# static fields
.field private static ʻ:Lcom/moat/analytics/mobile/cha/t;

.field private static final ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/moat/analytics/mobile/cha/t$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ʼ:J

.field volatile ˊ:I

.field private ˊॱ:J

.field volatile ˋ:Z

.field private final ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile ˎ:I

.field volatile ˏ:Z

.field private final ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile ॱ:I

.field private final ॱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile ॱˋ:J

.field private ᐝ:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b7740

    .line 58
    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˊॱ:J

    const-wide/32 v0, 0xea60

    .line 59
    iput-wide v0, p0, Lcom/moat/analytics/mobile/cha/t;->ʼ:J

    .line 69
    sget v0, Lcom/moat/analytics/mobile/cha/t$a;->ॱ:I

    iput v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˏ:Z

    .line 71
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˋ:Z

    const/16 v1, 0xc8

    .line 72
    iput v1, p0, Lcom/moat/analytics/mobile/cha/t;->ˊ:I

    const/16 v1, 0xa

    .line 73
    iput v1, p0, Lcom/moat/analytics/mobile/cha/t;->ॱ:I

    .line 75
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/t;->ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, 0x0

    .line 76
    iput-wide v1, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˋ:J

    .line 77
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/t;->ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ᐝ:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/t;->ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static ˊ()V
    .locals 8

    .line 165
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 167
    sget-object v3, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moat/analytics/mobile/cha/t$e;

    .line 169
    iget-object v4, v4, Lcom/moat/analytics/mobile/cha/t$e;->ˎ:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v4, v1, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 170
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    :cond_1
    sget-object v1, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 175
    sget-object v2, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic ˋ(Lcom/moat/analytics/mobile/cha/t;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/t;->ᐝ:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic ˋ()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .line 44
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic ˋ(Lcom/moat/analytics/mobile/cha/t;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/cha/t;->ˏ(J)V

    return-void
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/t;->ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic ˏ(Lcom/moat/analytics/mobile/cha/t;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/moat/analytics/mobile/cha/t;->ʼ:J

    return-wide v0
.end method

.method static declared-synchronized ˏ()Lcom/moat/analytics/mobile/cha/t;
    .locals 2

    const-class v0, Lcom/moat/analytics/mobile/cha/t;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/moat/analytics/mobile/cha/t;->ʻ:Lcom/moat/analytics/mobile/cha/t;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/moat/analytics/mobile/cha/t;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/cha/t;-><init>()V

    sput-object v1, Lcom/moat/analytics/mobile/cha/t;->ʻ:Lcom/moat/analytics/mobile/cha/t;

    .line 85
    :cond_0
    sget-object v1, Lcom/moat/analytics/mobile/cha/t;->ʻ:Lcom/moat/analytics/mobile/cha/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 81
    monitor-exit v0

    throw v1
.end method

.method private ˏ(J)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˏॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-string v1, "OnOff"

    const-string v2, "Performing status check."

    .line 112
    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/moat/analytics/mobile/cha/t$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/moat/analytics/mobile/cha/t$2;-><init>(Lcom/moat/analytics/mobile/cha/t;J)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/cha/t;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˋ:J

    return-wide p1
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/cha/t;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic ॱ()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˊ()V

    return-void
.end method


# virtual methods
.method final ˊ(Lcom/moat/analytics/mobile/cha/t$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 155
    iget v0, p0, Lcom/moat/analytics/mobile/cha/t;->ˎ:I

    sget v1, Lcom/moat/analytics/mobile/cha/t$a;->ˎ:I

    if-ne v0, v1, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/moat/analytics/mobile/cha/t$b;->ˎ()V

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˊ()V

    .line 159
    sget-object v0, Lcom/moat/analytics/mobile/cha/t;->ʽ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/moat/analytics/mobile/cha/t$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/moat/analytics/mobile/cha/t$e;-><init>(Lcom/moat/analytics/mobile/cha/t;Ljava/lang/Long;Lcom/moat/analytics/mobile/cha/t$b;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/t;->ˋॱ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1185
    new-instance p1, Lcom/moat/analytics/mobile/cha/t$4;

    invoke-direct {p1, p0}, Lcom/moat/analytics/mobile/cha/t$4;-><init>(Lcom/moat/analytics/mobile/cha/t;)V

    .line 1201
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/t;->ᐝ:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method final ˎ()V
    .locals 4

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/moat/analytics/mobile/cha/t;->ॱˋ:J

    sub-long/2addr v0, v2

    .line 103
    iget-wide v2, p0, Lcom/moat/analytics/mobile/cha/t;->ˊॱ:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/moat/analytics/mobile/cha/t;->ˏ(J)V

    :cond_0
    return-void
.end method
