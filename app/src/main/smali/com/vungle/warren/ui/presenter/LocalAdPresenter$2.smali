.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/utility/AsyncFileUtils$FileExist;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

.field final synthetic val$indexHtml:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Ljava/io/File;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->val$indexHtml:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$300(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$300(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AnalyticsVideoTracker;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/analytics/AnalyticsVideoTracker;->stop()V

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$400(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->val$indexHtml:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showWebsite(Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$600(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/analytics/AdAnalytics;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$500(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    const-string v1, "postroll_view"

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 338
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$702(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z

    goto :goto_0

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$100(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/model/Placement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$200(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    :goto_0
    return-void
.end method
