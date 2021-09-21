.class Lcom/vungle/warren/ui/view/LocalAdView$1;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/LocalAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$100(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onPrivacy()V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$200(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$300(Lcom/vungle/warren/ui/view/LocalAdView;)V

    .line 149
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$400(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMute(Z)V

    .line 150
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object p1, p1, Lcom/vungle/warren/ui/view/LocalAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$400(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->setMuted(Z)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->handleExit(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
