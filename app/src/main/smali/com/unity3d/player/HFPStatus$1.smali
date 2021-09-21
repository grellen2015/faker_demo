.class Lcom/unity3d/player/HFPStatus$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/HFPStatus;->requestHFPStat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/HFPStatus;


# direct methods
.method constructor <init>(Lcom/unity3d/player/HFPStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->c(Lcom/unity3d/player/HFPStatus;)I

    move-result p1

    sget p2, Lcom/unity3d/player/HFPStatus$a;->b:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/unity3d/player/HFPStatus;->a(Lcom/unity3d/player/HFPStatus;Z)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    sget p2, Lcom/unity3d/player/HFPStatus$a;->c:I

    invoke-static {p1, p2}, Lcom/unity3d/player/HFPStatus;->a(Lcom/unity3d/player/HFPStatus;I)I

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    sget p2, Lcom/unity3d/player/HFPStatus$a;->b:I

    invoke-static {p1, p2}, Lcom/unity3d/player/HFPStatus;->a(Lcom/unity3d/player/HFPStatus;I)I

    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->a(Lcom/unity3d/player/HFPStatus;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->b(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->b(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setMode(I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->a(Lcom/unity3d/player/HFPStatus;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1}, Lcom/unity3d/player/HFPStatus;->b(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setMode(I)V

    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/HFPStatus$1;->a:Lcom/unity3d/player/HFPStatus;

    invoke-static {p1, p2}, Lcom/unity3d/player/HFPStatus;->a(Lcom/unity3d/player/HFPStatus;Z)Z

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
