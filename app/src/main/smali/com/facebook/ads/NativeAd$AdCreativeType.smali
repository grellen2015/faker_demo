.class public final enum Lcom/facebook/ads/NativeAd$AdCreativeType;
.super Ljava/lang/Enum;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdCreativeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/NativeAd$AdCreativeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/NativeAd$AdCreativeType;

.field public static final enum CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

.field public static final enum IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

.field public static final enum UNKNOWN:Lcom/facebook/ads/NativeAd$AdCreativeType;

.field public static final enum VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lcom/facebook/ads/NativeAd$AdCreativeType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd$AdCreativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

    new-instance v0, Lcom/facebook/ads/NativeAd$AdCreativeType;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/NativeAd$AdCreativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    new-instance v0, Lcom/facebook/ads/NativeAd$AdCreativeType;

    const-string v1, "CAROUSEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/NativeAd$AdCreativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    new-instance v0, Lcom/facebook/ads/NativeAd$AdCreativeType;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/NativeAd$AdCreativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->UNKNOWN:Lcom/facebook/ads/NativeAd$AdCreativeType;

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [Lcom/facebook/ads/NativeAd$AdCreativeType;

    sget-object v1, Lcom/facebook/ads/NativeAd$AdCreativeType;->IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/NativeAd$AdCreativeType;->UNKNOWN:Lcom/facebook/ads/NativeAd$AdCreativeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->$VALUES:[Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAd$AdCreativeType;
    .locals 1

    .line 51
    const-class v0, Lcom/facebook/ads/NativeAd$AdCreativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/NativeAd$AdCreativeType;
    .locals 1

    .line 51
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->$VALUES:[Lcom/facebook/ads/NativeAd$AdCreativeType;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAd$AdCreativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0
.end method
