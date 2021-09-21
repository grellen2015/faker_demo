.class Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

.field final synthetic val$indexHtml:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->val$indexHtml:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Z)V
    .locals 2

    if-nez p1, :cond_1

    .line 376
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$100(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/model/Placement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$700(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    return-void

    .line 382
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$700(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->val$indexHtml:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    return-void
.end method
