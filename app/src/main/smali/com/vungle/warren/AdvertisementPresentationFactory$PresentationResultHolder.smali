.class Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationResultHolder"
.end annotation


# instance fields
.field private adView:Lcom/vungle/warren/ui/contract/AdContract$AdView;

.field private advertisementPresenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

.field private appId:Ljava/lang/String;

.field private ex:Ljava/lang/Exception;

.field private tracker:Lcom/vungle/warren/analytics/MoatTracker;

.field private webClient:Lcom/vungle/warren/ui/view/VungleWebClient;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/vungle/warren/analytics/MoatTracker;Ljava/lang/String;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->adView:Lcom/vungle/warren/ui/contract/AdContract$AdView;

    .line 359
    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->advertisementPresenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    .line 360
    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->webClient:Lcom/vungle/warren/ui/view/VungleWebClient;

    .line 361
    iput-object p4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->tracker:Lcom/vungle/warren/analytics/MoatTracker;

    .line 362
    iput-object p5, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->appId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->ex:Ljava/lang/Exception;

    return-void
.end method

.method static synthetic access$1000(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/Exception;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->ex:Ljava/lang/Exception;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->webClient:Lcom/vungle/warren/ui/view/VungleWebClient;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->advertisementPresenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/analytics/MoatTracker;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->tracker:Lcom/vungle/warren/analytics/MoatTracker;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/String;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdView;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->adView:Lcom/vungle/warren/ui/contract/AdContract$AdView;

    return-object p0
.end method
