.class public final Lcom/facebook/applinks/AppLinks;
.super Ljava/lang/Object;
.source "AppLinks.java"


# static fields
.field public static final AUTO_APPLINK_DATA_KEY:Ljava/lang/String; = "fb_aut_applink_data"

.field private static final AUTO_APPLINK_EVENT:Ljava/lang/String; = "fb_auto_applink"

.field private static final AUTO_APPLINK_KEY:Ljava/lang/String; = "com.facebook.sdk.AutoAppLinkActivity"

.field private static autoAppLinkActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAutoAppLink(Landroid/app/Activity;)Z
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 80
    invoke-static {p0}, Lcom/facebook/applinks/AppLinks;->initialize(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v1}, Lcom/facebook/applinks/AppLinkData;->isAutoAppLink()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/facebook/applinks/AppLinks;->autoAppLinkActivity:Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "fb_aut_applink_data"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    new-instance v1, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    const-string v2, "fb_auto_applink"

    .line 92
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private static declared-synchronized initialize(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/facebook/applinks/AppLinks;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 47
    monitor-exit v0

    return v2

    .line 49
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/applinks/AppLinks;->autoAppLinkActivity:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 50
    monitor-exit v0

    return v3

    .line 53
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x80

    .line 53
    invoke-virtual {v1, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 56
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.facebook.sdk.AutoAppLinkActivity"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.AutoAppLinkActivity"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/facebook/applinks/AppLinks;->autoAppLinkActivity:Ljava/lang/Class;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_2
    monitor-exit v0

    return v3

    .line 66
    :catch_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0

    throw p0
.end method
