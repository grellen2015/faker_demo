.class public final enum Lcom/applovin/impl/a/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/a/e$a;

.field public static final enum b:Lcom/applovin/impl/a/e$a;

.field public static final enum c:Lcom/applovin/impl/a/e$a;

.field public static final enum d:Lcom/applovin/impl/a/e$a;

.field private static final synthetic e:[Lcom/applovin/impl/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/applovin/impl/a/e$a;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e$a;->a:Lcom/applovin/impl/a/e$a;

    new-instance v0, Lcom/applovin/impl/a/e$a;

    const-string v1, "STATIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e$a;->b:Lcom/applovin/impl/a/e$a;

    new-instance v0, Lcom/applovin/impl/a/e$a;

    const-string v1, "IFRAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e$a;->c:Lcom/applovin/impl/a/e$a;

    new-instance v0, Lcom/applovin/impl/a/e$a;

    const-string v1, "HTML"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/applovin/impl/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e$a;->d:Lcom/applovin/impl/a/e$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/applovin/impl/a/e$a;

    sget-object v1, Lcom/applovin/impl/a/e$a;->a:Lcom/applovin/impl/a/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/a/e$a;->b:Lcom/applovin/impl/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/a/e$a;->c:Lcom/applovin/impl/a/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applovin/impl/a/e$a;->d:Lcom/applovin/impl/a/e$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/applovin/impl/a/e$a;->e:[Lcom/applovin/impl/a/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/a/e$a;
    .locals 1

    const-class v0, Lcom/applovin/impl/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/a/e$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/a/e$a;
    .locals 1

    sget-object v0, Lcom/applovin/impl/a/e$a;->e:[Lcom/applovin/impl/a/e$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/a/e$a;

    return-object v0
.end method
