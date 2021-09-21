.class public interface abstract Lcom/vungle/warren/network/VungleApi;
.super Ljava/lang/Object;
.source "VungleApi.java"


# virtual methods
.method public abstract ads(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "User-Agent"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "ads"
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Vungle-Version: 5.3.0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{ads}"
    .end annotation
.end method

.method public abstract config(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "User-Agent"
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Vungle-Version: 5.3.0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "config"
    .end annotation
.end method

.method public abstract pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "User-Agent"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract reportAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "User-Agent"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "report_ad"
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Vungle-Version: 5.3.0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{report_ad}"
    .end annotation
.end method

.method public abstract reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "User-Agent"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "new"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{new}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Vungle-Version: 5.3.0"
        }
    .end annotation
.end method

.method public abstract ri(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "User-Agent"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "ri"
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Vungle-Version: 5.3.0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{ri}"
    .end annotation
.end method

.method public abstract willPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "User-Agent"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "will_play_ad"
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Vungle-Version: 5.3.0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{will_play_ad}"
    .end annotation
.end method
