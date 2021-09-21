.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSignature:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appSignature:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$000(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$002(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 129
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$102(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Landroid/app/Activity;)Landroid/app/Activity;

    .line 130
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    new-instance v2, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;-><init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;)V

    invoke-static {v0, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$202(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    .line 132
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$400(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->setConsent(Z)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$200(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Lcom/ironsource/adapters/chartboost/ChartboostAdapter$CbDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 137
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$appSignature:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 140
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-static {v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$500(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :catch_0
    if-eqz v0, :cond_1

    .line 145
    :try_start_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    :goto_0
    const-string v0, "Unity"

    .line 150
    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    invoke-virtual {v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V

    .line 152
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationironSource:Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v2, "4.1.9"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V

    .line 154
    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 156
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 157
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 158
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 160
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
