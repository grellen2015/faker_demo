.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->consumeSuspectFailedPurchase(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

.field final synthetic val$p:Lcom/unity/purchasing/common/ProductDefinition;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/lang/String;Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->val$p:Lcom/unity/purchasing/common/ProductDefinition;

    iput-object p4, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/unity/purchasing/googleplay/IabResult;Lcom/unity/purchasing/googleplay/Inventory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 747
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getResponse()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retrieved fatal API response code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " .Initiating failed setup callback. Check your google account."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/IStoreCallback;

    move-result-object p1

    sget-object p2, Lcom/unity/purchasing/common/InitializationFailureReason;->AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-interface {p1, p2}, Lcom/unity/purchasing/common/IStoreCallback;->OnSetupFailed(Lcom/unity/purchasing/common/InitializationFailureReason;)V

    goto :goto_0

    .line 752
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to Query inventory. UnityIAP will automatically retry in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Ljava/lang/String;)V

    .line 753
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p2

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Lcom/unity/purchasing/googleplay/Inventory;->getAllSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;J)V

    .line 754
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    const p2, 0x493e0

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$202(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;I)I

    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1, p2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$302(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Lcom/unity/purchasing/googleplay/Inventory;)Lcom/unity/purchasing/googleplay/Inventory;

    .line 759
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p1

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->val$sku:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unity/purchasing/googleplay/Inventory;->hasConsumablePurchaseHistory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 760
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$300(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/googleplay/Inventory;

    move-result-object p1

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->val$sku:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unity/purchasing/googleplay/Inventory;->getHistoryPurchase(Ljava/lang/String;)Lcom/unity/purchasing/googleplay/Purchase;

    move-result-object p1

    .line 761
    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p2, p2, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->helper:Lcom/unity/purchasing/googleplay/IabHelper;

    new-instance v0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8$1;

    invoke-direct {v0, p0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8$1;-><init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;)V

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/unity/purchasing/googleplay/IabHelper;->consumeAsync(Lcom/unity/purchasing/googleplay/Purchase;Lcom/unity/purchasing/googleplay/IabHelper$OnConsumeFinishedListener;Z)V

    goto :goto_1

    .line 769
    :cond_2
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->val$p:Lcom/unity/purchasing/common/ProductDefinition;

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$8;->val$payload:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->Purchase(Lcom/unity/purchasing/common/ProductDefinition;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
