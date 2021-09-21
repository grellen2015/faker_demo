.class Lcom/vungle/warren/ui/VungleActivity$2;
.super Ljava/lang/Object;
.source "VungleActivity.java"

# interfaces
.implements Lcom/vungle/warren/ui/CloseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/VungleActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 129
    iput-object p1, p0, Lcom/vungle/warren/ui/VungleActivity$2;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/vungle/warren/ui/VungleActivity$2;->this$0:Lcom/vungle/warren/ui/VungleActivity;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/VungleActivity;->finish()V

    return-void
.end method
