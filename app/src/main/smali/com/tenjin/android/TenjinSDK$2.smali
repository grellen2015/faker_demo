.class Lcom/tenjin/android/TenjinSDK$2;
.super Ljava/lang/Object;
.source "TenjinSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenjin/android/TenjinSDK;->sendResultToCallback(Lcom/tenjin/android/Callback;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;

.field final synthetic val$callback:Lcom/tenjin/android/Callback;

.field final synthetic val$firstLaunch:Z


# direct methods
.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;Z)V
    .locals 0

    .line 1333
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$2;->this$0:Lcom/tenjin/android/TenjinSDK;

    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$2;->val$callback:Lcom/tenjin/android/Callback;

    iput-boolean p3, p0, Lcom/tenjin/android/TenjinSDK$2;->val$firstLaunch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1336
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$2;->val$callback:Lcom/tenjin/android/Callback;

    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$2;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v1}, Lcom/tenjin/android/TenjinSDK;->access$5100(Lcom/tenjin/android/TenjinSDK;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/tenjin/android/TenjinSDK$2;->val$firstLaunch:Z

    iget-object v3, p0, Lcom/tenjin/android/TenjinSDK$2;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v3}, Lcom/tenjin/android/TenjinSDK;->access$5200(Lcom/tenjin/android/TenjinSDK;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tenjin/android/Callback;->onSuccess(ZZLjava/util/Map;)V

    return-void
.end method
