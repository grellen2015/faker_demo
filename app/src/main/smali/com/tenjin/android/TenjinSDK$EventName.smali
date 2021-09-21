.class Lcom/tenjin/android/TenjinSDK$EventName;
.super Ljava/lang/Object;
.source "TenjinSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenjin/android/TenjinSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventName"
.end annotation


# instance fields
.field private currencyCode:Ljava/lang/String;

.field private dataSignature:Ljava/lang/String;

.field private deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

.field private intValue:I

.field private name:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private purchaseData:Ljava/lang/String;

.field private quantity:I

.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;

.field private type:Ljava/lang/String;

.field private unitPrice:D

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V
    .locals 2

    .line 806
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 794
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 795
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 797
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    .line 798
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 799
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 800
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    const-wide/16 v0, 0x0

    .line 801
    iput-wide v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    .line 802
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    .line 803
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    .line 804
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    const-string p1, "eventName"

    .line 807
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 808
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;I)V
    .locals 2

    .line 817
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 794
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 795
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 797
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    .line 798
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 799
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 800
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    const-wide/16 v0, 0x0

    .line 801
    iput-wide v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    .line 802
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    .line 803
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    .line 804
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    const-string p1, "eventNameIntValue"

    .line 818
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 819
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 820
    iput p3, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    return-void
.end method

.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Lcom/tenjin/android/Callback;)V
    .locals 2

    .line 841
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 794
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 795
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 797
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    .line 798
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 799
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 800
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    const-wide/16 v0, 0x0

    .line 801
    iput-wide v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    .line 802
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    .line 803
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    .line 804
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    .line 842
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 843
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    return-void
.end method

.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 811
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 794
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 795
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 797
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    .line 798
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 799
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 800
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    const-wide/16 v0, 0x0

    .line 801
    iput-wide v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    .line 802
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    .line 803
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    .line 804
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    const-string p1, "eventNameValue"

    .line 812
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 813
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 814
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 2

    .line 823
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 794
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 795
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 797
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    .line 798
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 799
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 800
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    const-wide/16 v0, 0x0

    .line 801
    iput-wide v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    .line 802
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    .line 803
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    .line 804
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    const-string p1, "eventNameTransaction"

    .line 824
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 825
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 826
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 827
    iput p4, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    .line 828
    iput-wide p5, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    return-void
.end method

.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 831
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 794
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 795
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 797
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    .line 798
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 799
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 800
    iput v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    const-wide/16 v0, 0x0

    .line 801
    iput-wide v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    .line 802
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    .line 803
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    .line 804
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    const-string p1, "eventNameTransactionData"

    .line 832
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    .line 833
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    .line 834
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    .line 835
    iput p4, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    .line 836
    iput-wide p5, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    .line 837
    iput-object p7, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    .line 838
    iput-object p8, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2300(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/tenjin/android/TenjinSDK$EventName;)I
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getIntValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getProductId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/tenjin/android/TenjinSDK$EventName;)I
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getQuantity()I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/tenjin/android/TenjinSDK$EventName;)D
    .locals 2

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getUnitPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getPurchaseData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getDataSignature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/tenjin/android/TenjinSDK$EventName;)Lcom/tenjin/android/Callback;
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$EventName;->getDeferredDeeplinkCallback()Lcom/tenjin/android/Callback;

    move-result-object p0

    return-object p0
.end method

.method private getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method private getDataSignature()Ljava/lang/String;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->dataSignature:Ljava/lang/String;

    return-object v0
.end method

.method private getDeferredDeeplinkCallback()Lcom/tenjin/android/Callback;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->deferredDeeplinkCallback:Lcom/tenjin/android/Callback;

    return-object v0
.end method

.method private getIntValue()I
    .locals 1

    .line 859
    iget v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->intValue:I

    return v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->name:Ljava/lang/String;

    return-object v0
.end method

.method private getProductId()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->productId:Ljava/lang/String;

    return-object v0
.end method

.method private getPurchaseData()Ljava/lang/String;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->purchaseData:Ljava/lang/String;

    return-object v0
.end method

.method private getQuantity()I
    .locals 1

    .line 871
    iget v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->quantity:I

    return v0
.end method

.method private getType()Ljava/lang/String;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->type:Ljava/lang/String;

    return-object v0
.end method

.method private getUnitPrice()D
    .locals 2

    .line 875
    iget-wide v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->unitPrice:D

    return-wide v0
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$EventName;->value:Ljava/lang/String;

    return-object v0
.end method
