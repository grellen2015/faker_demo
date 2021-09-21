.class Lcom/vungle/warren/ui/view/VungleNativeView$4;
.super Landroid/content/BroadcastReceiver;
.source "VungleNativeView.java"


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

    .line 295
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$4;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "command"

    .line 298
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x70511dc1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "stopAll"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 301
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$4;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAd()V

    :goto_2
    return-void
.end method
