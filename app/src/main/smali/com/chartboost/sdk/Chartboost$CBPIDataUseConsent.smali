.class public final enum Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBPIDataUseConsent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

.field public static final enum UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

.field public static final enum YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 114
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 115
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const-string v1, "NO_BEHAVIORAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 116
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const-string v1, "YES_BEHAVIORAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const/4 v0, 0x3

    .line 113
    new-array v0, v0, [Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->c:[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->b:Ljava/util/Map;

    .line 126
    invoke-static {}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->values()[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 127
    sget-object v4, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->b:Ljava/util/Map;

    iget v5, v3, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a:I

    return-void
.end method

.method public static valueOf(I)Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .locals 1

    .line 132
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    if-nez p0, :cond_0

    .line 133
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .locals 1

    .line 113
    const-class v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .locals 1

    .line 113
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->c:[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a:I

    return v0
.end method
