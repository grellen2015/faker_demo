.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->QueryInventory(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

.field final synthetic val$skus:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->val$skus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Inventory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "onQueryInventoryFinished: %s"

    .line 566
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p1, Lcom/unity/purchasing/googleplay/IabResult;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retrieved fatal API response code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " . Initiating failed setup callback. Check your google account."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/IStoreCallback;

    move-result-object p1

    sget-object p2, Lcom/unity/purchasing/common/InitializationFailureReason;->AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-interface {p1, p2}, Lcom/unity/purchasing/common/IStoreCallback;->OnSetupFailed(Lcom/unity/purchasing/common/InitializationFailureReason;)V

    goto :goto_0

    .line 575
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to Query inventory. UnityIAP will automatically retry in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Ljava/lang/String;)V

    .line 577
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->val$skus:Ljava/util/List;

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;J)V

    .line 578
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    const p2, 0x493e0

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$202(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;I)I

    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$302(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Inventory;)Lcom/unity/purchasing/googleplay/Inventory;

    .line 585
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->val$skus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity/purchasing/googleplay/Inventory;->hasConsumablePurchaseHistory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity/purchasing/googleplay/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 589
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity/purchasing/googleplay/Inventory;->getHistoryPurchase(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object v1, v1, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/unity/purchasing/googleplay/IabHelper;->consumeAsync(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Z)V

    goto :goto_1

    .line 594
    :cond_3
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$6;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Inventory;)V

    return-void
.end method
