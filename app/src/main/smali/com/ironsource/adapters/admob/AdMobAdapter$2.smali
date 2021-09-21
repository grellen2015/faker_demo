.class Lcom/ironsource/adapters/admob/AdMobAdapter$2;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->fetchRewardedVideo(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$config:Lorg/json/JSONObject;

    const-string v2, "adUnitId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$300(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    return-void
.end method
