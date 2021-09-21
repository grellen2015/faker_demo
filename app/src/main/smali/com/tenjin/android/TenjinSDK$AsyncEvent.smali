.class Lcom/tenjin/android/TenjinSDK$AsyncEvent;
.super Landroid/os/AsyncTask;
.source "TenjinSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenjin/android/TenjinSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private currencyCode:Ljava/lang/String;

.field private dataSignature:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private intValue:I

.field private name:Ljava/lang/String;

.field private postURL:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private purchaseData:Ljava/lang/String;

.field private quantity:I

.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;

.field private type:Ljava/lang/String;

.field private unitPrice:D

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V
    .locals 1

    .line 957
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "https://track.tenjin.com/v0/event"

    .line 946
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    const-string v0, "eventName"

    .line 958
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->type:Ljava/lang/String;

    .line 959
    invoke-static {p1, p2}, Lcom/tenjin/android/TenjinSDK;->access$3400(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->eventId:Ljava/lang/String;

    .line 960
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->name:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;I)V
    .locals 1

    .line 970
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "https://track.tenjin.com/v0/event"

    .line 946
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    const-string v0, "eventNameIntValue"

    .line 971
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->type:Ljava/lang/String;

    .line 972
    invoke-static {p1, p2, p3}, Lcom/tenjin/android/TenjinSDK;->access$3600(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->eventId:Ljava/lang/String;

    .line 973
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->name:Ljava/lang/String;

    .line 974
    iput p3, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;ILcom/tenjin/android/TenjinSDK$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1, p2, p3}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Lcom/tenjin/android/TenjinSDK$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 963
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "https://track.tenjin.com/v0/event"

    .line 946
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    const-string v0, "eventNameValue"

    .line 964
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->type:Ljava/lang/String;

    .line 965
    invoke-static {p1, p2, p3}, Lcom/tenjin/android/TenjinSDK;->access$3500(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->eventId:Ljava/lang/String;

    .line 966
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->name:Ljava/lang/String;

    .line 967
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->value:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 1

    .line 977
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "https://track.tenjin.com/v0/event"

    .line 946
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    const-string v0, "eventNameTransaction"

    .line 978
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->type:Ljava/lang/String;

    .line 979
    invoke-static/range {p1 .. p6}, Lcom/tenjin/android/TenjinSDK;->access$3700(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;ID)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->eventId:Ljava/lang/String;

    const-string p1, "https://track.tenjin.com/v0/purchase"

    .line 980
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    .line 981
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->productId:Ljava/lang/String;

    .line 982
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->currencyCode:Ljava/lang/String;

    .line 983
    iput p4, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->quantity:I

    .line 984
    iput-wide p5, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->unitPrice:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLcom/tenjin/android/TenjinSDK$1;)V
    .locals 0

    .line 943
    invoke-direct/range {p0 .. p6}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;ID)V

    return-void
.end method

.method private constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 987
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "https://track.tenjin.com/v0/event"

    .line 946
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    const-string v0, "eventNameTransactionData"

    .line 988
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->type:Ljava/lang/String;

    .line 989
    invoke-static/range {p1 .. p8}, Lcom/tenjin/android/TenjinSDK;->access$3800(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->eventId:Ljava/lang/String;

    const-string p1, "https://track.tenjin.com/v0/purchase"

    .line 990
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    .line 991
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->productId:Ljava/lang/String;

    .line 992
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->currencyCode:Ljava/lang/String;

    .line 993
    iput p4, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->quantity:I

    .line 994
    iput-wide p5, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->unitPrice:D

    .line 995
    iput-object p7, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->purchaseData:Ljava/lang/String;

    .line 996
    iput-object p8, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->dataSignature:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;Lcom/tenjin/android/TenjinSDK$1;)V
    .locals 0

    .line 943
    invoke-direct/range {p0 .. p8}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;Lcom/tenjin/android/TenjinSDK$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1, p2, p3}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)I
    .locals 0

    .line 943
    iget p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    return p0
.end method

.method static synthetic access$5700(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->productId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->currencyCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)I
    .locals 0

    .line 943
    iget p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->quantity:I

    return p0
.end method

.method static synthetic access$6000(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)D
    .locals 2

    .line 943
    iget-wide v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->unitPrice:D

    return-wide v0
.end method

.method static synthetic access$6100(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->purchaseData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->dataSignature:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 1002
    :try_start_0
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->name:Ljava/lang/String;

    .line 1003
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, ""

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK;->access$3900(Lcom/tenjin/android/TenjinSDK;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "event"

    .line 1008
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->value:Ljava/lang/String;

    if-nez p1, :cond_1

    iget p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    if-eqz p1, :cond_1

    const-string p1, "value"

    .line 1010
    iget v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->intValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_1
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->value:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "value"

    .line 1013
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->value:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_2
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    const-string v1, "https://track.tenjin.com/v0/purchase"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "currency"

    .line 1016
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->currencyCode:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "product_id"

    .line 1017
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->productId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "quantity"

    .line 1018
    iget v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->quantity:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "price"

    .line 1019
    iget-wide v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->unitPrice:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->dataSignature:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "signature"

    .line 1021
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->dataSignature:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    :cond_3
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->purchaseData:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p1, "receipt"

    .line 1024
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->purchaseData:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p1, "Authorization"

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK;->access$500(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1031
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    new-instance p1, Lcom/tenjin/android/HttpConnection;

    invoke-direct {p1}, Lcom/tenjin/android/HttpConnection;-><init>()V

    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->postURL:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/tenjin/android/HttpConnection;->connect(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    .line 1034
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p1

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    const/4 p1, 0x0

    .line 1041
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 943
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1047
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->eventId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$4000(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Z

    .line 1048
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->eventId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tenjin/android/TenjinSDK;->access$4100(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Z

    goto :goto_0

    .line 1050
    :cond_0
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-static {p1, p0}, Lcom/tenjin/android/TenjinSDK;->access$4200(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Z

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 943
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
