.class final Lcom/moat/analytics/mobile/cha/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/cha/p$c<",
        "Lcom/moat/analytics/mobile/cha/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Ljava/lang/ref/WeakReference;

.field private synthetic ˏ:Lcom/moat/analytics/mobile/cha/k;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/k;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/k$4;->ˏ:Lcom/moat/analytics/mobile/cha/k;

    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/k$4;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˋ()Lcom/moat/analytics/mobile/cha/base/functional/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/cha/base/functional/Optional<",
            "Lcom/moat/analytics/mobile/cha/WebAdTracker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/k$4;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to create WebAdTracker for adContainer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[INFO] "

    const-string v3, "Factory"

    const/4 v4, 0x3

    .line 1055
    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/moat/analytics/mobile/cha/v;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/cha/v;-><init>(Landroid/view/ViewGroup;)V

    .line 104
    invoke-static {v1}, Lcom/moat/analytics/mobile/cha/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/cha/base/functional/Optional;

    move-result-object v0

    return-object v0
.end method
