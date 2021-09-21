.class public final enum Lcom/ironsource/sdk/data/SSAEnums$DebugMode;
.super Ljava/lang/Enum;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/SSAEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/data/SSAEnums$DebugMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_2:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    .line 8
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    .line 9
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_2:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    .line 10
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_2:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$DebugMode;
    .locals 1

    .line 5
    const-class v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;
    .locals 1

    .line 5
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->value:I

    return v0
.end method
