.class public Lcom/vungle/warren/ui/VungleActivity;
.super Landroid/app/Activity;
.source "VungleActivity.java"


# static fields
.field public static final PLACEMENT_EXTRA:Ljava/lang/String; = "placement"

.field public static final PRESENTER_STATE:Ljava/lang/String; = "presenter_state"

.field private static final TAG:Ljava/lang/String; = "VungleActivity"

.field private static bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

.field private pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private placementId:Ljava/lang/String;

.field private presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

.field private state:Lcom/vungle/warren/ui/state/OptionsState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    new-instance v0, Lcom/vungle/warren/ui/VungleActivity$4;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/VungleActivity$4;-><init>(Lcom/vungle/warren/ui/VungleActivity;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/vungle/warren/ui/VungleActivity;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/VungleActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vungle/warren/ui/VungleActivity;->placementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/VungleActivity;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/ui/VungleActivity;->deliverError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 1

    .line 33
    sget-object v0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/state/OptionsState;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vungle/warren/ui/VungleActivity;->state:Lcom/vungle/warren/ui/state/OptionsState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/ui/VungleActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vungle/warren/ui/VungleActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private connectBroadcastReceiver()V
    .locals 4

    .line 181
    new-instance v0, Lcom/vungle/warren/ui/VungleActivity$3;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/VungleActivity$3;-><init>(Lcom/vungle/warren/ui/VungleActivity;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/VungleActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private deliverError(ILjava/lang/String;)V
    .locals 2

    .line 174
    sget-object v0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, p2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method


# virtual methods
.method protected canRotate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "VungleActivity"

    const-string v0, "landscape"

    .line 229
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "VungleActivity"

    const-string v0, "portrait"

    .line 231
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->onViewConfigurationChanged()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/VungleActivity;->requestWindowFeature(I)Z

    .line 87
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 92
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->placementId:Ljava/lang/String;

    .line 95
    :try_start_0
    new-instance v0, Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;-><init>(Landroid/content/Context;Landroid/view/Window;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-nez v1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    :try_start_1
    new-instance v1, Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v2, p0, Lcom/vungle/warren/ui/VungleActivity;->placementId:Ljava/lang/String;

    new-instance v3, Lcom/vungle/warren/ui/VungleActivity$1;

    invoke-direct {v3, p0}, Lcom/vungle/warren/ui/VungleActivity$1;-><init>(Lcom/vungle/warren/ui/VungleActivity;)V

    new-instance v4, Lcom/vungle/warren/ui/VungleActivity$2;

    invoke-direct {v4, p0}, Lcom/vungle/warren/ui/VungleActivity$2;-><init>(Lcom/vungle/warren/ui/VungleActivity;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/vungle/warren/AdvertisementPresentationFactory;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    iput-object v1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "presenter_state"

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/ui/state/OptionsState;

    :goto_0
    iput-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->state:Lcom/vungle/warren/ui/state/OptionsState;

    .line 149
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v1, p0, Lcom/vungle/warren/ui/VungleActivity;->state:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v2, p0, Lcom/vungle/warren/ui/VungleActivity;->fullscreenCallback:Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/vungle/warren/AdvertisementPresentationFactory;->getFullScreenPresentation(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;)V

    .line 156
    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/vungle/warren/ui/VungleActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-direct {p0}, Lcom/vungle/warren/ui/VungleActivity;->connectBroadcastReceiver()V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "VungleActivity"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error on crreating presentations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    .line 138
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->placementId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ui/VungleActivity;->deliverError(ILjava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->finish()V

    return-void

    .line 113
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->finish()V

    return-void

    :catch_1
    move-exception p1

    .line 97
    sget-object v0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_3

    .line 98
    sget-object v0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v1, p0, Lcom/vungle/warren/ui/VungleActivity;->placementId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 286
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/VungleActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->isChangingConfigurations()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->detach(Z)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-virtual {v0}, Lcom/vungle/warren/AdvertisementPresentationFactory;->destroy()V

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    .line 293
    sget-object v0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_1

    .line 294
    sget-object v0, Lcom/vungle/warren/ui/VungleActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/ui/VungleActivity;->placementId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 297
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 298
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    .line 165
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VungleActivity"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to play another placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " while playing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/ui/VungleActivity;->deliverError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "VungleActivity"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    const-string v1, "presenter_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/ui/state/OptionsState;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "VungleActivity"

    const-string v1, "onSaveInstanceState"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Lcom/vungle/warren/ui/state/BundleOptionsState;

    invoke-direct {v0}, Lcom/vungle/warren/ui/state/BundleOptionsState;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-interface {v1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->generateSaveState(Lcom/vungle/warren/ui/state/OptionsState;)V

    const-string v1, "presenter_state"

    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity;->presenterFactory:Lcom/vungle/warren/AdvertisementPresentationFactory;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->start()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->isChangingConfigurations()Z

    move-result v0

    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->isFinishing()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->stop(ZZ)V

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/vungle/warren/ui/VungleActivity;->canRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
