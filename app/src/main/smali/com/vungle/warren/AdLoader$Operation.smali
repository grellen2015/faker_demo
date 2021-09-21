.class Lcom/vungle/warren/AdLoader$Operation;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Operation"
.end annotation


# instance fields
.field cancelable:Z

.field final delay:J

.field final directDownload:Lcom/vungle/warren/PublisherDirectDownload;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final id:Ljava/lang/String;

.field final loadAdCallbacks:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vungle/warren/LoadAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field final loading:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final policy:I

.field final retry:I

.field final retryDelay:J

.field final retryLimit:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;JJIILcom/vungle/warren/PublisherDirectDownload;IZ[Lcom/vungle/warren/LoadAdCallback;)V
    .locals 1
    .param p8    # Lcom/vungle/warren/PublisherDirectDownload;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # [Lcom/vungle/warren/LoadAdCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    .line 134
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    .line 135
    iput-wide p2, p0, Lcom/vungle/warren/AdLoader$Operation;->delay:J

    .line 136
    iput-wide p4, p0, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    .line 137
    iput p6, p0, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    .line 138
    iput p7, p0, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    .line 139
    iput-object p8, p0, Lcom/vungle/warren/AdLoader$Operation;->directDownload:Lcom/vungle/warren/PublisherDirectDownload;

    .line 140
    iput p9, p0, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    .line 141
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/AdLoader$Operation;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    iput-boolean p10, p0, Lcom/vungle/warren/AdLoader$Operation;->cancelable:Z

    if-eqz p11, :cond_0

    .line 144
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-static {p11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method delay(J)Lcom/vungle/warren/AdLoader$Operation;
    .locals 13

    .line 149
    new-instance v12, Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iget-wide v4, p0, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    iget v6, p0, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    iget v7, p0, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$Operation;->directDownload:Lcom/vungle/warren/PublisherDirectDownload;

    iget v9, p0, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    iget-boolean v10, p0, Lcom/vungle/warren/AdLoader$Operation;->cancelable:Z

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vungle/warren/LoadAdCallback;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Lcom/vungle/warren/LoadAdCallback;

    move-object v0, v12

    move-wide v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;JJIILcom/vungle/warren/PublisherDirectDownload;IZ[Lcom/vungle/warren/LoadAdCallback;)V

    return-object v12
.end method

.method retry(I)Lcom/vungle/warren/AdLoader$Operation;
    .locals 13

    .line 157
    new-instance v12, Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iget-wide v2, p0, Lcom/vungle/warren/AdLoader$Operation;->delay:J

    iget-wide v4, p0, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    iget v6, p0, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    iget v7, p0, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$Operation;->directDownload:Lcom/vungle/warren/PublisherDirectDownload;

    iget-boolean v10, p0, Lcom/vungle/warren/AdLoader$Operation;->cancelable:Z

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/vungle/warren/LoadAdCallback;

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Lcom/vungle/warren/LoadAdCallback;

    move-object v0, v12

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;JJIILcom/vungle/warren/PublisherDirectDownload;IZ[Lcom/vungle/warren/LoadAdCallback;)V

    return-object v12
.end method

.method retryDelay(J)Lcom/vungle/warren/AdLoader$Operation;
    .locals 13

    .line 153
    new-instance v12, Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iget-wide v2, p0, Lcom/vungle/warren/AdLoader$Operation;->delay:J

    iget v6, p0, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    iget v7, p0, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$Operation;->directDownload:Lcom/vungle/warren/PublisherDirectDownload;

    iget v9, p0, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    iget-boolean v10, p0, Lcom/vungle/warren/AdLoader$Operation;->cancelable:Z

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/vungle/warren/LoadAdCallback;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Lcom/vungle/warren/LoadAdCallback;

    move-object v0, v12

    move-wide v4, p1

    invoke-direct/range {v0 .. v11}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;JJIILcom/vungle/warren/PublisherDirectDownload;IZ[Lcom/vungle/warren/LoadAdCallback;)V

    return-object v12
.end method
