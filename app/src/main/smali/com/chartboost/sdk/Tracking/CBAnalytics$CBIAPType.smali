.class public final enum Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Tracking/CBAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBIAPType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

.field public static final enum GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

.field private static final synthetic a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 92
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const-string v1, "GOOGLE_PLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    .line 93
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const-string v1, "AMAZON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    .locals 1

    .line 91
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    .locals 1

    .line 91
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    return-object v0
.end method
