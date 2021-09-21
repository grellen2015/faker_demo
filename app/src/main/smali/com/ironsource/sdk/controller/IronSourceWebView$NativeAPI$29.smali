.class Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->postAdEventNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

.field final synthetic val$demandSourceId:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$extData:Lorg/json/JSONObject;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 2524
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$demandSourceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$extData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2526
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2531
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_2

    .line 2532
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$extData:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 2527
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2529
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$demandSourceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$NativeAPI$29;->val$extData:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductEventNotificationReceived(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_1
    return-void
.end method
