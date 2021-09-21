.class Lcom/vungle/warren/persistence/Repository$1;
.super Ljava/util/HashMap;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class;",
        "Lcom/vungle/warren/persistence/DBAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$1;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-class p1, Lcom/vungle/warren/model/Placement;

    new-instance v0, Lcom/vungle/warren/model/PlacementDBAdapter;

    invoke-direct {v0}, Lcom/vungle/warren/model/PlacementDBAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class p1, Lcom/vungle/warren/model/Cookie;

    new-instance v0, Lcom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {v0}, Lcom/vungle/warren/model/CookieDBAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class p1, Lcom/vungle/warren/model/Report;

    new-instance v0, Lcom/vungle/warren/model/ReportDBAdapter;

    invoke-direct {v0}, Lcom/vungle/warren/model/ReportDBAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class p1, Lcom/vungle/warren/model/Advertisement;

    new-instance v0, Lcom/vungle/warren/model/AdvertisementDBAdapter;

    invoke-direct {v0}, Lcom/vungle/warren/model/AdvertisementDBAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class p1, Lcom/vungle/warren/model/AdAsset;

    new-instance v0, Lcom/vungle/warren/model/AdAssetDBAdapter;

    invoke-direct {v0}, Lcom/vungle/warren/model/AdAssetDBAdapter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
