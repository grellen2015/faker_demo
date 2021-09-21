.class public Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeAPI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field volatile udiaResults:I


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 738
    iput p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->udiaResults:I

    return-void
.end method

.method private callJavaScriptFunction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1307
    iget-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleAdCreditedOnInterstitial(Ljava/lang/String;I)V
    .locals 2

    .line 1447
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1451
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->isRewarded()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$7;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setInterstitialAvailability(Ljava/lang/String;Z)V
    .locals 2

    .line 1769
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1771
    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/DemandSource;->setAvailabilityState(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adClicked(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adClicked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 1720
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1721
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1722
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1726
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object p1

    .line 1727
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 1730
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$14;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$14;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public adCredited(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1351
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adCredited("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "credits"

    .line 1354
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1355
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 1357
    :goto_0
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "productType"

    .line 1358
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1360
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1361
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "adCredited | not product NAME !!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_1
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1365
    invoke-direct {p0, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->handleAdCreditedOnInterstitial(Ljava/lang/String;I)V

    return-void

    :cond_2
    const-string v1, "total"

    .line 1369
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1370
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    const-string v3, "externalPoll"

    .line 1372
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    .line 1380
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    const-string v3, "signature"

    .line 1383
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "timestamp"

    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "totalCreditsFlag"

    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "signature"

    .line 1390
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1397
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 1401
    :cond_5
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "Controller signature is not equal to SDK signature"

    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v1, "totalCreditsFlag"

    .line 1405
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "timestamp"

    .line 1408
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move v10, v1

    move v8, v2

    goto :goto_4

    .line 1385
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "One of the keys are missing: signature/timestamp/totalCreditsFlag"

    invoke-static {v0, p1, v2, v1, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    move-object v11, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1411
    :goto_4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1417
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$6;

    move-object v3, v1

    move-object v4, p0

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$6;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public adUnitsReady(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitsReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1087
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    new-instance v1, Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/AdUnitsReady;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/AdUnitsReady;->isNumOfAdUnitsExist()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "Num Of Ad Units Do Not Exist"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1096
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x1

    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/AdUnitsReady;->getProductType()Ljava/lang/String;

    move-result-object p1

    .line 1099
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1100
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1101
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$5;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method addTesterParametersToConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 928
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 929
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "testerABGroup"

    const-string v1, "testerABGroup"

    .line 930
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "testFriendlyName"

    const-string v1, "testFriendlyName"

    .line 931
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method areTesterParametersValid(Ljava/lang/String;)Z
    .locals 1

    .line 936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "testerABGroup"

    .line 939
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "testFriendlyName"

    .line 940
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 944
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bannerViewAPI(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2589
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/BannerJSAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/BannerJSAdapter;->sendMessageToISNAdView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2591
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2592
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bannerViewAPI failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkInstalledApps(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInstalledApps("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 997
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 998
    sget-object p1, Lcom/ironsource/sdk/controller/IronSourceWebView;->APP_IDS:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 999
    sget-object v3, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    .line 1005
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 1006
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1009
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 1013
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1018
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1019
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onCheckInstalledAppsSuccess"

    const-string v3, "onCheckInstalledAppsFail"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1020
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1144
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "File not exist"

    const-string v3, "1"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1153
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFolder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "Folder not exist"

    const-string v3, "1"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1138
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public displayWebView(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1159
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayWebView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1163
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "display"

    .line 1164
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "productType"

    .line 1165
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "standaloneView"

    .line 1166
    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1168
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_8

    .line 1172
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "immersive"

    invoke-virtual {v0, v4}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p1, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3802(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    const-string p1, "activityThemeTranslucent"

    .line 1173
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1175
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getState()Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v0

    sget-object v4, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    if-eq v0, v4, :cond_7

    .line 1177
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v0, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 1179
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 1183
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getOrientationState()Ljava/lang/String;

    move-result-object v4

    .line 1184
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v5

    if-eqz v2, :cond_0

    .line 1189
    new-instance p1, Lcom/ironsource/sdk/controller/ControllerView;

    invoke-direct {p1, v0}, Lcom/ironsource/sdk/controller/ControllerView;-><init>(Landroid/content/Context;)V

    .line 1190
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/ControllerView;->addView(Landroid/view/View;)V

    .line 1191
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/ControllerView;->showInterstitial(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 1198
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/ironsource/sdk/controller/InterstitialActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1200
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1203
    :goto_0
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "application"

    .line 1204
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v1, "productType"

    .line 1208
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1212
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    .line 1213
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1214
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-interface {v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onAdProductOpen(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_1

    .line 1217
    :cond_3
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "productType"

    .line 1218
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    goto :goto_1

    .line 1221
    :cond_4
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "application"

    .line 1222
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1223
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :cond_5
    const-string v1, "productType"

    .line 1225
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_1
    const/high16 v1, 0x20000000

    .line 1229
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "immersive"

    .line 1230
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "orientation_set_flag"

    .line 1231
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rotation_set_flag"

    .line 1232
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1234
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1238
    :cond_7
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1242
    :cond_8
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 1243
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4100(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    :goto_2
    return-void
.end method

.method public getApplicationInfo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 959
    invoke-virtual {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 960
    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 964
    new-array v3, v3, [Ljava/lang/Object;

    .line 966
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    .line 968
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 969
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 972
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 976
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 981
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 982
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetApplicationInfoSuccess"

    const-string v3, "onGetApplicationInfoFail"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 983
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getAppsInstallTime(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2300
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "systemApps"

    .line 2305
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2307
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ironsource/environment/DeviceStatus;->getAppsInstallTime(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2308
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2311
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppsInstallTime failed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2316
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2321
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    move-object v2, p1

    .line 2327
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2329
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2331
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object p1, v0

    .line 2333
    :goto_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2334
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getCachedFilesMap(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedFilesMap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1281
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v2, "path"

    .line 1284
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "path key does not exist"

    invoke-static {v0, p1, v4, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "path"

    .line 1289
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1292
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "path file does not exist on disk"

    invoke-static {v0, p1, v4, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1297
    :cond_1
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1298
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onGetCachedFilesMapSuccess"

    const-string v3, "onGetCachedFilesMapFail"

    invoke-static {v1, v0, p1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1300
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getControllerConfig(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getControllerConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getTesterParameters()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->areTesterParametersValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->addTesterParametersToConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 918
    :catch_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getControllerConfig Error while parsing Tester AB Group parameters"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 923
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getDemandSourceState(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1313
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediationState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "demandSourceName"

    .line 1316
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1317
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "productType"

    .line 1319
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1323
    :try_start_0
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getProductType(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1325
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v3

    .line 1328
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "productType"

    .line 1329
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "demandSourceName"

    .line 1330
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "demandSourceId"

    .line 1331
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    const/4 v0, -0x1

    .line 1333
    invoke-virtual {v3, v0}, Lcom/ironsource/sdk/data/DemandSource;->isMediationState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    .line 1335
    invoke-virtual {v3}, Lcom/ironsource/sdk/data/DemandSource;->getMediationState()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->callJavaScriptFunction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1343
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public getDeviceStatus(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 848
    new-array v1, v1, [Ljava/lang/Object;

    .line 849
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 851
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 852
    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    goto :goto_0

    .line 861
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 866
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 867
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetDeviceStatusSuccess"

    const-string v3, "onGetDeviceStatusFail"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 868
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getDeviceVolume(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2628
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result v0

    .line 2633
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceVolume"

    .line 2634
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2637
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getOrientation(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1249
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1250
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onGetOrientationSuccess"

    const-string v3, "onGetOrientationFail"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1254
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getUDIA(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 2200
    iput v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->udiaResults:I

    .line 2202
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUDIA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2206
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v2, "getByFlag"

    .line 2209
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2210
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "getByFlag key does not exist"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "getByFlag"

    .line 2215
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2216
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 2224
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 2226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2227
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "fialed to convert getByFlag"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2232
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2236
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2239
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x3

    .line 2242
    aget-char p1, p1, v1

    const/16 v1, 0x30

    if-ne p1, v1, :cond_3

    .line 2243
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sessions"

    .line 2245
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSessions()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2246
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->deleteSessions()V

    .line 2247
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public getUserData(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2388
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    .line 2392
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "key does not exist"

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2397
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    .line 2398
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2400
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2402
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2404
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2405
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    return-void
.end method

.method public getUserUniqueId(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2276
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserUniqueId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "productType"

    .line 2280
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "productType does not exist"

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2285
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "productType"

    .line 2289
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2290
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2291
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "userUniqueId"

    const-string v5, "productType"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2293
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onGetUserUniqueIdSuccess"

    const-string v3, "onGetUserUniqueIdFail"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2294
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method handleControllerStageFailed()V
    .locals 5

    .line 809
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1702(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 811
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v0

    .line 812
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

    .line 813
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 814
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v0

    .line 819
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

    .line 820
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 821
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_1

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v0

    .line 826
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

    .line 827
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 828
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    goto :goto_2

    .line 832
    :cond_5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 833
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    .line 836
    :cond_6
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 837
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    :cond_7
    return-void
.end method

.method handleControllerStageLoaded()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1702(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-void
.end method

.method handleControllerStageReady()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1702(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 794
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 797
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    .line 804
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    return-void
.end method

.method public iabTokenAPI(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iabTokenAPI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1121
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/TokenJSAdapter;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/TokenJSAdapter;->call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1124
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iabTokenAPI failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initController(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "stage"

    .line 756
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "stage"

    .line 758
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ready"

    .line 760
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->handleControllerStageReady()V

    goto :goto_0

    :cond_0
    const-string v0, "loaded"

    .line 762
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->handleControllerStageLoaded()V

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    .line 764
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->handleControllerStageFailed()V

    goto :goto_0

    .line 767
    :cond_2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No STAGE mentioned! Should not get here!"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$2;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$2;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public moatAPI(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2598
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$30;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$30;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdWindowsClosed(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2433
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdWindowsClosed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsState;->adClosed()V

    .line 2437
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    .line 2440
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 2441
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2442
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 2443
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v1

    .line 2445
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdClosed() with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2449
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$28;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onGenericFunctionFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2059
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2062
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "genericFunctionListener was not found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2066
    :cond_0
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 2067
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2069
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$26;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$26;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2075
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2076
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGenericFunctionFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGenericFunctionSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2041
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2044
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "genericFunctionListener was not found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$25;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$25;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2054
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetApplicationInfoFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1545
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetApplicationInfoFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetApplicationInfoSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetApplicationInfoSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetCachedFilesMapFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1598
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetCachedFilesMapFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetCachedFilesMapSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1589
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetCachedFilesMapSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDeviceStatusFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1485
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetDeviceStatusFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDeviceStatusSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1476
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetDeviceStatusSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetUserCreditsFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2410
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserCreditsFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 2413
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2415
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2416
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$27;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$27;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2427
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetUserCreditsFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetUserUniqueIdFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2345
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetUserUniqueIdSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2340
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitBannerFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1952
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitBannerFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1955
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1956
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1959
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitBannerFail failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1963
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 1966
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1969
    :cond_1
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1971
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$22;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$22;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1984
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitBannerFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitBannerSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1928
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitBannerSuccess()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitBannerSuccess"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1932
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object p1

    .line 1934
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitBannerSuccess failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1940
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$21;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$21;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInitInterstitialFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1680
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1683
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1684
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1687
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitInterstitialSuccess failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1690
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 1693
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1696
    :cond_1
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1698
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$13;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$13;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1711
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitInterstitialFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitInterstitialSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1654
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitInterstitialSuccess()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitInterstitialSuccess"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1658
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object p1

    .line 1660
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitInterstitialSuccess failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$12;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$12;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInitOfferWallFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1799
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitOfferWallFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1804
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v2, "errMsg"

    .line 1805
    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1808
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1811
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1813
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$17;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$17;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitOfferWallFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitOfferWallSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1777
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v0, "onInitOfferWallSuccess"

    const-string v1, "true"

    invoke-static {p1, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1782
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1784
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1785
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1786
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$16;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$16;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInitRewardedVideoFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1505
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitRewardedVideoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1508
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1510
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 1515
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1518
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1519
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$8;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitRewardedVideoFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitRewardedVideoSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1494
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitRewardedVideoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    new-instance v0, Lcom/ironsource/sdk/data/SSABCParameters;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSABCParameters;-><init>(Ljava/lang/String;)V

    .line 1497
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setSSABCParameters(Lcom/ironsource/sdk/data/SSABCParameters;)V

    .line 1499
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitRewardedVideoSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadBannerFail(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2011
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadBannerFail()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 2013
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2014
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 2016
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2018
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2022
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2023
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$24;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$24;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onLoadBannerSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1990
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadBannerSuccess()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1994
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1996
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v3, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1998
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1999
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$23;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$23;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLoadInterstitialFail(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1862
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1863
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1865
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1867
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1871
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1874
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1876
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$19;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$19;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1887
    :cond_1
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v0, "onLoadInterstitialFail"

    const-string v1, "true"

    invoke-static {p1, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadInterstitialSuccess(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1835
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadInterstitialSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1838
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1840
    invoke-direct {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1841
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1844
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1846
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$18;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$18;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1854
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "true"

    invoke-static {p1, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferWallGeneric(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2350
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferWallGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2352
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowInterstitialFail(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1893
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1896
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1897
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1899
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1901
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1905
    invoke-direct {p0, v0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1907
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1909
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$20;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$20;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1921
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowInterstitialFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowInterstitialSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInterstitialSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1745
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onShowInterstitialSuccess called with no demand"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1752
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1753
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    .line 1755
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$15;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1763
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onShowInterstitialSuccess"

    invoke-static {v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 1765
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShowOfferWallFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1629
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowOfferWallFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1632
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1634
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1635
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$11;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$11;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowOfferWallFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowOfferWallSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1610
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowOfferWallSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    const-string v0, "placementId"

    .line 1613
    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getValueFromJsonObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$10;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$10;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowOfferWallSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowRewardedVideoFail(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1561
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowRewardedVideoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1564
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1565
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$9;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowRewardedVideoFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowRewardedVideoSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1553
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowRewardedVideoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowRewardedVideoSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoStatusChanged(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2467
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 2469
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2471
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "status"

    .line 2472
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "started"

    .line 2473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStarted()V

    goto :goto_0

    :cond_0
    const-string v0, "paused"

    .line 2475
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2476
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoPaused()V

    goto :goto_0

    :cond_1
    const-string v0, "playing"

    .line 2477
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2478
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoResumed()V

    goto :goto_0

    :cond_2
    const-string v0, "ended"

    .line 2479
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2480
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoEnded()V

    goto :goto_0

    :cond_3
    const-string v0, "stopped"

    .line 2481
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2482
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStopped()V

    goto :goto_0

    .line 2484
    :cond_4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStatusChanged: unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2085
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openUrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    .line 2088
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    .line 2089
    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2092
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    const-string v3, "external_browser"

    .line 2094
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2095
    invoke-static {v2, v1}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "webview"

    .line 2096
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 2098
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2099
    sget-object v3, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2100
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "immersive"

    .line 2101
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2102
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v3, "store"

    .line 2104
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2106
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2107
    sget-object v3, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2108
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_STORE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2109
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2110
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2113
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public permissionsAPI(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2616
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissionsAPI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2618
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$JSCallbackTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2620
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2621
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissionsAPI failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public postAdEventNotification(Ljava/lang/String;)V
    .locals 21
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 2492
    :try_start_0
    iget-object v1, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postAdEventNotification("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v2, "eventName"

    .line 2497
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2498
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2499
    iget-object v1, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "eventName does not exist"

    invoke-static {v1, v0, v4, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "dsName"

    .line 2504
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2505
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v2

    .line 2506
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, v14

    :goto_0
    const-string v2, "extData"

    .line 2509
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lorg/json/JSONObject;

    const-string v2, "productType"

    .line 2511
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2512
    iget-object v1, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v20

    .line 2514
    iget-object v1, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2516
    iget-object v1, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2518
    iget-object v8, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v9, "productType"

    const-string v11, "eventName"

    const-string v13, "demandSourceName"

    const-string v15, "demandSourceId"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v5

    move-object/from16 v16, v6

    invoke-static/range {v8 .. v18}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2520
    iget-object v2, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "postAdEventNotificationSuccess"

    const-string v4, "postAdEventNotificationFail"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2521
    iget-object v1, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2524
    :cond_2
    iget-object v0, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v8, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object v4, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2537
    :cond_3
    iget-object v1, v7, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "productType does not exist"

    invoke-static {v1, v0, v4, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2540
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public removeCloseEventHandler(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1465
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCloseEventHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1468
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 1471
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    return-void
.end method

.method public removeMessagingInterface(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 742
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "no_disk_space"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1037
    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "sotrage_unavailable"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isFileCached(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAFile;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "file_already_exist"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1048
    :cond_2
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/environment/ConnectivityService;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1050
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "no_network_connection"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1054
    :cond_3
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getLastUpdateTime()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1060
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1066
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    .line 1068
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1069
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1070
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    .line 1075
    :cond_4
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_5
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadFile(Lcom/ironsource/sdk/data/SSAFile;)V

    return-void
.end method

.method sendUnauthorizedError(Ljava/lang/String;)V
    .locals 3

    .line 2545
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "unauthorizedMessage"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2546
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowFileAccessFromFileURLs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "allowFileAccess"

    .line 889
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 891
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$4;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$4;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2135
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackButtonState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "state"

    .line 2138
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2140
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setBackButtonState(Ljava/lang/String;)V

    return-void
.end method

.method public setForceClose(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2120
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "width"

    .line 2124
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "height"

    .line 2125
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2127
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$602(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I

    .line 2128
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I

    .line 2129
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$802(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setMixedContentAlwaysAllow(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMixedContentAlwaysAllow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$3;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$3;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1260
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "orientation"

    .line 1263
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1265
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOrientationState(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 1268
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onOrientationChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setStoreSearchKeys(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2145
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStoreSearchKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setSearchKeys(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 17
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2357
    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, v1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v3, "key"

    .line 2361
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 2362
    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "key does not exist"

    invoke-static {v2, v1, v5, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "value"

    .line 2366
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2367
    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "value does not exist"

    invoke-static {v2, v1, v5, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "key"

    .line 2371
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "value"

    .line 2372
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2374
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2377
    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2378
    iget-object v6, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2379
    iget-object v3, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2380
    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 2382
    :cond_2
    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "SetUserData failed writing to shared preferences"

    invoke-static {v2, v1, v5, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUserUniqueId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2255
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserUniqueId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "userUniqueId"

    .line 2259
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v1, "productType"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "userUniqueId"

    .line 2264
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUniqueId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2268
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2270
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "setUserUniqueId failed"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2260
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "uniqueId or productType does not exist"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWebviewBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2152
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebviewBackgroundColor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    return-void
.end method

.method public toggleUDIA(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2159
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleUDIA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "toggle"

    .line 2164
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "toggle key does not exist"

    invoke-static {v0, p1, v3, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "toggle"

    .line 2170
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2171
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2179
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 2181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2182
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "fialed to convert toggle"

    invoke-static {v0, p1, v3, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2187
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x3

    .line 2190
    aget-char p1, p1, v0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_3

    .line 2191
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_0

    .line 2193
    :cond_3
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setShouldRegisterSessions(Z)V

    :goto_0
    return-void
.end method
