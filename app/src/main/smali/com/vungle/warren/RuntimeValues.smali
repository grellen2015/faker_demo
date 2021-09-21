.class public Lcom/vungle/warren/RuntimeValues;
.super Ljava/lang/Object;
.source "RuntimeValues.java"


# instance fields
.field volatile headerBiddingCallback:Lcom/vungle/warren/HeaderBiddingCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field volatile initCallback:Lcom/vungle/warren/InitCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field volatile publisherDirectDownload:Lcom/vungle/warren/PublisherDirectDownload;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field volatile settings:Lcom/vungle/warren/VungleSettings;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
