.class Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;
.super Ljava/util/HashMap;
.source "ViewVisibilityParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)V
    .locals 3

    .line 19
    iput-object p1, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "isVisible"

    .line 20
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->access$000(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isWindowVisible"

    .line 21
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->this$0:Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;

    invoke-static {v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;->access$100(Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isShown"

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isViewVisible"

    .line 23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/ISNAdView/ViewVisibilityParameters$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
