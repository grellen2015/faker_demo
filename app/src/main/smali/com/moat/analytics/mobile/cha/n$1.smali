.class final Lcom/moat/analytics/mobile/cha/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/cha/n;->ʻ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ˏ:Lcom/moat/analytics/mobile/cha/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/cha/n;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/n$1;->ˏ:Lcom/moat/analytics/mobile/cha/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "LocationManager"

    const-string v2, "fetchTimedOut"

    .line 224
    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/n$1;->ˏ:Lcom/moat/analytics/mobile/cha/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/n;->ॱ(Lcom/moat/analytics/mobile/cha/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 227
    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method
