.class public abstract Lcom/facebook/ads/NativeAdBase;
.super Ljava/lang/Object;
.source "NativeAdBase.java"

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;,
        Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;,
        Lcom/facebook/ads/NativeAdBase$NativeComponentTag;,
        Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;,
        Lcom/facebook/ads/NativeAdBase$Rating;,
        Lcom/facebook/ads/NativeAdBase$Image;
    }
.end annotation


# instance fields
.field final mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V
    .locals 0
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p2, p2, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdBaseApi(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdBaseApi(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 0
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    return-void
.end method

.method public static fromBidPayload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 33
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdBaseFromBidPayload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->buildLoadAdConfig(Lcom/facebook/ads/NativeAdBase;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->destroy()V

    return-void
.end method

.method public downloadMedia()V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->downloadMedia()V

    return-void
.end method

.method public getAdBodyText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdChoicesIcon()Lcom/facebook/ads/NativeAdBase$Image;
    .locals 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdChoicesIcon()Lcom/facebook/ads/internal/api/NativeAdImageApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdBase$Image;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 567
    invoke-interface {v1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdChoicesIcon()Lcom/facebook/ads/internal/api/NativeAdImageApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAdBase$Image;-><init>(Lcom/facebook/ads/internal/api/NativeAdImageApi;)V

    :goto_0
    return-object v0
.end method

.method public getAdChoicesImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdChoicesImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdChoicesLinkUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdChoicesLinkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdChoicesText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdChoicesText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;
    .locals 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdCoverImage()Lcom/facebook/ads/internal/api/NativeAdImageApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdBase$Image;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 408
    invoke-interface {v1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdCoverImage()Lcom/facebook/ads/internal/api/NativeAdImageApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAdBase$Image;-><init>(Lcom/facebook/ads/internal/api/NativeAdImageApi;)V

    :goto_0
    return-object v0
.end method

.method public getAdHeadline()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;
    .locals 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdIcon()Lcom/facebook/ads/internal/api/NativeAdImageApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdBase$Image;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 395
    invoke-interface {v1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdIcon()Lcom/facebook/ads/internal/api/NativeAdImageApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAdBase$Image;-><init>(Lcom/facebook/ads/internal/api/NativeAdImageApi;)V

    :goto_0
    return-object v0
.end method

.method public getAdLinkDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdSocialContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdStarRating()Lcom/facebook/ads/NativeAdBase$Rating;
    .locals 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdStarRating()Lcom/facebook/ads/internal/api/NativeAdRatingApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdBase$Rating;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 544
    invoke-interface {v1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdStarRating()Lcom/facebook/ads/internal/api/NativeAdRatingApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAdBase$Rating;-><init>(Lcom/facebook/ads/internal/api/NativeAdRatingApi;)V

    :goto_0
    return-object v0
.end method

.method public getAdTranslation()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdTranslation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUntrimmedBodyText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdUntrimmedBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewAttributes()Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    new-instance v0, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {v0}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    return-object v0
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getAspectRatio()F

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromotedTranslation()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getPromotedTranslation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSponsoredTranslation()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCallToAction()Z
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->hasCallToAction()Z

    move-result v0

    return v0
.end method

.method public isAdInvalidated()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdInvalidated()Z

    move-result v0

    return v0
.end method

.method public isAdLoaded()Z
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method public isNativeConfigEnabled()Z
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAd()V

    return-void
.end method

.method public loadAd(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAd(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    return-void
.end method

.method public loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAdFromBid(Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAdFromBid(Ljava/lang/String;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    return-void
.end method

.method public onCtaBroadcast()V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->onCtaBroadcast()V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/NativeAdListener;)V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->setAdListener(Lcom/facebook/ads/NativeAdListener;Lcom/facebook/ads/NativeAdBase;)V

    return-void
.end method

.method public setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->setExtraHints(Lcom/facebook/ads/ExtraHints;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public unregisterView()V
    .locals 1
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->unregisterView()V

    return-void
.end method
