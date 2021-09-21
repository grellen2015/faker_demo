.class Lcom/vungle/warren/ui/VungleActivity$4;
.super Ljava/lang/Object;
.source "VungleActivity.java"

# interfaces
.implements Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/VungleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/VungleActivity;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/VungleActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

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
            "Lcom/vungle/warren/ui/contract/AdContract$AdView;",
            "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object p2, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-static {p2, v0}, Lcom/vungle/warren/ui/VungleActivity;->access$002(Lcom/vungle/warren/ui/VungleActivity;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    .line 313
    iget-object p2, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {p2}, Lcom/vungle/warren/ui/VungleActivity;->access$000(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    invoke-static {}, Lcom/vungle/warren/ui/VungleActivity;->access$300()Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 315
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/ui/contract/AdContract$AdView;

    .line 317
    iget-object p2, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {p2}, Lcom/vungle/warren/ui/VungleActivity;->access$000(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {v0}, Lcom/vungle/warren/ui/VungleActivity;->access$400(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/state/OptionsState;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 319
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {p1}, Lcom/vungle/warren/ui/VungleActivity;->access$500(Lcom/vungle/warren/ui/VungleActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {p1}, Lcom/vungle/warren/ui/VungleActivity;->access$000(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->start()V

    :cond_1
    return-void

    .line 307
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    const/16 p2, 0xa

    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {v0}, Lcom/vungle/warren/ui/VungleActivity;->access$100(Lcom/vungle/warren/ui/VungleActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/vungle/warren/ui/VungleActivity;->access$200(Lcom/vungle/warren/ui/VungleActivity;ILjava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$4;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/VungleActivity;->finish()V

    return-void
.end method
