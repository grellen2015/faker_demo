.class public Lcom/chartboost/sdk/CBImpressionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/Tracking/a;

.field final b:Landroid/os/Handler;

.field final c:Lcom/chartboost/sdk/c;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    .line 37
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    .line 38
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    .line 40
    iput-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 74
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 202
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/CBImpressionActivity$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/CBImpressionActivity$1;-><init>(Lcom/chartboost/sdk/CBImpressionActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public forwardTouchEvents(Landroid/app/Activity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 178
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 180
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_1

    const-string v0, "CBImpressionActivity"

    const-string v1, "The activity passed down is not hardware accelerated, so Chartboost cannot show ads"

    .line 184
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "isChartboost"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-nez p1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->a()V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBImpressionActivity;->requestWindowFeature(I)Z

    .line 65
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 66
    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {p1, p0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 67
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBImpressionActivity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->b()V

    const-string p1, "CBImpressionActivity"

    const-string v0, "Impression Activity onCreate() called"

    .line 69
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "CBImpressionActivity"

    const-string v0, "This activity cannot be called from outside chartboost SDK"

    .line 58
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->k(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 116
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 119
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 99
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 110
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->setActivityAttrs(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 84
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->e(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStart"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 131
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->i(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStop"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
