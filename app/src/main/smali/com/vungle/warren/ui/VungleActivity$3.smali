.class Lcom/vungle/warren/ui/VungleActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "VungleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/VungleActivity;->connectBroadcastReceiver()V
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

    .line 181
    iput-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$3;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "command"

    .line 184
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x70511dc1

    if-eq v0, v1, :cond_1

    const v1, -0x1cc869ef

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "closeFlex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "stopAll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 194
    :pswitch_0
    iget-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$3;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/VungleActivity;->finish()V

    goto :goto_2

    :pswitch_1
    const-string p1, "placement"

    .line 187
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lcom/vungle/warren/ui/VungleActivity$3;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {p2}, Lcom/vungle/warren/ui/VungleActivity;->access$000(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 189
    iget-object p2, p0, Lcom/vungle/warren/ui/VungleActivity$3;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-static {p2}, Lcom/vungle/warren/ui/VungleActivity;->access$000(Lcom/vungle/warren/ui/VungleActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit(Ljava/lang/String;)Z

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
