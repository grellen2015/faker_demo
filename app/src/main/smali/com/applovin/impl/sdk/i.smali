.class public Lcom/applovin/impl/sdk/i;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/content/Context;


# instance fields
.field private A:Lcom/applovin/impl/sdk/c/c;

.field private B:Lcom/applovin/impl/sdk/t;

.field private C:Lcom/applovin/impl/sdk/a;

.field private D:Lcom/applovin/impl/sdk/n;

.field private E:Lcom/applovin/impl/sdk/s;

.field private F:Lcom/applovin/impl/sdk/network/c;

.field private G:Lcom/applovin/impl/sdk/e;

.field private H:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

.field private I:Lcom/applovin/impl/sdk/network/e;

.field private J:Lcom/applovin/impl/mediation/h;

.field private K:Lcom/applovin/impl/mediation/g;

.field private L:Lcom/applovin/impl/mediation/MediationServiceImpl;

.field private M:Lcom/applovin/impl/mediation/k;

.field private N:Lcom/applovin/impl/mediation/a/a;

.field private O:Lcom/applovin/impl/mediation/j;

.field private final P:Ljava/lang/Object;

.field private final Q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private Y:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private Z:Lcom/applovin/sdk/AppLovinSdkConfiguration;

.field protected b:Lcom/applovin/impl/sdk/b/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

.field private i:Lcom/applovin/impl/sdk/EventServiceImpl;

.field private j:Lcom/applovin/impl/sdk/UserServiceImpl;

.field private k:Lcom/applovin/impl/sdk/VariableServiceImpl;

.field private l:Lcom/applovin/sdk/AppLovinSdk;

.field private m:Lcom/applovin/impl/sdk/o;

.field private n:Lcom/applovin/impl/sdk/d/r;

.field private o:Lcom/applovin/impl/sdk/network/a;

.field private p:Lcom/applovin/impl/sdk/c/h;

.field private q:Lcom/applovin/impl/sdk/c/j;

.field private r:Lcom/applovin/impl/sdk/j;

.field private s:Lcom/applovin/impl/sdk/b/f;

.field private t:Lcom/applovin/impl/sdk/c/f;

.field private u:Lcom/applovin/impl/sdk/h;

.field private v:Lcom/applovin/impl/sdk/utils/o;

.field private w:Lcom/applovin/impl/sdk/c;

.field private x:Lcom/applovin/impl/sdk/p;

.field private y:Lcom/applovin/impl/sdk/m;

.field private z:Lcom/applovin/impl/sdk/ad/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->P:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/i;->R:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/i;->S:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/i;->T:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/i;->U:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/i;->V:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->W:Ljava/lang/String;

    return-void
.end method

.method public static E()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/d/r;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->n:Lcom/applovin/impl/sdk/d/r;

    return-object p0
.end method

.method private af()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->F:Lcom/applovin/impl/sdk/network/c;

    new-instance v1, Lcom/applovin/impl/sdk/i$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/i$3;-><init>(Lcom/applovin/impl/sdk/i;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/network/c$a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/o;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/i;)Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->Z:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->P:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/applovin/impl/sdk/i;->R:Z

    return p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/network/c;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->F:Lcom/applovin/impl/sdk/network/c;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/applovin/impl/mediation/k;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->M:Lcom/applovin/impl/mediation/k;

    return-object v0
.end method

.method public B()Lcom/applovin/impl/mediation/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->O:Lcom/applovin/impl/mediation/j;

    return-object v0
.end method

.method public C()Lcom/applovin/impl/sdk/b/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    return-object v0
.end method

.method public D()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public F()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public G()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/i;->e:J

    return-wide v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/i;->U:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/i;->V:Z

    return v0
.end method

.method public J()Lcom/applovin/impl/sdk/network/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->o:Lcom/applovin/impl/sdk/network/a;

    return-object v0
.end method

.method public K()Lcom/applovin/impl/sdk/d/r;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->n:Lcom/applovin/impl/sdk/d/r;

    return-object v0
.end method

.method public L()Lcom/applovin/impl/sdk/c/h;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->p:Lcom/applovin/impl/sdk/c/h;

    return-object v0
.end method

.method public M()Lcom/applovin/impl/sdk/c/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->q:Lcom/applovin/impl/sdk/c/j;

    return-object v0
.end method

.method public N()Lcom/applovin/impl/sdk/network/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->I:Lcom/applovin/impl/sdk/network/e;

    return-object v0
.end method

.method public O()Lcom/applovin/impl/sdk/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->r:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method public P()Lcom/applovin/impl/sdk/c/f;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->t:Lcom/applovin/impl/sdk/c/f;

    return-object v0
.end method

.method public Q()Lcom/applovin/impl/sdk/h;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->u:Lcom/applovin/impl/sdk/h;

    return-object v0
.end method

.method public R()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->H:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    return-object v0
.end method

.method public S()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->l:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method public T()Lcom/applovin/impl/sdk/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->w:Lcom/applovin/impl/sdk/c;

    return-object v0
.end method

.method public U()Lcom/applovin/impl/sdk/p;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->x:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method public V()Lcom/applovin/impl/sdk/m;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->y:Lcom/applovin/impl/sdk/m;

    return-object v0
.end method

.method public W()Lcom/applovin/impl/sdk/ad/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->z:Lcom/applovin/impl/sdk/ad/e;

    return-object v0
.end method

.method public X()Lcom/applovin/impl/sdk/c/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->A:Lcom/applovin/impl/sdk/c/c;

    return-object v0
.end method

.method public Y()Lcom/applovin/impl/sdk/t;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->B:Lcom/applovin/impl/sdk/t;

    return-object v0
.end method

.method public Z()Lcom/applovin/impl/sdk/n;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->D:Lcom/applovin/impl/sdk/n;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Lcom/applovin/impl/sdk/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/b/c<",
            "TST;>;)",
            "Lcom/applovin/impl/sdk/b/c<",
            "TST;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/d;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/c;)Lcom/applovin/impl/sdk/b/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/c<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-static {p1, p2, p3, p4}, Lcom/applovin/impl/sdk/b/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->P:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/i;->R:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/i;->S:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->u:Lcom/applovin/impl/sdk/h;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/h;->a(J)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/f;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/b/e;)V
    .locals 2

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->n:Lcom/applovin/impl/sdk/d/r;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/r;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/applovin/impl/sdk/b/b;->a:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->K:Lcom/applovin/impl/mediation/g;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    const-string v0, "AppLovinSdk"

    const-string v1, "All required adapters initialized"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->n:Lcom/applovin/impl/sdk/d/r;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/r;->e()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->e()V

    :cond_1
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e<",
            "TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->Z:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;->onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/i;->X:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/i;->l:Lcom/applovin/sdk/AppLovinSdk;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppLovinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting plugin version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v1, Lcom/applovin/impl/sdk/b/c;->dY:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/d;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/applovin/impl/sdk/i;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/i;->e:J

    iput-object p2, p0, Lcom/applovin/impl/sdk/i;->f:Lcom/applovin/sdk/AppLovinSdkSettings;

    new-instance v0, Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->Z:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/i;->a:Landroid/content/Context;

    instance-of v0, p3, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p3

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->d:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/applovin/impl/sdk/o;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/o;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    new-instance v2, Lcom/applovin/impl/sdk/b/f;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/b/f;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    new-instance v2, Lcom/applovin/impl/sdk/b/d;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/b/d;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/d;->b()V

    new-instance v2, Lcom/applovin/impl/sdk/c/f;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/c/f;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->t:Lcom/applovin/impl/sdk/c/f;

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->t:Lcom/applovin/impl/sdk/c/f;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/f;->b()V

    new-instance v2, Lcom/applovin/impl/sdk/m;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/m;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->y:Lcom/applovin/impl/sdk/m;

    new-instance v2, Lcom/applovin/impl/sdk/c;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->w:Lcom/applovin/impl/sdk/c;

    new-instance v2, Lcom/applovin/impl/sdk/p;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/p;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->x:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/sdk/ad/e;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/ad/e;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->z:Lcom/applovin/impl/sdk/ad/e;

    new-instance v2, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/EventServiceImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->i:Lcom/applovin/impl/sdk/EventServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/UserServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/UserServiceImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->j:Lcom/applovin/impl/sdk/UserServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/VariableServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/VariableServiceImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->k:Lcom/applovin/impl/sdk/VariableServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/c/c;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/c/c;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->A:Lcom/applovin/impl/sdk/c/c;

    new-instance v2, Lcom/applovin/impl/sdk/d/r;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/d/r;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->n:Lcom/applovin/impl/sdk/d/r;

    new-instance v2, Lcom/applovin/impl/sdk/network/a;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/network/a;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->o:Lcom/applovin/impl/sdk/network/a;

    new-instance v2, Lcom/applovin/impl/sdk/c/h;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/c/h;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->p:Lcom/applovin/impl/sdk/c/h;

    new-instance v2, Lcom/applovin/impl/sdk/c/j;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/c/j;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->q:Lcom/applovin/impl/sdk/c/j;

    new-instance v2, Lcom/applovin/impl/sdk/j;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/j;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->r:Lcom/applovin/impl/sdk/j;

    new-instance v2, Lcom/applovin/impl/sdk/a;

    invoke-direct {v2, p3}, Lcom/applovin/impl/sdk/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->C:Lcom/applovin/impl/sdk/a;

    new-instance v2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/NativeAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/t;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/t;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->B:Lcom/applovin/impl/sdk/t;

    new-instance v2, Lcom/applovin/impl/sdk/n;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/n;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->D:Lcom/applovin/impl/sdk/n;

    new-instance v2, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->H:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    new-instance v2, Lcom/applovin/impl/sdk/network/e;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/network/e;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->I:Lcom/applovin/impl/sdk/network/e;

    new-instance v2, Lcom/applovin/impl/mediation/h;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/h;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->J:Lcom/applovin/impl/mediation/h;

    new-instance v2, Lcom/applovin/impl/mediation/g;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/g;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->K:Lcom/applovin/impl/mediation/g;

    new-instance v2, Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/MediationServiceImpl;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->L:Lcom/applovin/impl/mediation/MediationServiceImpl;

    new-instance v2, Lcom/applovin/impl/mediation/a/a;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/a/a;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->N:Lcom/applovin/impl/mediation/a/a;

    new-instance v2, Lcom/applovin/impl/mediation/k;

    invoke-direct {v2}, Lcom/applovin/impl/mediation/k;-><init>()V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->M:Lcom/applovin/impl/mediation/k;

    new-instance v2, Lcom/applovin/impl/mediation/j;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/j;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->O:Lcom/applovin/impl/mediation/j;

    new-instance v2, Lcom/applovin/impl/sdk/h;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/h;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->u:Lcom/applovin/impl/sdk/h;

    new-instance v2, Lcom/applovin/impl/sdk/utils/o;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/utils/o;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->v:Lcom/applovin/impl/sdk/utils/o;

    new-instance v2, Lcom/applovin/impl/sdk/s;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/s;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->E:Lcom/applovin/impl/sdk/s;

    new-instance v2, Lcom/applovin/impl/sdk/e;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/impl/sdk/i;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->G:Lcom/applovin/impl/sdk/e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->dE:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/applovin/impl/sdk/network/c;

    invoke-direct {v2, p3}, Lcom/applovin/impl/sdk/network/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->F:Lcom/applovin/impl/sdk/network/c;

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/i;->T:Z

    const-string p1, "AppLovinSdk"

    const-string v3, "Unable to find AppLovin SDK key. Please add  meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {p1, v3}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "AppLovinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called with an invalid SDK key from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/applovin/impl/sdk/o;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->u()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->Z:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1, v3}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/p;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setTestAdsEnabled(Z)V

    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/p;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->C()Lcom/applovin/impl/sdk/b/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/sdk/AppLovinSdkSettings;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->C()Lcom/applovin/impl/sdk/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/d;->a()V

    :cond_3
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object p3, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/e;

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3, p1}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/i;->U:Z

    iget-object p2, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object p3, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/e;

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p2, p3, v3, p1}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object p3, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/e;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object p2, Lcom/applovin/impl/sdk/b/e;->b:Lcom/applovin/impl/sdk/b/e;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    const-string p2, "AppLovinSdk"

    const-string p3, "Initializing SDK for non-maiden launch"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/i;->V:Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    const-string p2, "AppLovinSdk"

    const-string p3, "Initializing SDK for maiden launch"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    sget-object p2, Lcom/applovin/impl/sdk/b/e;->b:Lcom/applovin/impl/sdk/b/e;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :goto_2
    sget-object p1, Lcom/applovin/impl/sdk/b/e;->g:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v3

    double-to-int p1, p1

    add-int/2addr p1, v2

    sget-object p2, Lcom/applovin/impl/sdk/b/e;->g:Lcom/applovin/impl/sdk/b/e;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->D()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object p3, Lcom/applovin/impl/sdk/b/c;->dF:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->b()V

    :cond_8
    iget-object p2, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    sget-object p3, Lcom/applovin/impl/sdk/b/c;->dE:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/b/d;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    const-string p2, "AppLovinSdk"

    const-string p3, "SDK initialized with no internet connection - listening for connection"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/i;->af()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/i;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "AppLovinSdk"

    const-string p3, "Failed to load AppLovin SDK, ad serving will be disabled"

    invoke-static {p2, p3, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/i;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->P:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/i;->R:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/i;->S:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/applovin/impl/sdk/b/b;->a:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->n:Lcom/applovin/impl/sdk/d/r;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/r;->e()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->e()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/b/b;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v2, Lcom/applovin/impl/sdk/d/ac;

    const/4 v0, 0x1

    new-instance v1, Lcom/applovin/impl/sdk/i$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/i$1;-><init>(Lcom/applovin/impl/sdk/i;)V

    invoke-direct {v2, p0, v0, v1}, Lcom/applovin/impl/sdk/d/ac;-><init>(Lcom/applovin/impl/sdk/i;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting for required adapters to init: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - timing out in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms..."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/i;->n:Lcom/applovin/impl/sdk/d/r;

    sget-object v3, Lcom/applovin/impl/sdk/d/r$a;->k:Lcom/applovin/impl/sdk/d/r$a;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;JZ)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public aa()Lcom/applovin/impl/sdk/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->C:Lcom/applovin/impl/sdk/a;

    return-object v0
.end method

.method public ab()Lcom/applovin/impl/sdk/s;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->E:Lcom/applovin/impl/sdk/s;

    return-object v0
.end method

.method public ac()Lcom/applovin/impl/sdk/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->G:Lcom/applovin/impl/sdk/e;

    return-object v0
.end method

.method public ad()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method public ae()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->F()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->aa()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e<",
            "TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/f;->b(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/c;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/d;->b(Lcom/applovin/impl/sdk/b/c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->P:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/i;->R:Z

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/d/r;->d()V

    new-instance v1, Lcom/applovin/impl/sdk/d/k;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/d/k;-><init>(Lcom/applovin/impl/sdk/i;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->K()Lcom/applovin/impl/sdk/d/r;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/d/r$a;->a:Lcom/applovin/impl/sdk/d/r$a;

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/r$a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/applovin/impl/sdk/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/e<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->s:Lcom/applovin/impl/sdk/b/f;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/f;->a(Lcom/applovin/impl/sdk/b/e;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppLovinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->v:Lcom/applovin/impl/sdk/utils/o;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->y:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->P:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/i;->R:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->P:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/i;->S:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->X:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->X:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->X:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->Y:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/i;->Y:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/applovin/impl/sdk/b/c;->ae:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v2, p0, Lcom/applovin/impl/sdk/i;->X:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->Y:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    :goto_0
    const-wide/16 v1, 0x0

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->af:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p0, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/sdk/i$2;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/sdk/i$2;-><init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    invoke-static {v3, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->p:Lcom/applovin/impl/sdk/c/h;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->g:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/d;->c()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/d;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->p:Lcom/applovin/impl/sdk/c/h;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/h;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->A:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->q:Lcom/applovin/impl/sdk/c/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/j;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/i;->p:Lcom/applovin/impl/sdk/c/h;

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->g:Lcom/applovin/impl/sdk/c/g;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->N:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a;->b()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->B:Lcom/applovin/impl/sdk/t;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/t;->d()Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->v:Lcom/applovin/impl/sdk/utils/o;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->v:Lcom/applovin/impl/sdk/utils/o;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->v:Lcom/applovin/impl/sdk/utils/o;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/o;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->f:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public m()Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->Z:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b/e;->y:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object v0
.end method

.method public p()Lcom/applovin/impl/sdk/NativeAdServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    return-object v0
.end method

.method public q()Lcom/applovin/sdk/AppLovinEventService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->i:Lcom/applovin/impl/sdk/EventServiceImpl;

    return-object v0
.end method

.method public r()Lcom/applovin/sdk/AppLovinUserService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->j:Lcom/applovin/impl/sdk/UserServiceImpl;

    return-object v0
.end method

.method public s()Lcom/applovin/impl/sdk/VariableServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->k:Lcom/applovin/impl/sdk/VariableServiceImpl;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreSdk{sdkKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/i;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/i;->U:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/i;->T:Z

    return v0
.end method

.method public v()Lcom/applovin/impl/sdk/o;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->m:Lcom/applovin/impl/sdk/o;

    return-object v0
.end method

.method public w()Lcom/applovin/impl/mediation/h;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->J:Lcom/applovin/impl/mediation/h;

    return-object v0
.end method

.method public x()Lcom/applovin/impl/mediation/g;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->K:Lcom/applovin/impl/mediation/g;

    return-object v0
.end method

.method public y()Lcom/applovin/impl/mediation/MediationServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->L:Lcom/applovin/impl/mediation/MediationServiceImpl;

    return-object v0
.end method

.method public z()Lcom/applovin/impl/mediation/a/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->N:Lcom/applovin/impl/mediation/a/a;

    return-object v0
.end method
