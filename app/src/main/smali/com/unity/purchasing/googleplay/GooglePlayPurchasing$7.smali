.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->RetrieveProducts(Ljava/util/List;)V
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

    .line 707
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->val$skus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/unity/purchasing/googleplay/IabResult;)V
    .locals 3

    const-string v0, "onIabSetupFinished: %s"

    .line 710
    iget v1, p1, Lcom/unity/purchasing/googleplay/IabResult;->mResponse:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1}, Lcom/unity/purchasing/googleplay/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Failed to setup IAB. Notifying Unity..."

    .line 713
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$100(Ljava/lang/String;)V

    .line 714
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1100(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)Lcom/unity/purchasing/common/IStoreCallback;

    move-result-object p1

    sget-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-interface {p1, v0}, Lcom/unity/purchasing/common/IStoreCallback;->OnSetupFailed(Lcom/unity/purchasing/common/InitializationFailureReason;)V

    return-void

    :cond_0
    const-string p1, "Requesting %s products"

    .line 718
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->val$skus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    iget-object v0, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$7;->val$skus:Ljava/util/List;

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1400(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;Ljava/util/List;J)V

    return-void
.end method
