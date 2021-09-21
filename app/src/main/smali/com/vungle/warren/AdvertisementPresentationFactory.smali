.class public Lcom/vungle/warren/AdvertisementPresentationFactory;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;,
        Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;,
        Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;
    }
.end annotation


# static fields
.field private static final EXTRA_ADVERTISEMENT:Ljava/lang/String; = "ADV_FACTORY_ADVERTISEMENT"

.field private static final TAG:Ljava/lang/String; = "AdvertisementPresentationFactory"


# instance fields
.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private apiClient:Lcom/vungle/warren/VungleApiClient;

.field private final closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

.field private final jobRunner:Lcom/vungle/warren/tasks/JobRunner;

.field private final orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

.field private final placementId:Ljava/lang/String;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private final savedState:Landroid/os/Bundle;

.field private task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 64
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->apiClient:Lcom/vungle/warren/VungleApiClient;

    .line 65
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    .line 66
    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    .line 67
    iput-object p4, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 73
    iget-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->repository:Lcom/vungle/warren/persistence/Repository;

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 77
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->placementId:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->savedState:Landroid/os/Bundle;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/InstantiationException;

    const-string p2, "Vungle SDK is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/InstantiationException;

    const-string p2, "Missing placementID! Cannot start advertisement."

    invoke-direct {p1, p2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/vungle/warren/AdvertisementPresentationFactory;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->placementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/AdvertisementPresentationFactory;)Landroid/os/Bundle;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->savedState:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/AdvertisementPresentationFactory;Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->loadPresentationData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/model/Advertisement;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    return-object p0
.end method

.method static synthetic access$302(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/model/Advertisement;)Lcom/vungle/warren/model/Advertisement;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/vungle/warren/AdvertisementPresentationFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/tasks/JobRunner;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/persistence/Repository;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->repository:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/VungleApiClient;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->apiClient:Lcom/vungle/warren/VungleApiClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/ui/OrientationDelegate;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/AdvertisementPresentationFactory;)Lcom/vungle/warren/ui/CloseDelegate;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    return-object p0
.end method

.method private loadPresentationData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/vungle/warren/model/Advertisement;",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p2, p1}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement;

    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    goto :goto_0

    :cond_0
    const-string v1, "ADV_FACTORY_ADVERTISEMENT"

    .line 92
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, p2, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/Advertisement;

    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 98
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-eqz p2, :cond_3

    .line 100
    iget-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/Repository$FutureResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/warren/persistence/Repository$FutureResult;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 106
    new-instance p1, Landroid/util/Pair;

    iget-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 102
    :cond_2
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No asset directory for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 98
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No ad found"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_4
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No placement for ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found. Please use a valid placement ID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public getFullScreenPresentation(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/view/FullAdWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 131
    :cond_0
    sget-object v6, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 133
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/vungle/warren/AdvertisementPresentationFactory$1;-><init>(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/utility/SDKExecutors;Landroid/content/Context;Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;)V

    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    .line 237
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getNativeViewPresentation(Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/vungle/warren/Vungle;->sdkExecutors:Lcom/vungle/warren/utility/SDKExecutors;

    .line 255
    new-instance v1, Lcom/vungle/warren/AdvertisementPresentationFactory$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/vungle/warren/AdvertisementPresentationFactory$2;-><init>(Lcom/vungle/warren/AdvertisementPresentationFactory;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/utility/SDKExecutors;Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;)V

    iput-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    .line 318
    iget-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->task:Landroid/os/AsyncTask;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ADV_FACTORY_ADVERTISEMENT"

    .line 323
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
