.class final Lcom/ironsource/sdk/analytics/moat/MOATManager$1;
.super Ljava/lang/Object;
.source "MOATManager.java"

# interfaces
.implements Lcom/moat/analytics/mobile/iro/TrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/analytics/moat/MOATManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrackingFailedToStart(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTrackingStarted(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;->onTrackingStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTrackingStopped(Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;->onTrackingStopped(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
