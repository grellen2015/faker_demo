.class public Lcom/vungle/warren/tasks/AnalyticsJob;
.super Ljava/lang/Object;
.source "AnalyticsJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/tasks/AnalyticsJob$Action;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:J = 0x7530L

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action_extra"

.field private static final EXTRA_BODY:Ljava/lang/String; = "extra_body"

.field private static final EXTRA_URLS:Ljava/lang/String; = "extra_urls"

.field public static final TAG:Ljava/lang/String; = "AnalyticsJob"


# instance fields
.field private final adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/analytics/AdAnalytics;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    return-void
.end method

.method public static makeJob(ILjava/lang/String;[Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;
    .locals 2
    .param p0    # I
        .annotation build Lcom/vungle/warren/tasks/AnalyticsJob$Action;
        .end annotation
    .end param

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_extra"

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "extra_body"

    .line 25
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_urls"

    .line 26
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    new-instance p0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object p1, Lcom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const-wide/16 p1, 0x7530

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 p1, 0x5

    .line 32
    invoke-virtual {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .locals 1

    const-string p2, "action_extra"

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "extra_urls"

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v0, p2}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 56
    array-length v0, p2

    if-eqz v0, :cond_0

    const-string v0, "extra_urls"

    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    :pswitch_1
    const-string p2, "extra_body"

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 48
    const-class v0, Lcom/google/gson/JsonElement;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    .line 49
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
