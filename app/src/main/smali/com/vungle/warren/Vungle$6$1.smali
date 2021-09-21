.class Lcom/vungle/warren/Vungle$6$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/Vungle$6;

.field final synthetic val$finalAdvertisement:Lcom/vungle/warren/model/Advertisement;

.field final synthetic val$finalStreamingOnly:Z


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$6;ZLcom/vungle/warren/model/Advertisement;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iput-boolean p2, p0, Lcom/vungle/warren/Vungle$6$1;->val$finalStreamingOnly:Z

    iput-object p3, p0, Lcom/vungle/warren/Vungle$6$1;->val$finalAdvertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 845
    sget-object p1, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {p1}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/vungle/warren/Vungle$6$1$2;

    invoke-direct {p2, p0}, Lcom/vungle/warren/Vungle$6$1$2;-><init>(Lcom/vungle/warren/Vungle$6$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 792
    sget-object p1, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    invoke-virtual {p1}, Lcom/vungle/warren/utility/SDKExecutors;->getVungleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/Vungle$6$1$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/warren/Vungle$6$1$1;-><init>(Lcom/vungle/warren/Vungle$6$1;Lretrofit2/Response;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
