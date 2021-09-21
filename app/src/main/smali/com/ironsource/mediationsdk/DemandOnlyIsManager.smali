.class Lcom/ironsource/mediationsdk/DemandOnlyIsManager;
.super Ljava/lang/Object;
.source "DemandOnlyIsManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/DemandOnlyIsManagerListener;


# instance fields
.field private mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 37
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 40
    new-instance v9, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v7

    move-object v1, v9

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/sdk/DemandOnlyIsManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 41
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private loadAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 6

    :try_start_0
    const-string v0, "com.ironsource.adapters.ironsource.IronSourceAdapter"

    .line 239
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startAdapter"

    const/4 v2, 0x1

    .line 240
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 241
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private logInternal(Ljava/lang/String;)V
    .locals 4

    .line 250
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DemandOnlyIsManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandOnlyIsManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private sendMediationEvent(ILjava/lang/String;)V
    .locals 3

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 228
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isDemandOnly"

    const/4 v2, 0x1

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 230
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 232
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .locals 1

    const/4 v0, 0x0

    .line 202
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V
    .locals 6

    .line 208
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 212
    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 213
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 217
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS sendProviderEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 220
    :cond_0
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, p1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 221
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method


# virtual methods
.method public isInterstitialReady(Ljava/lang/String;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x9c4

    .line 118
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendMediationEvent(ILjava/lang/String;)V

    return v1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    .line 123
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->isInterstitialReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8a3

    .line 124
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/16 v0, 0x8a4

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    return v1
.end method

.method public loadInterstitial(Ljava/lang/String;)V
    .locals 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9c4

    .line 82
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendMediationEvent(ILjava/lang/String;)V

    const-string v0, "Interstitial"

    .line 83
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    const/16 v1, 0x7d2

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 90
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->loadInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInterstitial exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logInternal(Ljava/lang/String;)V

    const-string v0, "loadInterstitial exception"

    .line 94
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .locals 1

    const-string v0, "onInterstitialAdClicked"

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x7d6

    .line 184
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 185
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .locals 1

    const-string v0, "onInterstitialAdClosed"

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x89c

    .line 166
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 167
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;J)V
    .locals 6

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 148
    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "duration"

    aput-object v3, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, v5

    aput-object v2, v0, v1

    const/16 p3, 0x898

    invoke-direct {p0, p3, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .locals 1

    const-string v0, "onInterstitialAdOpened"

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x7d5

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 158
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdOpened(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdReady(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;J)V
    .locals 5

    const-string v0, "onInterstitialAdReady"

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 139
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "duration"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v0

    aput-object v2, v1, v4

    const/16 p2, 0x7d3

    invoke-direct {p0, p2, p1, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdReady(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .locals 6

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 175
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v0, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    const/16 v0, 0x89b

    invoke-direct {p0, v0, p2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialAdVisible(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .locals 1

    const/16 v0, 0x8a2

    .line 192
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    const-string v0, "onInterstitialAdVisible"

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    .line 64
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    .line 54
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConsent(Z)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    .line 73
    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->setConsent(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9c4

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendMediationEvent(ILjava/lang/String;)V

    const-string v0, "Interstitial"

    .line 104
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    const/16 v0, 0x899

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 111
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->showInterstitial()V

    return-void
.end method
