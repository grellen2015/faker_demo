.class Lcom/ironsource/adapters/admob/AdMobAdapter$10;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000(Lcom/ironsource/adapters/admob/AdMobAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$config:Lorg/json/JSONObject;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$100(Lcom/ironsource/adapters/admob/AdMobAdapter;Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$10;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    return-void
.end method
