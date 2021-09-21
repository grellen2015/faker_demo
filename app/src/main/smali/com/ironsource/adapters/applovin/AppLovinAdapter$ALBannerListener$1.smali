.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;

.field final synthetic val$adView:Lcom/applovin/adview/AppLovinAdView;

.field final synthetic val$appLovinAd:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/sdk/AppLovinAd;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->this$1:Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    iput-object p3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$appLovinAd:Lcom/applovin/sdk/AppLovinAd;

    iput-object p4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iput-object p5, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$appLovinAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 759
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener$1;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method
