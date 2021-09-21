.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->initSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$000(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v1, v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$100(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {v1, v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$300(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-static {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 176
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V

    goto :goto_2

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$1;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$502(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
