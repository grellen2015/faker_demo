.class Lcom/ironsource/sdk/controller/IronSourceWebView$10;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V
    .locals 0

    .line 3170
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3172
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3183
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_1

    .line 3184
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallInitFail(Ljava/lang/String;)V

    goto :goto_1

    .line 3185
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_4

    .line 3186
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 3174
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 3177
    :cond_3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    .line 3178
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdProductInitFailed (message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 3181
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$10;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method
