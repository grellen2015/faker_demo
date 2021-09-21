.class public Lcom/facebook/ads/internal/ipc/AdsMessengerService;
.super Landroid/app/Service;
.source "AdsMessengerService.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Landroid/support/annotation/UiThread;
.end annotation


# instance fields
.field private mAdsMessengerServiceApi:Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/facebook/ads/internal/ipc/AdsMessengerService;->mAdsMessengerServiceApi:Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;Z)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 29
    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdsMessengerServiceApi(Lcom/facebook/ads/internal/ipc/AdsMessengerService;)Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/ipc/AdsMessengerService;->mAdsMessengerServiceApi:Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;

    .line 30
    iget-object v0, p0, Lcom/facebook/ads/internal/ipc/AdsMessengerService;->mAdsMessengerServiceApi:Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/facebook/ads/internal/ipc/AdsMessengerService;->mAdsMessengerServiceApi:Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdsMessengerServiceApi;->onDestroy()V

    return-void
.end method
