.class Lcom/applovin/impl/sdk/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/h;->a(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/applovin/impl/sdk/h;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/h;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    iput-object p2, p0, Lcom/applovin/impl/sdk/h$2;->a:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/h$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    iget-object v1, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    invoke-static {v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/applovin/impl/sdk/h;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/applovin/impl/sdk/h$2;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    iget-object v1, p0, Lcom/applovin/impl/sdk/h$2;->a:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    new-instance v1, Lcom/applovin/impl/sdk/h$2$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/h$2$1;-><init>(Lcom/applovin/impl/sdk/h$2;)V

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/utils/a;)Lcom/applovin/impl/sdk/utils/a;

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/i;->aa()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    invoke-static {v1}, Lcom/applovin/impl/sdk/h;->b(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/utils/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/sdk/h$2;->b:Landroid/app/Activity;

    const-class v2, Lcom/applovin/sdk/AppLovinWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sdk_key"

    iget-object v2, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    invoke-static {v2}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/i;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "immersive_mode_on"

    iget-object v2, p0, Lcom/applovin/impl/sdk/h$2;->c:Lcom/applovin/impl/sdk/h;

    invoke-static {v2}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/i;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/b/c;->al:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/b/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/sdk/h$2;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$2;->a:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/h$2;->a:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method