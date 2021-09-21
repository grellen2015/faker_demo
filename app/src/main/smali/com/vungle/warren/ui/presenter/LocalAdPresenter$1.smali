.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field errorHappened:Z

.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->errorHappened:Z

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 166
    iget-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->errorHappened:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->errorHappened:Z

    .line 169
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$100(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Placement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$200(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    return-void
.end method

.method public onSaved()V
    .locals 0

    return-void
.end method
