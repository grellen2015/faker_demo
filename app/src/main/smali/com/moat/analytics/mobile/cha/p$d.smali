.class final Lcom/moat/analytics/mobile/cha/p$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private final ˊ:[Ljava/lang/ref/WeakReference;

.field private final ˋ:Ljava/lang/reflect/Method;

.field private final ˎ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic ॱ:Lcom/moat/analytics/mobile/cha/p;


# direct methods
.method private varargs constructor <init>(Lcom/moat/analytics/mobile/cha/p;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 6

    .line 45
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/p$d;->ॱ:Lcom/moat/analytics/mobile/cha/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˎ:Ljava/util/LinkedList;

    if-nez p3, :cond_0

    .line 46
    invoke-static {}, Lcom/moat/analytics/mobile/cha/p;->ˏ()[Ljava/lang/Object;

    move-result-object p3

    .line 47
    :cond_0
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/ref/WeakReference;

    .line 49
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p3, v1

    .line 50
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˎ:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 55
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, p1, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 57
    :cond_3
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˊ:[Ljava/lang/ref/WeakReference;

    .line 58
    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˋ:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/cha/p;Ljava/lang/reflect/Method;[Ljava/lang/Object;B)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/cha/p$d;-><init>(Lcom/moat/analytics/mobile/cha/p;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic ˊ(Lcom/moat/analytics/mobile/cha/p$d;)[Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˊ:[Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic ˋ(Lcom/moat/analytics/mobile/cha/p$d;)Ljava/lang/reflect/Method;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/moat/analytics/mobile/cha/p$d;->ˋ:Ljava/lang/reflect/Method;

    return-object p0
.end method
