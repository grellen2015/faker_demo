.class public Lcom/ironsource/mediationsdk/ISBannerSize;
.super Ljava/lang/Object;
.source "ISBannerSize.java"


# static fields
.field public static final BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

.field public static final LARGE:Lcom/ironsource/mediationsdk/ISBannerSize;

.field public static final RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

.field public static final SMART:Lcom/ironsource/mediationsdk/ISBannerSize;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v1, "BANNER"

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 9
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->LARGE:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 10
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v1, "RECTANGLE"

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 11
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v1, "SMART"

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mWidth:I

    .line 15
    iput p2, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mHeight:I

    const-string p1, "CUSTOM"

    .line 16
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mWidth:I

    return v0
.end method
