.class public final Lcom/facebook/internal/instrument/crashreport/CrashReportData;
.super Ljava/lang/Object;
.source "CrashReportData.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final PARAM_CALLSTACK:Ljava/lang/String; = "callstack"

.field private static final PARAM_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final PARAM_DEVICE_OS:Ljava/lang/String; = "device_os_version"

.field private static final PARAM_REASON:Ljava/lang/String; = "reason"

.field private static final PARAM_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private appVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private cause:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private filename:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private timestamp:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->filename:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->filename:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/InstrumentUtility;->readFile(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "app_version"

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->appVersion:Ljava/lang/String;

    const-string v0, "reason"

    .line 68
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->cause:Ljava/lang/String;

    const-string v0, "callstack"

    .line 69
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->stackTrace:Ljava/lang/String;

    const-string v0, "timestamp"

    const-wide/16 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/facebook/internal/Utility;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->appVersion:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/facebook/internal/instrument/InstrumentUtility;->getCause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->cause:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/facebook/internal/instrument/InstrumentUtility;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->stackTrace:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    .line 56
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "crash_log_"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".json"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->filename:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/instrument/InstrumentUtility;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public compareTo(Lcom/facebook/internal/instrument/crashreport/CrashReportData;)I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_1
    iget-object p1, p1, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public getParameters()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "device_os_version"

    .line 112
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    .line 113
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->appVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "app_version"

    .line 115
    iget-object v2, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "timestamp"

    .line 118
    iget-object v2, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->cause:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "reason"

    .line 121
    iget-object v2, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "callstack"

    .line 124
    iget-object v2, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public save()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->filename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/InstrumentUtility;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/facebook/internal/instrument/crashreport/CrashReportData;->getParameters()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
