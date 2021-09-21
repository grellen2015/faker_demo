.class Lcom/tenjin/android/TenjinSDK$1;
.super Ljava/lang/Object;
.source "TenjinSDK.java"

# interfaces
.implements Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenjin/android/TenjinSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
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

    .line 221
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$1;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReferrerUpdated()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$1;->this$0:Lcom/tenjin/android/TenjinSDK;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tenjin/android/TenjinSDK;->access$002(Lcom/tenjin/android/TenjinSDK;J)J

    .line 225
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$1;->this$0:Lcom/tenjin/android/TenjinSDK;

    const-string v1, "broadcast_referrer"

    invoke-static {v0, v1}, Lcom/tenjin/android/TenjinSDK;->access$200(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V

    return-void
.end method
