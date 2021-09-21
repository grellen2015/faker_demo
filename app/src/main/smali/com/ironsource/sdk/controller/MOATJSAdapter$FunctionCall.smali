.class Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;
.super Ljava/lang/Object;
.source "MOATJSAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/MOATJSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionCall"
.end annotation


# instance fields
.field failCallback:Ljava/lang/String;

.field name:Ljava/lang/String;

.field params:Lorg/json/JSONObject;

.field successCallback:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/MOATJSAdapter$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/MOATJSAdapter$FunctionCall;-><init>()V

    return-void
.end method
