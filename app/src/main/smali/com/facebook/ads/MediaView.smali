.class public Lcom/facebook/ads/MediaView;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source "MediaView.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Landroid/support/annotation/UiThread;
.end annotation


# instance fields
.field private mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/facebook/ads/internal/api/AdViewConstructorParams;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->initializeSelf(Lcom/facebook/ads/internal/api/AdViewConstructorParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/facebook/ads/internal/api/AdViewConstructorParams;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->initializeSelf(Lcom/facebook/ads/internal/api/AdViewConstructorParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Lcom/facebook/ads/internal/api/AdViewConstructorParams;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->initializeSelf(Lcom/facebook/ads/internal/api/AdViewConstructorParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    new-instance v0, Lcom/facebook/ads/internal/api/AdViewConstructorParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/MediaView;->initializeSelf(Lcom/facebook/ads/internal/api/AdViewConstructorParams;)V

    return-void
.end method

.method private initializeSelf(Lcom/facebook/ads/internal/api/AdViewConstructorParams;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    .line 75
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->attachAdComponentViewApi(Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/internal/api/MediaViewApi;->initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewApi;->destroy()V

    return-void
.end method

.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewApi;->getAdContentsView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeight()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewApi;->getMediaHeight()I

    move-result v0

    return v0
.end method

.method public getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    return-object v0
.end method

.method public getMediaWidth()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewApi;->getMediaWidth()I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/MediaViewApi;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    return-void
.end method

.method public setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->mMediaViewApi:Lcom/facebook/ads/internal/api/MediaViewApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/MediaViewApi;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    return-void
.end method
