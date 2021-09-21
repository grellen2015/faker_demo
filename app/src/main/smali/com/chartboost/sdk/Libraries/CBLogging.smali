.class public final Lcom/chartboost/sdk/Libraries/CBLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->INTEGRATION:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 100
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 140
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 126
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 127
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 166
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 191
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 178
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 204
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    if-ne v0, v1, :cond_0

    .line 205
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
