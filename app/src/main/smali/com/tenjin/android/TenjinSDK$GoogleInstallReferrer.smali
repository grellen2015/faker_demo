.class public Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;
.super Ljava/lang/Object;
.source "TenjinSDK.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenjin/android/TenjinSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoogleInstallReferrer"
.end annotation


# static fields
.field private static final REFERRER_TAG:Ljava/lang/String; = "TenjinInstallReferrer"

.field private static final referrerRetryLimit:I = 0x3


# instance fields
.field private context:Landroid/content/Context;

.field private googleInstallReferrerClient:Ljava/lang/Object;

.field private final installReferrerLock:Ljava/lang/Object;

.field private installReferrerReceived:Z

.field private referrerRetryCount:I

.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;


# direct methods
.method public constructor <init>(Lcom/tenjin/android/TenjinSDK;Landroid/content/Context;)V
    .locals 0

    .line 1559
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1556
    iput p1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->referrerRetryCount:I

    .line 1560
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->context:Landroid/content/Context;

    .line 1561
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerLock:Ljava/lang/Object;

    .line 1562
    iput-boolean p1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerReceived:Z

    return-void
.end method

.method private closeInstallReferrerClient()V
    .locals 4

    .line 1812
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1816
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    const-string v2, "endConnection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1818
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1820
    :goto_0
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    return-void
.end method

.method private createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.installreferrer.api.InstallReferrerClient"

    const-string v2, "newBuilder"

    const/4 v3, 0x1

    .line 1593
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v4, v3}, Lcom/tenjin/android/Reflection;->runStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "build"

    .line 1594
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1, v1, v0, v2}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1598
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1596
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1616
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1620
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1618
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getInstallBeginTimestampSeconds(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "getInstallBeginTimestampSeconds"

    const/4 v2, 0x0

    .line 1783
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v0, v2}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1786
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getInstallReferrer()Ljava/lang/Object;
    .locals 4

    .line 1741
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1745
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    const-string v2, "getInstallReferrer"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1747
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private getInstallReferrerStateListenerClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "com.android.installreferrer.api.InstallReferrerStateListener"

    .line 1606
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getInstallReferrerString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "getInstallReferrer"

    const/4 v2, 0x0

    .line 1757
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v0, v2}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1760
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getReferrerClickTimestampSeconds(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "getReferrerClickTimestampSeconds"

    const/4 v2, 0x0

    .line 1770
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v0, v2}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1773
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private googleInstallReferrerResponseComplete(Z)V
    .locals 2

    .line 1733
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 1735
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1737
    :cond_0
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    const-string v0, "install_referrer"

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$200(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V

    return-void
.end method

.method private onInstallReferrerSetupFinished(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    .line 1727
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->closeInstallReferrerClient()V

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "TenjinInstallReferrer"

    const-string v0, "Install Referrer - DEVELOPER_ERROR: 3"

    .line 1719
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->retryGoogleInstallClientConnection()V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "TenjinInstallReferrer"

    const-string v0, "Install Referrer - FEATURE_NOT_SUPPORTED: 2"

    .line 1716
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "TenjinInstallReferrer"

    const-string v0, "Install Referrer - SERVICE_UNAVAILABLE: 1"

    .line 1712
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->retryGoogleInstallClientConnection()V

    goto/16 :goto_0

    .line 1676
    :pswitch_3
    :try_start_0
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->getInstallReferrer()Ljava/lang/Object;

    move-result-object p1

    .line 1677
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->getInstallReferrerString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->getReferrerClickTimestampSeconds(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 1679
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->getInstallBeginTimestampSeconds(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "TenjinInstallReferrer"

    .line 1681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installReferrer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TenjinInstallReferrer"

    .line 1682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TenjinInstallReferrer"

    .line 1683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installBeginTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->context:Landroid/content/Context;

    const-string v3, "tenjinInstallPreferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1687
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1688
    iget-object v4, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v4, v0}, Lcom/tenjin/android/TenjinSDK;->access$6402(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;

    .line 1689
    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerResponseComplete(Z)V

    .line 1690
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "tenjinGoogleInstallContainsReferrerKey"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1691
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "tenjinGoogleInstallReferrer"

    iget-object v5, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v5}, Lcom/tenjin/android/TenjinSDK;->access$6400(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    if-eqz v1, :cond_1

    .line 1694
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v0, v1}, Lcom/tenjin/android/TenjinSDK;->access$6502(Lcom/tenjin/android/TenjinSDK;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1696
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tenjinGoogleInstallReferrerClickTs"

    iget-object v4, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v4}, Lcom/tenjin/android/TenjinSDK;->access$6500(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    if-eqz p1, :cond_2

    .line 1698
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v0, p1}, Lcom/tenjin/android/TenjinSDK;->access$6602(Lcom/tenjin/android/TenjinSDK;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1700
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "tenjinGoogleInstallReferrerInstallTs"

    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v1}, Lcom/tenjin/android/TenjinSDK;->access$6600(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1702
    :cond_2
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    :try_start_1
    iput-boolean v3, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerReceived:Z

    .line 1704
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1705
    :try_start_2
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->closeInstallReferrerClient()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1704
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1708
    :catch_0
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->retryGoogleInstallClientConnection()V

    goto :goto_0

    :pswitch_4
    const-string p1, "TenjinInstallReferrer"

    const-string v0, "Install Referrer - SERVICE_DISCONNECTED: -1"

    .line 1723
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->retryGoogleInstallClientConnection()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private retryGoogleInstallClientConnection()V
    .locals 2

    .line 1792
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1793
    :try_start_0
    iget-boolean v1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerReceived:Z

    if-eqz v1, :cond_0

    .line 1795
    monitor-exit v0

    return-void

    .line 1797
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    iget v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->referrerRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->referrerRetryCount:I

    .line 1799
    iget v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->referrerRetryCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 1804
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1805
    invoke-virtual {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->startConnection()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1807
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 1797
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startGoogleInstallReferrerConnection(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5

    .line 1627
    :try_start_0
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    const-string v1, "startConnection"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v4

    invoke-static {v0, v1, v3, p1}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1631
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1629
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-object p1

    .line 1641
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 1647
    new-array p3, v0, [Ljava/lang/Object;

    :cond_2
    const-string v1, "onInstallReferrerSetupFinished"

    .line 1649
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1650
    array-length p2, p3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    return-object p1

    .line 1655
    :cond_3
    aget-object p2, p3, v0

    .line 1656
    instance-of p3, p2, Ljava/lang/Integer;

    if-nez p3, :cond_4

    return-object p1

    .line 1660
    :cond_4
    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_5

    return-object p1

    .line 1665
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->onInstallReferrerSetupFinished(I)V

    goto :goto_0

    :cond_6
    const-string p3, "onInstallReferrerServiceDisconnected"

    .line 1666
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "TenjinInstallReferrer"

    const-string p3, "InstallReferrer onInstallReferrerServiceDisconnected"

    .line 1667
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-object p1
.end method

.method public startConnection()V
    .locals 2

    .line 1566
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->closeInstallReferrerClient()V

    .line 1567
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1568
    :try_start_0
    iget-boolean v1, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->installReferrerReceived:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1569
    invoke-direct {p0, v1}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerResponseComplete(Z)V

    .line 1570
    monitor-exit v0

    return-void

    .line 1572
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 1576
    :cond_1
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    .line 1577
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->googleInstallReferrerClient:Ljava/lang/Object;

    if-nez v0, :cond_2

    return-void

    .line 1580
    :cond_2
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->getInstallReferrerStateListenerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1584
    :cond_3
    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 1588
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;->startGoogleInstallReferrerConnection(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1572
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
