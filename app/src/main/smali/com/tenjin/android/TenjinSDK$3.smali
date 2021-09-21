.class Lcom/tenjin/android/TenjinSDK$3;
.super Ljava/lang/Object;
.source "TenjinSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenjin/android/TenjinSDK;->fetchGoogleInstallReferrer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;


# direct methods
.method constructor <init>(Lcom/tenjin/android/TenjinSDK;)V
    .locals 0

    .line 1534
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$3;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1537
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    .line 1539
    :try_start_0
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$6300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1540
    new-instance v1, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;

    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$3;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v3, p0, Lcom/tenjin/android/TenjinSDK$3;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v3}, Lcom/tenjin/android/TenjinSDK;->access$1000(Lcom/tenjin/android/TenjinSDK;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;-><init>(Lcom/tenjin/android/TenjinSDK;Landroid/content/Context;)V

    .line 1541
    invoke-virtual {v1}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->startConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1543
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1545
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
