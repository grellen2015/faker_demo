.class Lcom/chartboost/sdk/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/chartboost/sdk/impl/f;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field c:I

.field d:Lcom/chartboost/sdk/Model/a;

.field e:Ljava/lang/Integer;

.field f:Z

.field g:I

.field h:Ljava/lang/Long;

.field i:Ljava/lang/Long;

.field j:Ljava/lang/Long;

.field k:Ljava/lang/Integer;

.field l:Ljava/lang/Integer;

.field m:Ljava/lang/Integer;

.field n:Ljava/lang/Integer;

.field o:Ljava/lang/Integer;

.field p:Ljava/lang/Integer;

.field q:Ljava/lang/Integer;

.field r:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/chartboost/sdk/impl/f;->a:I

    .line 78
    iput-object p2, p0, Lcom/chartboost/sdk/impl/f;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/f;->f:Z

    .line 80
    iput p3, p0, Lcom/chartboost/sdk/impl/f;->c:I

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->d:Lcom/chartboost/sdk/Model/a;

    .line 82
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->e:Ljava/lang/Integer;

    const/4 p2, 0x3

    .line 83
    iput p2, p0, Lcom/chartboost/sdk/impl/f;->g:I

    .line 85
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->h:Ljava/lang/Long;

    .line 86
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->i:Ljava/lang/Long;

    .line 87
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->j:Ljava/lang/Long;

    .line 89
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->k:Ljava/lang/Integer;

    .line 90
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->l:Ljava/lang/Integer;

    .line 91
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->m:Ljava/lang/Integer;

    .line 92
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->n:Ljava/lang/Integer;

    .line 93
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->o:Ljava/lang/Integer;

    .line 94
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->p:Ljava/lang/Integer;

    .line 95
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->q:Ljava/lang/Integer;

    .line 96
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->r:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/f;)I
    .locals 1

    .line 49
    iget v0, p0, Lcom/chartboost/sdk/impl/f;->a:I

    iget p1, p1, Lcom/chartboost/sdk/impl/f;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/chartboost/sdk/impl/f;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/f;->a(Lcom/chartboost/sdk/impl/f;)I

    move-result p1

    return p1
.end method
