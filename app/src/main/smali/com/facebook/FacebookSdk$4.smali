.class final Lcom/facebook/FacebookSdk$4;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookSdk$InitializeCallback;Landroid/content/Context;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/facebook/FacebookSdk$4;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/facebook/FacebookSdk$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 352
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->loadCurrentAccessToken()Z

    .line 353
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->loadCurrentProfile()Z

    .line 354
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 358
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/facebook/FacebookSdk$4;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/facebook/FacebookSdk$4;->val$callback:Lcom/facebook/FacebookSdk$InitializeCallback;

    invoke-interface {v0}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V

    .line 366
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->access$000()Landroid/content/Context;

    move-result-object v0

    .line 367
    invoke-static {}, Lcom/facebook/FacebookSdk;->access$100()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/facebook/FacebookSdk$4;->val$applicationContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    const/4 v0, 0x0

    return-object v0
.end method
