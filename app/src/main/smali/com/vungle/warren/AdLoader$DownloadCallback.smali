.class interface abstract Lcom/vungle/warren/AdLoader$DownloadCallback;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDownloadFailed(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
