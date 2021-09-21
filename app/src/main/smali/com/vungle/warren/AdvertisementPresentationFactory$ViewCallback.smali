.class public interface abstract Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewCallback"
.end annotation


# virtual methods
.method public abstract onResult(Landroid/util/Pair;Ljava/lang/Exception;)V
    .param p1    # Landroid/util/Pair;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
            "Lcom/vungle/warren/ui/view/VungleWebClient;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
