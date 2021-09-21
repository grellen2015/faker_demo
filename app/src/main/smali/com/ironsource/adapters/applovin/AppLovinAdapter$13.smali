.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field final synthetic val$sdkKey:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$sdkKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 570
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$sdkKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$userId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$500(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    :cond_0
    return-void
.end method
