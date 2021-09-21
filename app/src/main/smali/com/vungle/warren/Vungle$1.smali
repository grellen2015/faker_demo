.class final Lcom/vungle/warren/Vungle$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reConfigVungle()V
    .locals 0

    .line 153
    invoke-static {}, Lcom/vungle/warren/Vungle;->reConfigure()V

    return-void
.end method
