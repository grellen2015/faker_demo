.class public final Lcom/vungle/warren/VungleSettings;
.super Ljava/lang/Object;
.source "VungleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleSettings$Builder;
    }
.end annotation


# static fields
.field private static final MEGABYTE:J = 0x100000L


# instance fields
.field private volatile androidIdOptedOut:Z

.field private volatile minimumSpaceForAd:J

.field private volatile minimumSpaceForInit:J


# direct methods
.method private constructor <init>(Lcom/vungle/warren/VungleSettings$Builder;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->access$100(Lcom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings;->minimumSpaceForAd:J

    .line 67
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->access$200(Lcom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings;->minimumSpaceForInit:J

    .line 68
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->access$300(Lcom/vungle/warren/VungleSettings$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vungle/warren/VungleSettings;->androidIdOptedOut:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/warren/VungleSettings$Builder;Lcom/vungle/warren/VungleSettings$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/vungle/warren/VungleSettings;-><init>(Lcom/vungle/warren/VungleSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public getAndroidIdOptOut()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/vungle/warren/VungleSettings;->androidIdOptedOut:Z

    return v0
.end method

.method public getMinimumSpaceForAd()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings;->minimumSpaceForAd:J

    return-wide v0
.end method

.method public getMinimumSpaceForInit()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings;->minimumSpaceForInit:J

    return-wide v0
.end method