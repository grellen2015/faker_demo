.class public Lcom/unity3d/services/core/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private _moduleConfigurationList:[Ljava/lang/String;

.field private _moduleConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/core/configuration/IModuleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private _url:Ljava/lang/String;

.field private _webAppApiClassList:[Ljava/lang/Class;

.field private _webViewData:Ljava/lang/String;

.field private _webViewHash:Ljava/lang/String;

.field private _webViewUrl:Ljava/lang/String;

.field private _webViewVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.unity3d.services.core.configuration.CoreModuleConfiguration"

    const-string v1, "com.unity3d.services.ads.configuration.AdsModuleConfiguration"

    const-string v2, "com.unity3d.services.monetization.core.configuration.MonetizationModuleConfiguration"

    const-string v3, "com.unity3d.services.purchasing.core.configuration.PurchasingModuleConfiguration"

    const-string v4, "com.unity3d.services.analytics.core.configuration.AnalyticsModuleConfiguration"

    const-string v5, "com.unity3d.services.ar.configuration.ARModuleConfiguration"

    const-string v6, "com.unity3d.services.banners.configuration.BannersModuleConfiguration"

    const-string v7, "com.unity3d.services.store.core.configuration.StoreModuleConfiguration"

    .line 32
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.unity3d.services.core.configuration.CoreModuleConfiguration"

    const-string v1, "com.unity3d.services.ads.configuration.AdsModuleConfiguration"

    const-string v2, "com.unity3d.services.monetization.core.configuration.MonetizationModuleConfiguration"

    const-string v3, "com.unity3d.services.purchasing.core.configuration.PurchasingModuleConfiguration"

    const-string v4, "com.unity3d.services.analytics.core.configuration.AnalyticsModuleConfiguration"

    const-string v5, "com.unity3d.services.ar.configuration.ARModuleConfiguration"

    const-string v6, "com.unity3d.services.banners.configuration.BannersModuleConfiguration"

    const-string v7, "com.unity3d.services.store.core.configuration.StoreModuleConfiguration"

    .line 32
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    return-void
.end method

.method private createWebAppApiClassList()V
    .locals 6

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 160
    invoke-virtual {p0, v4}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 162
    invoke-interface {v4}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 163
    invoke-interface {v4}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected buildQueryString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&sdkVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    .line 108
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurations:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :cond_2
    return-object v0

    :catch_0
    return-object v0
.end method

.method public getModuleConfigurationList()[Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_moduleConfigurationList:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/unity3d/services/core/configuration/Configuration;->createWebAppApiClassList()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWebViewData()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewData:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewHash()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewVersion()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected makeRequest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;,
            Lcom/unity3d/services/core/request/NetworkIOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/Configuration;->buildQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting configuration with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/unity3d/services/core/request/WebRequest;

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "url"

    .line 137
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    const-string v0, "hash"

    .line 139
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hash"

    .line 140
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_0
    iput-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    :goto_0
    const-string v0, "version"

    .line 145
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "version"

    .line 146
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_1
    iput-object v3, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 152
    :cond_2
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Invalid data. Web view URL is null or empty"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Base URL is null"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_url:Ljava/lang/String;

    return-void
.end method

.method public setWebViewData(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewData:Ljava/lang/String;

    return-void
.end method

.method public setWebViewHash(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    return-void
.end method

.method public setWebViewUrl(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/unity3d/services/core/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    return-void
.end method
