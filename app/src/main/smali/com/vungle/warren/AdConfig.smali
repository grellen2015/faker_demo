.class public Lcom/vungle/warren/AdConfig;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdConfig$AdSize;,
        Lcom/vungle/warren/AdConfig$Settings;
    }
.end annotation


# static fields
.field public static final APK_DIRECT_DOWNLOAD:I = 0x20

.field public static final AUTO_ROTATE:I = 0x10

.field public static final FLAG_DIRECT_DOWNLOAD:Ljava/lang/String; = "direct_download"

.field public static final IMMEDIATE_BACK:I = 0x2

.field public static final IMMERSIVE:I = 0x4

.field public static final MUTED:I = 0x1

.field public static final TRANSITION_ANIMATE:I = 0x8


# instance fields
.field private adSize:Lcom/vungle/warren/AdConfig$AdSize;

.field private flexviewCloseSec:I

.field private ordinal:I

.field private settings:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    iput-object v0, p0, Lcom/vungle/warren/AdConfig;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method


# virtual methods
.method public getAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/vungle/warren/AdConfig;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method

.method public getFlexViewCloseTime()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/vungle/warren/AdConfig;->flexviewCloseSec:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/vungle/warren/AdConfig;->ordinal:I

    return v0
.end method

.method public getSettings()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 29
    iget v0, p0, Lcom/vungle/warren/AdConfig;->settings:I

    return v0
.end method

.method public setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/vungle/warren/AdConfig;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method public setAutoRotate(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 140
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 142
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method

.method public setBackButtonImmediatelyEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 129
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method

.method public setExtraSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 203
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "direct_download"

    .line 207
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "direct_download"

    .line 208
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 212
    :cond_1
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public setFlexViewCloseTime(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/vungle/warren/AdConfig;->flexviewCloseSec:I

    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 89
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 91
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 161
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method

.method public setOrdinal(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/vungle/warren/AdConfig;->ordinal:I

    return-void
.end method

.method public setTransitionAnimationEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 175
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    goto :goto_0

    .line 177
    :cond_0
    iget p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/vungle/warren/AdConfig;->settings:I

    :goto_0
    return-void
.end method
