.class final Lcom/moat/analytics/mobile/cha/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/c$a;
    }
.end annotation


# static fields
.field private static ˊ:Z = false

.field private static ˋ:Landroid/app/Application; = null

.field private static ˎ:Z = false

.field static ˏ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static ॱ:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ˊ()I
    .locals 1

    .line 18
    sget v0, Lcom/moat/analytics/mobile/cha/c;->ॱ:I

    return v0
.end method

.method static synthetic ˊ(Landroid/app/Activity;)Z
    .locals 1

    .line 1054
    sget-object v0, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic ˎ(Z)Z
    .locals 0

    .line 18
    sput-boolean p0, Lcom/moat/analytics/mobile/cha/c;->ˊ:Z

    return p0
.end method

.method static ˏ()Landroid/app/Application;
    .locals 1

    .line 49
    sget-object v0, Lcom/moat/analytics/mobile/cha/c;->ˋ:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic ॱ(I)I
    .locals 0

    .line 18
    sput p0, Lcom/moat/analytics/mobile/cha/c;->ॱ:I

    return p0
.end method

.method static ॱ(Landroid/app/Application;)V
    .locals 1

    .line 41
    sput-object p0, Lcom/moat/analytics/mobile/cha/c;->ˋ:Landroid/app/Application;

    .line 42
    sget-boolean p0, Lcom/moat/analytics/mobile/cha/c;->ˎ:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 43
    sput-boolean p0, Lcom/moat/analytics/mobile/cha/c;->ˎ:Z

    .line 44
    sget-object p0, Lcom/moat/analytics/mobile/cha/c;->ˋ:Landroid/app/Application;

    new-instance v0, Lcom/moat/analytics/mobile/cha/c$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/c$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method static synthetic ॱ()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/moat/analytics/mobile/cha/c;->ˊ:Z

    return v0
.end method
