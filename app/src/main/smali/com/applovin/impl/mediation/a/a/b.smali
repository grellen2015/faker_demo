.class public abstract Lcom/applovin/impl/mediation/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/a/a/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/applovin/impl/mediation/a/a/b$a;

.field protected b:Landroid/text/SpannedString;

.field protected c:Landroid/text/SpannedString;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/a/a/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a/b;->a:Lcom/applovin/impl/mediation/a/a/b$a;

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Lcom/applovin/impl/mediation/a/a/b$a;->e:Lcom/applovin/impl/mediation/a/a/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/b$a;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/text/SpannedString;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->b:Landroid/text/SpannedString;

    return-object v0
.end method

.method public d()Landroid/text/SpannedString;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->c:Landroid/text/SpannedString;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->a:Lcom/applovin/impl/mediation/a/a/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/b$a;->a()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a/b;->a:Lcom/applovin/impl/mediation/a/a/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a/b$a;->b()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    const/high16 v0, -0x1000000

    return v0
.end method
