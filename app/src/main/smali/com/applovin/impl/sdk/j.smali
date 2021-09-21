.class public Lcom/applovin/impl/sdk/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/j$c;,
        Lcom/applovin/impl/sdk/j$a;,
        Lcom/applovin/impl/sdk/j$b;,
        Lcom/applovin/impl/sdk/j$e;,
        Lcom/applovin/impl/sdk/j$d;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:I


# instance fields
.field private final a:Lcom/applovin/impl/sdk/i;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/sdk/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->h:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/j;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/j$d;)Lcom/applovin/impl/sdk/j$d;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/applovin/impl/sdk/j$d;

    invoke-direct {p1}, Lcom/applovin/impl/sdk/j$d;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/sdk/f;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/sdk/j$d;->G:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/sdk/f;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/sdk/j$d;->H:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->dZ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->j()Lcom/applovin/impl/sdk/j$c;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/applovin/impl/sdk/j$d;->u:Lcom/applovin/impl/sdk/j$c;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ek:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->n()Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/j$d;->t:Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->el:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/applovin/impl/sdk/j$d;->v:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect volume"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->em:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/applovin/impl/sdk/j;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    sput-object v0, Lcom/applovin/impl/sdk/j;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v0, ""

    goto :goto_3

    :cond_5
    :goto_4
    sget-object v0, Lcom/applovin/impl/sdk/j;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/applovin/impl/sdk/j;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/applovin/impl/sdk/j$d;->w:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ed:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/applovin/impl/sdk/j$d;->E:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lcom/applovin/impl/sdk/j$d;->E:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect free space."

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ee:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object v0, p1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v2, v0, Lcom/applovin/impl/sdk/j$e;->b:J

    iget-object v0, p1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v2, v0, Lcom/applovin/impl/sdk/j$e;->d:Z

    iget-object v0, p1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iput-wide v2, v0, Lcom/applovin/impl/sdk/j$e;->c:J

    iget-object v0, p1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v1, v0, Lcom/applovin/impl/sdk/j$e;->a:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect memory info."

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->C()Lcom/applovin/impl/sdk/b/d;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eo:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :try_start_3
    sput-object v0, Lcom/applovin/impl/sdk/j;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p1, Lcom/applovin/impl/sdk/j$d;->s:I

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/applovin/impl/sdk/j;->g:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    sput v1, Lcom/applovin/impl/sdk/j;->g:I

    goto :goto_7

    :cond_9
    sget v0, Lcom/applovin/impl/sdk/j;->g:I

    iput v0, p1, Lcom/applovin/impl/sdk/j$d;->s:I

    :goto_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ea:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/j$d;->z:Z

    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eb:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->m()Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/j$d;->A:Z

    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ec:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iput-object v0, p1, Lcom/applovin/impl/sdk/j$d;->D:Ljava/lang/String;

    :cond_c
    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/sdk/j$d;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ef:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/applovin/impl/sdk/utils/p;->d()Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/j$d;->B:Z

    :cond_d
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput v0, p1, Lcom/applovin/impl/sdk/j$d;->C:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect power saving mode"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_8
    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "receiver"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "speaker"

    return-object p1

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    const-string p1, "bluetootha2dpoutput"

    return-object p1

    :cond_3
    const/16 v0, 0xd

    if-eq p1, v0, :cond_7

    const/16 v0, 0x13

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_0
    const-string p1, "hdmioutput"

    return-object p1

    :cond_7
    :goto_1
    const-string p1, "lineout"

    return-object p1

    :cond_8
    :goto_2
    const-string p1, "headphones"

    return-object p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No context specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No permission name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/b/c<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/o;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    array-length v2, v1

    new-array v3, v0, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    add-int/lit8 v5, v2, -0x1

    :goto_1
    if-ltz v5, :cond_0

    aget-char v6, v3, v4

    aget v7, v1, v5

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v3, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([C)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xa
        0x3
        0x2
        0x1
        0xf
        0xa
        0xf
        0xe
    .end array-data
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/j;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/j;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 5

    const-string v0, "none"

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/p;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "portrait"

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "landscape"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->v()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    const-string v3, "DataCollector"

    const-string v4, "Encountered error while attempting to collect application orientation"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private h()Lcom/applovin/impl/sdk/j$a;
    .locals 4

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/j$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/j$a;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/applovin/impl/sdk/j$a;->a:Z

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "DataCollector"

    const-string v1, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/applovin/impl/sdk/j$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/j$a;-><init>()V

    return-object v0
.end method

.method private i()Z
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/p;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private j()Lcom/applovin/impl/sdk/j$c;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/applovin/impl/sdk/j$c;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/j$c;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v4, "level"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    if-eqz v2, :cond_1

    const-string v5, "scale"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    if-lez v4, :cond_2

    if-lez v5, :cond_2

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/applovin/impl/sdk/j$c;->b:I

    goto :goto_2

    :cond_2
    iput v3, v1, Lcom/applovin/impl/sdk/j$c;->b:I

    :goto_2
    if-eqz v2, :cond_3

    const-string v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :cond_3
    iput v3, v1, Lcom/applovin/impl/sdk/j$c;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v3, "DataCollector"

    const-string v4, "Unable to collect battery info"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/applovin/impl/sdk/j;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "headphones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bluetootha2dpoutput"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "No sound outputs detected"

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect sound outputs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private l()D
    .locals 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private m()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "DataCollector"

    const-string v3, "Failed to determine if device is TV."

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private n()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->p()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private o()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "lz}$blpz"

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()Z
    .locals 9

    const-string v0, "&zpz}ld&hyy&Z|yl{|zl{\'hyb"

    const-string v1, "&zk`g&z|"

    const-string v2, "&zpz}ld&k`g&z|"

    const-string v3, "&zpz}ld&qk`g&z|"

    const-string v4, "&mh}h&efjhe&qk`g&z|"

    const-string v5, "&mh}h&efjhe&k`g&z|"

    const-string v6, "&zpz}ld&zm&qk`g&z|"

    const-string v7, "&zpz}ld&k`g&oh`ezhol&z|"

    const-string v8, "&mh}h&efjhe&z|"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private q()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eh:Lcom/applovin/impl/sdk/b/c;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eg:Lcom/applovin/impl/sdk/b/c;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ei:Lcom/applovin/impl/sdk/b/c;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ej:Lcom/applovin/impl/sdk/b/c;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private r()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/applovin/impl/sdk/j$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/applovin/impl/sdk/j$1;-><init>(Lcom/applovin/impl/sdk/j;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->en:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->f()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->eK:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/p;->a(Lcom/applovin/impl/sdk/i;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->b()Lcom/applovin/impl/sdk/j$d;

    move-result-object v1

    const-string v2, "brand"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "brand_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hardware"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "api_level"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "carrier"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "country_code"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "locale"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->k:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "os"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "revision"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "orientation_lock"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->l:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tz_offset"

    iget-wide v3, v1, Lcom/applovin/impl/sdk/j$d;->r:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aida"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/j$d;->I:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wvvc"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->s:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adns"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->m:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adnsd"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->n:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "xdpi"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->o:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ydpi"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->p:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screen_size_in"

    iget-wide v3, v1, Lcom/applovin/impl/sdk/j$d;->q:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sim"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/j$d;->x:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gy"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/j$d;->y:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "is_tablet"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/j$d;->z:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tv"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/j$d;->A:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vs"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/j$d;->B:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lpm"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->C:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fs"

    iget-wide v3, v1, Lcom/applovin/impl/sdk/j$d;->E:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fm"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/j$e;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tm"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/j$e;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lmt"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/j$e;->c:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lm"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->F:Lcom/applovin/impl/sdk/j$e;

    iget-boolean v3, v3, Lcom/applovin/impl/sdk/j$e;->d:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adr"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/j$d;->t:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "volume"

    iget v3, v1, Lcom/applovin/impl/sdk/j$d;->v:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ua"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->w:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "so"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$d;->D:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, v1, Lcom/applovin/impl/sdk/j$d;->u:Lcom/applovin/impl/sdk/j$c;

    if-eqz v2, :cond_0

    const-string v3, "act"

    iget v4, v2, Lcom/applovin/impl/sdk/j$c;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "acm"

    iget v2, v2, Lcom/applovin/impl/sdk/j$c;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v1, Lcom/applovin/impl/sdk/j$d;->G:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    const-string v3, "huc"

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, v1, Lcom/applovin/impl/sdk/j$d;->H:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const-string v2, "aru"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    const-string v2, "dx"

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dy"

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accept"

    const-string v2, "custom_size,launch_app,video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "api_did"

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->S:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk_version"

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "build"

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "format"

    const-string v2, "json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->c()Lcom/applovin/impl/sdk/j$b;

    move-result-object v1

    const-string v2, "app_version"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$b;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ia"

    iget-wide v3, v1, Lcom/applovin/impl/sdk/j$b;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tg"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$b;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "installer_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/j$b;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "debug"

    iget-object v1, v1, Lcom/applovin/impl/sdk/j$b;->f:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mediation_provider"

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "network"

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/h;->f(Lcom/applovin/impl/sdk/i;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plugin_version"

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dY:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "preloading"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "test_ads"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->isTestAdsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string p2, "first_install"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->H()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "first_install_v2"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->I()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->eJ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "sdk_key"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p2, "sc"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->V:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sc2"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->W:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "server_installed_at"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->X:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->x:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p2, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "persisted_data"

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "v1"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "v2"

    const-string v1, "true"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "v3"

    const-string v1, "true"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "v4"

    const-string v1, "true"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "v5"

    const-string v1, "true"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ep:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->L()Lcom/applovin/impl/sdk/c/h;

    move-result-object p2

    const-string v1, "li"

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->b:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "si"

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->d:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pf"

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->h:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mpf"

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->n:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gpf"

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->i:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p2, "vz"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "pnr"

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_6

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/impl/sdk/j$a;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->e()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/utils/p;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/applovin/impl/sdk/j$a;

    invoke-direct {p2}, Lcom/applovin/impl/sdk/j$a;-><init>()V

    const-string p3, "inc"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/i;->O()Lcom/applovin/impl/sdk/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->d()Lcom/applovin/impl/sdk/j$a;

    move-result-object p2

    :goto_0
    iget-object p3, p2, Lcom/applovin/impl/sdk/j$a;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "idfa"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean p2, p2, Lcom/applovin/impl/sdk/j$a;->a:Z

    const-string p3, "dnt"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object p3, Lcom/applovin/impl/sdk/b/c;->dR:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "cuid"

    iget-object p3, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/i;->i()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v0}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object p3, Lcom/applovin/impl/sdk/b/c;->dU:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "compass_random_token"

    iget-object p3, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/i;->j()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object p3, Lcom/applovin/impl/sdk/b/c;->dW:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "applovin_random_token"

    iget-object p3, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/i;->k()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz p1, :cond_b

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_b
    const-string p1, "rid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->J()Lcom/applovin/impl/sdk/network/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a;->a()Lcom/applovin/impl/sdk/network/a$b;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string p2, "lrm_ts_ms"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "lrm_url"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "lrm_ct_ms"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "lrm_rs"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/a$b;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v0
.end method

.method public b()Lcom/applovin/impl/sdk/j$d;
    .locals 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/util/Map;

    const-class v1, Lcom/applovin/impl/sdk/j$d;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/j$d;

    :goto_0
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j$d;)Lcom/applovin/impl/sdk/j$d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/j$d;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/j$d;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->k:Ljava/util/Locale;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->a:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->b:Ljava/lang/String;

    const-string v1, "android"

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->c:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->d:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->e:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->f:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, v0, Lcom/applovin/impl/sdk/j$d;->h:I

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->l()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/sdk/j$d;->r:D

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->q()Z

    move-result v1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/j$d;->x:Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->i()Z

    move-result v1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/j$d;->I:Z

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/applovin/impl/sdk/j$d;->y:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/o;

    const-string v3, "DataCollector"

    const-string v4, "Unable to retrieve gyroscope availability"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/applovin/impl/sdk/j$d;->i:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/applovin/impl/sdk/j$d;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    iput-object v1, v0, Lcom/applovin/impl/sdk/j$d;->j:Ljava/lang/String;

    :cond_2
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lcom/applovin/impl/sdk/j$d;->m:F

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v0, Lcom/applovin/impl/sdk/j$d;->n:I

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, v0, Lcom/applovin/impl/sdk/j$d;->o:F

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, v0, Lcom/applovin/impl/sdk/j$d;->p:F

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const/4 v1, 0x0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget v3, v0, Lcom/applovin/impl/sdk/j$d;->o:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/applovin/impl/sdk/j$d;->q:D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/util/Map;

    const-class v2, Lcom/applovin/impl/sdk/j$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public c()Lcom/applovin/impl/sdk/j$b;
    .locals 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/util/Map;

    const-class v1, Lcom/applovin/impl/sdk/j$b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/j$b;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/applovin/impl/sdk/j;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    goto :goto_0

    :catch_0
    move-object v5, v4

    :catch_1
    :goto_0
    new-instance v6, Lcom/applovin/impl/sdk/j$b;

    invoke-direct {v6}, Lcom/applovin/impl/sdk/j$b;-><init>()V

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/applovin/impl/sdk/j$b;->c:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    iput-object v4, v6, Lcom/applovin/impl/sdk/j$b;->d:Ljava/lang/String;

    iput-wide v1, v6, Lcom/applovin/impl/sdk/j$b;->g:J

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/applovin/impl/sdk/j$b;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    iput-object v0, v6, Lcom/applovin/impl/sdk/j$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v1, Lcom/applovin/impl/sdk/b/e;->g:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/applovin/impl/sdk/j$b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/p;->b(Lcom/applovin/impl/sdk/i;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/applovin/impl/sdk/j$b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/util/Map;

    const-class v1, Lcom/applovin/impl/sdk/j$b;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public d()Lcom/applovin/impl/sdk/j$a;
    .locals 3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->h()Lcom/applovin/impl/sdk/j$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dQ:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/applovin/impl/sdk/j$a;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    sget-object v2, Lcom/applovin/impl/sdk/b/c;->dP:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, v0, Lcom/applovin/impl/sdk/j$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/j$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/j$a;-><init>()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/i;

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/i;

    new-instance v3, Lcom/applovin/impl/sdk/j$2;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/j$2;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/d/i;-><init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/d/i$a;)V

    sget-object v2, Lcom/applovin/impl/sdk/d/r$a;->d:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    return-void
.end method
