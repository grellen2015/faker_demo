.class Lcom/ironsource/sdk/controller/IronSourceWebView$4;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Lcom/ironsource/sdk/controller/IronSourceWebView$OnInitProductHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .line 2865
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInitProductFailed(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 1

    .line 2868
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1, p2, p3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method
