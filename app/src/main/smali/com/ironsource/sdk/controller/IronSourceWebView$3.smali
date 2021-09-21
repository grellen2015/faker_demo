.class Lcom/ironsource/sdk/controller/IronSourceWebView$3;
.super Landroid/os/CountDownTimer;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$loadAttemp:I


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJI)V
    .locals 0

    .line 2742
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput p6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->val$loadAttemp:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 2751
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    iget v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->val$loadAttemp:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 2755
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2759
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v0

    .line 2760
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/data/DemandSource;

    .line 2761
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 2762
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_0

    .line 2766
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v0

    .line 2767
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/data/DemandSource;

    .line 2768
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2769
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_1

    .line 2773
    :cond_3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v0

    .line 2774
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/data/DemandSource;

    .line 2775
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 2776
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_2

    .line 2780
    :cond_5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2781
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    .line 2784
    :cond_6
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2785
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_3

    .line 2791
    :cond_7
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 2746
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
