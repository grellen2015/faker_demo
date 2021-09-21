.class Lcom/vungle/warren/ui/view/VungleNativeView$3;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/AdvertisementPresentationFactory$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 1
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

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-static {p2, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$202(Lcom/vungle/warren/ui/view/VungleNativeView;Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 281
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/ui/view/VungleWebClient;

    .line 282
    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {p2, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 285
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$200(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$100(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 286
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$200(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 287
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$300(Lcom/vungle/warren/ui/view/VungleNativeView;Landroid/os/Bundle;)V

    .line 288
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$400(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    iget-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$400(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    :cond_1
    return-void

    .line 276
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$100(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    new-instance p2, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->access$000(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
