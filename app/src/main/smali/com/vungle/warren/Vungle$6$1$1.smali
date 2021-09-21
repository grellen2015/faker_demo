.class Lcom/vungle/warren/Vungle$6$1$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle$6$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/Vungle$6$1;

.field final synthetic val$response:Lretrofit2/Response;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$6$1;Lretrofit2/Response;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$6$1$1;->val$response:Lretrofit2/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6$1$1;->val$response:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6$1$1;->val$response:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    const-string v2, "ad"

    .line 798
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "ad"

    .line 800
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 801
    new-instance v2, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v2, v0}, Lcom/vungle/warren/model/Advertisement;-><init>(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/vungle/warren/error/VungleError; {:try_start_0 .. :try_end_0} :catch_3

    .line 804
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6;->val$settings:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v2, v0}, Lcom/vungle/warren/model/Advertisement;->configure(Lcom/vungle/warren/AdConfig;)V

    .line 809
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/vungle/warren/error/VungleError; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    .line 817
    :goto_0
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleError;->getErrorCode()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const-string v2, "Vungle"

    const-string v3, "Error using will_play_ad!"

    .line 818
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 820
    :cond_0
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v2, "will_play_ad was disabled by the configuration settings. This is expected."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_1
    const-string v2, "Vungle"

    const-string v3, "Error using will_play_ad!"

    .line 814
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_5
    :goto_2
    const-string v0, "Vungle"

    const-string v2, "Will Play Ad did not respond with a replacement. Move on."

    .line 812
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-boolean v0, v0, Lcom/vungle/warren/Vungle$6$1;->val$finalStreamingOnly:Z

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    .line 830
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$6;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v3, v3, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v3, v3, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/vungle/warren/Vungle;->access$2000(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;)V

    goto :goto_4

    .line 835
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v0, v0, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v1, v1, Lcom/vungle/warren/Vungle$6;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v2, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$6$1;->this$0:Lcom/vungle/warren/Vungle$6;

    iget-object v2, v2, Lcom/vungle/warren/Vungle$6;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$6$1$1;->this$1:Lcom/vungle/warren/Vungle$6$1;

    iget-object v3, v3, Lcom/vungle/warren/Vungle$6$1;->val$finalAdvertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/warren/Vungle;->access$2000(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;)V

    :goto_4
    return-void
.end method
