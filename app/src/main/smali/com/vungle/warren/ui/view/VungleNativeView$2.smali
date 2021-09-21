.class Lcom/vungle/warren/ui/view/VungleNativeView$2;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/ui/CloseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/VungleNativeView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/DirectDownloadAdapter;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
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

    .line 101
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAd()V

    return-void
.end method
