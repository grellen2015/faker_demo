.class public final enum Lcom/ironsource/sdk/data/SSASession$SessionType;
.super Ljava/lang/Enum;
.source "SSASession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/SSASession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/data/SSASession$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/SSASession$SessionType;

.field public static final enum backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

.field public static final enum launched:Lcom/ironsource/sdk/data/SSASession$SessionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    const-string v1, "launched"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/SSASession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->launched:Lcom/ironsource/sdk/data/SSASession$SessionType;

    new-instance v0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    const-string v1, "backFromBG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/SSASession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Lcom/ironsource/sdk/data/SSASession$SessionType;

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->launched:Lcom/ironsource/sdk/data/SSASession$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->$VALUES:[Lcom/ironsource/sdk/data/SSASession$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSASession$SessionType;
    .locals 1

    .line 47
    const-class v0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/data/SSASession$SessionType;
    .locals 1

    .line 47
    sget-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->$VALUES:[Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/SSASession$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/SSASession$SessionType;

    return-object v0
.end method
