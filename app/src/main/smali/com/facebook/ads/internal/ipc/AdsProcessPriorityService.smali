.class public Lcom/facebook/ads/internal/ipc/AdsProcessPriorityService;
.super Landroid/app/Service;
.source "AdsProcessPriorityService.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/facebook/ads/internal/ipc/AdsProcessPriorityService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 27
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/ipc/AdsProcessPriorityService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method
