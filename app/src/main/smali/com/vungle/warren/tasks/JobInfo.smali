.class public Lcom/vungle/warren/tasks/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/tasks/JobInfo$Priority;,
        Lcom/vungle/warren/tasks/JobInfo$ReschedulePolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobInfo"


# instance fields
.field private delay:J

.field private extras:Landroid/os/Bundle;

.field private nextRescheduleTimeout:J

.field private priority:I

.field private reschedulePolicy:I

.field private rescheduleTimeout:J

.field private final tag:Ljava/lang/String;

.field private updateCurrent:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->delay:J

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/tasks/JobInfo;->extras:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/vungle/warren/tasks/JobInfo;->reschedulePolicy:I

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/vungle/warren/tasks/JobInfo;->priority:I

    .line 28
    iput-object p1, p0, Lcom/vungle/warren/tasks/JobInfo;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/vungle/warren/tasks/JobInfo;
    .locals 2

    .line 94
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/tasks/JobInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "JobInfo"

    .line 96
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->delay:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/vungle/warren/tasks/JobInfo;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getJobTag()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/vungle/warren/tasks/JobInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/vungle/warren/tasks/JobInfo;->priority:I

    return v0
.end method

.method public getUpdateCurrent()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/vungle/warren/tasks/JobInfo;->updateCurrent:Z

    return v0
.end method

.method public makeNextRescedule()J
    .locals 4

    .line 73
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->rescheduleTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 75
    :cond_0
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->nextRescheduleTimeout:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 76
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->rescheduleTimeout:J

    iput-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->nextRescheduleTimeout:J

    goto :goto_0

    .line 77
    :cond_1
    iget v0, p0, Lcom/vungle/warren/tasks/JobInfo;->reschedulePolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 78
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->nextRescheduleTimeout:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->nextRescheduleTimeout:J

    .line 81
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/vungle/warren/tasks/JobInfo;->nextRescheduleTimeout:J

    return-wide v0
.end method

.method public setDelay(J)Lcom/vungle/warren/tasks/JobInfo;
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/vungle/warren/tasks/JobInfo;->delay:J

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/vungle/warren/tasks/JobInfo;->extras:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public setPriority(I)Lcom/vungle/warren/tasks/JobInfo;
    .locals 0

    .line 56
    iput p1, p0, Lcom/vungle/warren/tasks/JobInfo;->priority:I

    return-object p0
.end method

.method public setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/vungle/warren/tasks/JobInfo;->rescheduleTimeout:J

    .line 51
    iput p3, p0, Lcom/vungle/warren/tasks/JobInfo;->reschedulePolicy:I

    return-object p0
.end method

.method public setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/vungle/warren/tasks/JobInfo;->updateCurrent:Z

    return-object p0
.end method
