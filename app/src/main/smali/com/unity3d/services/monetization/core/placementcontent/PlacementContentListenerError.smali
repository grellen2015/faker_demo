.class public final enum Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;
.super Ljava/lang/Enum;
.source "PlacementContentListenerError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

.field public static final enum PLACEMENTCONTENT_LISTENER_ERROR:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

.field public static final enum PLACEMENTCONTENT_LISTENER_NULL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    const-string v1, "PLACEMENTCONTENT_LISTENER_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_ERROR:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    .line 5
    new-instance v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    const-string v1, "PLACEMENTCONTENT_LISTENER_NULL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_NULL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_ERROR:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->PLACEMENTCONTENT_LISTENER_NULL:Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->$VALUES:[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->$VALUES:[Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    invoke-virtual {v0}, [Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/monetization/core/placementcontent/PlacementContentListenerError;

    return-object v0
.end method
