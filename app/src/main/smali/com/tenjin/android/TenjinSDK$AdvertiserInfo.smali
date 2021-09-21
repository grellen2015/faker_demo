.class Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;
.super Ljava/lang/Object;
.source "TenjinSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenjin/android/TenjinSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdvertiserInfo"
.end annotation


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private limitAdTracking:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/tenjin/android/TenjinSDK;


# direct methods
.method constructor <init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->this$0:Lcom/tenjin/android/TenjinSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput-object p2, p0, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->advertisingId:Ljava/lang/String;

    .line 898
    iput-object p3, p0, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->limitAdTracking:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2000(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/String;
    .locals 0

    .line 892
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 892
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->getLimitAdTracking()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method private getLimitAdTracking()Ljava/lang/Boolean;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->limitAdTracking:Ljava/lang/Boolean;

    return-object v0
.end method
