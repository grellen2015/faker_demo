.class Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;
.super Landroid/os/AsyncTask;
.source "TenjinSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenjin/android/TenjinSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncGetAdvertisingInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field advertisingId:Ljava/lang/String;

.field limitAdTracking:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;


# direct methods
.method private constructor <init>(Lcom/tenjin/android/TenjinSDK;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$1;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;-><init>(Lcom/tenjin/android/TenjinSDK;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;
    .locals 4

    .line 656
    :try_start_0
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$1000(Lcom/tenjin/android/TenjinSDK;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$1400(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v1, v0}, Lcom/tenjin/android/TenjinSDK;->access$1502(Lcom/tenjin/android/TenjinSDK;Z)Z

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v1}, Lcom/tenjin/android/TenjinSDK;->access$1600(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amazon"

    .line 662
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v1}, Lcom/tenjin/android/TenjinSDK;->access$1500(Lcom/tenjin/android/TenjinSDK;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    .line 678
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v1, v0}, Lcom/tenjin/android/TenjinSDK;->access$1502(Lcom/tenjin/android/TenjinSDK;Z)Z

    const-string v0, "getId"

    .line 679
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->advertisingId:Ljava/lang/String;

    const-string v0, "isLimitAdTrackingEnabled"

    .line 680
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3, v1}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->limitAdTracking:Ljava/lang/Boolean;

    goto :goto_1

    .line 663
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$1000(Lcom/tenjin/android/TenjinSDK;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "limit_ad_tracking"

    const/4 v3, 0x2

    .line 664
    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "advertising_id"

    .line 666
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 667
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->limitAdTracking:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    .line 669
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->limitAdTracking:Ljava/lang/Boolean;

    goto :goto_1

    .line 672
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->limitAdTracking:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 683
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$1702(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->limitAdTracking:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$1802(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    new-instance v0, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->advertisingId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->limitAdTracking:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$1902(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    .line 688
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK;->access$1900(Lcom/tenjin/android/TenjinSDK;)Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 649
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->doInBackground([Ljava/lang/Void;)Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 693
    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2000(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2000(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 694
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$2100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 695
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    const-string v0, "advertising_info"

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$200(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 649
    check-cast p1, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->onPostExecute(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)V

    return-void
.end method
