.class public Lcom/tenjin/android/TenjinSDK;
.super Ljava/lang/Object;
.source "TenjinSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenjin/android/TenjinSDK$GoogleInstallReferrer;,
        Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;,
        Lcom/tenjin/android/TenjinSDK$AsyncEvent;,
        Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;,
        Lcom/tenjin/android/TenjinSDK$EventName;,
        Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;,
        Lcom/tenjin/android/TenjinSDK$AsyncConnect;
    }
.end annotation


# static fields
.field private static CONNECT_THRESHOLD:J = 0x0L

.field public static final CONTAINS_REFERRER:Ljava/lang/String; = "containsReferrerKey"

.field private static final CUR_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUR_VALUES:[Ljava/lang/String;

.field public static final DEEPLINK_URL:Ljava/lang/String; = "deferred_deeplink_url"

.field private static final EVENT_GET_DEEP_LINK:Ljava/lang/String; = "eventGetDeeplink"

.field private static final EVENT_NAME:Ljava/lang/String; = "eventName"

.field private static final EVENT_NAME_INT_VALUE:Ljava/lang/String; = "eventNameIntValue"

.field private static final EVENT_NAME_TRANSACTION:Ljava/lang/String; = "eventNameTransaction"

.field private static final EVENT_NAME_TRANSACTION_DATA:Ljava/lang/String; = "eventNameTransactionData"

.field private static final EVENT_NAME_VALUE:Ljava/lang/String; = "eventNameValue"

.field private static EVENT_THRESHOLD:J = 0x0L

.field public static final FIRST_LAUNCH_KEY:Ljava/lang/String; = "tenjinFirstLaunchKey"

.field public static final GOOGLE_INSTALL_CONTAINS_REFERRER:Ljava/lang/String; = "tenjinGoogleInstallContainsReferrerKey"

.field public static final GOOGLE_INSTALL_REFERRAL_CLICK_TS:Ljava/lang/String; = "tenjinGoogleInstallReferrerClickTs"

.field public static final GOOGLE_INSTALL_REFERRAL_INSTALL_TS:Ljava/lang/String; = "tenjinGoogleInstallReferrerInstallTs"

.field public static final GOOGLE_INSTALL_REFERRAL_KEY:Ljava/lang/String; = "tenjinGoogleInstallReferrer"

.field public static final GOOGLE_INSTALL_REFERRAL_SENT_KEY:Ljava/lang/String; = "tenjinGoogleInstallReferrerSent"

.field public static final INSTALL_PREFERENCE:Ljava/lang/String; = "tenjinInstallPreferences"

.field public static final REFERRAL_KEY:Ljava/lang/String; = "tenjinInstallReferrer"

.field public static final REFERRAL_SENT_KEY:Ljava/lang/String; = "tenjinInstallReferrerSent"

.field private static final TAG:Ljava/lang/String; = "TenjinSDK"

.field public static final TENJIN_REFERENCE_ID:Ljava/lang/String; = "tenjinReferenceId"

.field private static final advertiserIdReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final broadCastReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final connectReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final deepLinkSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final googleInstallReferrerError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final googleInstallReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final googleInstallReferrerRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final googleInstallReferrerSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final purchaseURL:Ljava/lang/String; = "https://track.tenjin.com/v0/purchase"

.field private static final sdkVersion:Ljava/lang/String; = "1.9.2"

.field private static tenjinSDK:Lcom/tenjin/android/TenjinSDK; = null

.field private static final url:Ljava/lang/String; = "https://track.tenjin.com/v0/event"

.field private static final userUrl:Ljava/lang/String; = "https://track.tenjin.com/v0/user"


# instance fields
.field private advertiserIdParam:Ljava/lang/String;

.field private advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

.field private apiKey:Ljava/lang/String;

.field private appSubversion:Ljava/lang/Integer;

.field private callback:Lcom/tenjin/android/Callback;

.field private clickedTenjinLink:Z

.field private final connectReadyObject:Ljava/lang/Object;

.field private connectTask:Landroid/os/AsyncTask;

.field private context:Landroid/content/Context;

.field private deferredDeeplink:Ljava/lang/String;

.field private eventProcessingQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private eventQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private googleInstallReferrerCallbackTime:J

.field private googleInstallReferrerClickTime:Ljava/lang/Long;

.field private googleInstallReferrerInstallTime:Ljava/lang/Long;

.field private googleInstallReferrerParam:Ljava/lang/String;

.field private hasGooglePlayServices:Z

.field private limitAdTrackingParam:Ljava/lang/String;

.field private onReferrerListener:Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;

.field private optIn:Z

.field private optInParameters:[Ljava/lang/String;

.field private optOut:Z

.field private optOutParameters:[Ljava/lang/String;

.field private referrerCallbackTime:J

.field private result:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;

.field private sharedSecret:Ljava/lang/String;

.field private startTime:J

.field private tenjinParams:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 163

    const-string v0, "AED"

    const-string v1, "AFN"

    const-string v2, "ALL"

    const-string v3, "AMD"

    const-string v4, "ANG"

    const-string v5, "AOA"

    const-string v6, "ARS"

    const-string v7, "AUD"

    const-string v8, "AWG"

    const-string v9, "AZN"

    const-string v10, "BAM"

    const-string v11, "BBD"

    const-string v12, "BDT"

    const-string v13, "BGN"

    const-string v14, "BHD"

    const-string v15, "BIF"

    const-string v16, "BMD"

    const-string v17, "BND"

    const-string v18, "BOB"

    const-string v19, "BRL"

    const-string v20, "BSD"

    const-string v21, "BTN"

    const-string v22, "BWP"

    const-string v23, "BYR"

    const-string v24, "BZD"

    const-string v25, "CAD"

    const-string v26, "CDF"

    const-string v27, "CHF"

    const-string v28, "CLP"

    const-string v29, "CNY"

    const-string v30, "COP"

    const-string v31, "CRC"

    const-string v32, "CUC"

    const-string v33, "CUP"

    const-string v34, "CVE"

    const-string v35, "CZK"

    const-string v36, "DJF"

    const-string v37, "DKK"

    const-string v38, "DOP"

    const-string v39, "DZD"

    const-string v40, "EGP"

    const-string v41, "ERN"

    const-string v42, "ETB"

    const-string v43, "EUR"

    const-string v44, "FJD"

    const-string v45, "FKP"

    const-string v46, "GBP"

    const-string v47, "GEL"

    const-string v48, "GGP"

    const-string v49, "GHS"

    const-string v50, "GIP"

    const-string v51, "GMD"

    const-string v52, "GNF"

    const-string v53, "GTQ"

    const-string v54, "GYD"

    const-string v55, "HKD"

    const-string v56, "HNL"

    const-string v57, "HRK"

    const-string v58, "HTG"

    const-string v59, "HUF"

    const-string v60, "IDR"

    const-string v61, "ILS"

    const-string v62, "IMP"

    const-string v63, "INR"

    const-string v64, "IQD"

    const-string v65, "IRR"

    const-string v66, "ISK"

    const-string v67, "JEP"

    const-string v68, "JMD"

    const-string v69, "JOD"

    const-string v70, "JPY"

    const-string v71, "KES"

    const-string v72, "KGS"

    const-string v73, "KHR"

    const-string v74, "KMF"

    const-string v75, "KPW"

    const-string v76, "KRW"

    const-string v77, "KWD"

    const-string v78, "KYD"

    const-string v79, "KZT"

    const-string v80, "LAK"

    const-string v81, "LBP"

    const-string v82, "LKR"

    const-string v83, "LRD"

    const-string v84, "LSL"

    const-string v85, "LTL"

    const-string v86, "LYD"

    const-string v87, "MAD"

    const-string v88, "MDL"

    const-string v89, "MGA"

    const-string v90, "MKD"

    const-string v91, "MMK"

    const-string v92, "MNT"

    const-string v93, "MOP"

    const-string v94, "MRO"

    const-string v95, "MUR"

    const-string v96, "MVR"

    const-string v97, "MWK"

    const-string v98, "MXN"

    const-string v99, "MYR"

    const-string v100, "MZN"

    const-string v101, "NAD"

    const-string v102, "NGN"

    const-string v103, "NIO"

    const-string v104, "NOK"

    const-string v105, "NPR"

    const-string v106, "NZD"

    const-string v107, "OMR"

    const-string v108, "PAB"

    const-string v109, "PEN"

    const-string v110, "PGK"

    const-string v111, "PHP"

    const-string v112, "PKR"

    const-string v113, "PLN"

    const-string v114, "PYG"

    const-string v115, "QAR"

    const-string v116, "RON"

    const-string v117, "RSD"

    const-string v118, "RUB"

    const-string v119, "RWF"

    const-string v120, "SAR"

    const-string v121, "SBD"

    const-string v122, "SCR"

    const-string v123, "SDG"

    const-string v124, "SEK"

    const-string v125, "SGD"

    const-string v126, "SHP"

    const-string v127, "SLL"

    const-string v128, "SOS"

    const-string v129, "SPL"

    const-string v130, "SRD"

    const-string v131, "STD"

    const-string v132, "SVC"

    const-string v133, "SYP"

    const-string v134, "SZL"

    const-string v135, "THB"

    const-string v136, "TJS"

    const-string v137, "TMT"

    const-string v138, "TND"

    const-string v139, "TOP"

    const-string v140, "TRY"

    const-string v141, "TTD"

    const-string v142, "TVD"

    const-string v143, "TWD"

    const-string v144, "TZS"

    const-string v145, "UAH"

    const-string v146, "UGX"

    const-string v147, "USD"

    const-string v148, "UYU"

    const-string v149, "UZS"

    const-string v150, "VEF"

    const-string v151, "VND"

    const-string v152, "VUV"

    const-string v153, "WST"

    const-string v154, "XAF"

    const-string v155, "XCD"

    const-string v156, "XDR"

    const-string v157, "XOF"

    const-string v158, "XPF"

    const-string v159, "YER"

    const-string v160, "ZAR"

    const-string v161, "ZMW"

    const-string v162, "ZWD"

    .line 91
    filled-new-array/range {v0 .. v162}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->CUR_VALUES:[Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/tenjin/android/TenjinSDK;->CUR_VALUES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->CUR_SET:Ljava/util/Set;

    const-wide/16 v0, 0x7530

    .line 114
    sput-wide v0, Lcom/tenjin/android/TenjinSDK;->CONNECT_THRESHOLD:J

    const-wide/16 v0, 0x3e8

    .line 115
    sput-wide v0, Lcom/tenjin/android/TenjinSDK;->EVENT_THRESHOLD:J

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->deepLinkSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->connectReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->advertiserIdReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->broadCastReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 22

    move-object/from16 v0, p0

    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, v0, Lcom/tenjin/android/TenjinSDK;->optOut:Z

    .line 53
    iput-boolean v1, v0, Lcom/tenjin/android/TenjinSDK;->optIn:Z

    const-string v2, "app_version"

    const-string v3, "app_subversion"

    const-string v4, "bundle_id"

    const-string v5, "opt_in"

    const-string v6, "opt_out"

    const-string v7, "platform"

    const-string v8, "sdk_version"

    const-string v9, "sent_at"

    const-string v10, "session_id"

    const-string v11, "tenjin_reference_id"

    const-string v12, "product_id"

    const-string v13, "currency"

    const-string v14, "quantity"

    const-string v15, "price"

    const-string v16, "transaction_id"

    const-string v17, "receipt"

    const-string v18, "signature"

    const-string v19, "sent_at"

    const-string v20, "event"

    const-string v21, "value"

    .line 58
    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tenjin/android/TenjinSDK;->tenjinParams:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 89
    iput-object v2, v0, Lcom/tenjin/android/TenjinSDK;->deferredDeeplink:Ljava/lang/String;

    .line 119
    iput-boolean v1, v0, Lcom/tenjin/android/TenjinSDK;->clickedTenjinLink:Z

    .line 120
    iput-boolean v1, v0, Lcom/tenjin/android/TenjinSDK;->hasGooglePlayServices:Z

    const-wide/16 v3, 0x0

    .line 121
    iput-wide v3, v0, Lcom/tenjin/android/TenjinSDK;->startTime:J

    .line 122
    iput-wide v3, v0, Lcom/tenjin/android/TenjinSDK;->referrerCallbackTime:J

    .line 123
    iput-wide v3, v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerCallbackTime:J

    .line 140
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->eventProcessingQueue:Ljava/util/Map;

    .line 141
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->result:Ljava/util/Map;

    .line 144
    iput-object v2, v0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    move-object/from16 v1, p2

    .line 213
    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->apiKey:Ljava/lang/String;

    move-object/from16 v1, p3

    .line 214
    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->sharedSecret:Ljava/lang/String;

    move-object/from16 v1, p4

    .line 215
    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->appSubversion:Ljava/lang/Integer;

    .line 216
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tenjin/android/TenjinSDK;->startTime:J

    .line 217
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    .line 218
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->sessionId:Ljava/lang/String;

    .line 221
    new-instance v1, Lcom/tenjin/android/TenjinSDK$1;

    invoke-direct {v1, v0}, Lcom/tenjin/android/TenjinSDK$1;-><init>(Lcom/tenjin/android/TenjinSDK;)V

    iput-object v1, v0, Lcom/tenjin/android/TenjinSDK;->onReferrerListener:Lcom/tenjin/android/ReferrerUpdater$OnReferrerListener;

    return-void
.end method

.method static synthetic access$002(Lcom/tenjin/android/TenjinSDK;J)J
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/tenjin/android/TenjinSDK;->referrerCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 48
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->broadCastReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tenjin/android/TenjinSDK;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 48
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/tenjin/android/TenjinSDK;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/tenjin/android/TenjinSDK;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->processQueue()V

    return-void
.end method

.method static synthetic access$1400(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/tenjin/android/TenjinSDK;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tenjin/android/TenjinSDK;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/tenjin/android/TenjinSDK;->hasGooglePlayServices:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/tenjin/android/TenjinSDK;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/tenjin/android/TenjinSDK;->hasGooglePlayServices:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->getPlatform()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1702(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/tenjin/android/TenjinSDK;)Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->notifyConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 48
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->advertiserIdReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;ID)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;ID)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p7}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/tenjin/android/TenjinSDK;)Ljava/util/Map;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->getParams()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->removeEventQueue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;Ljava/lang/String;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/tenjin/android/TenjinSDK;->sendResultToCallback(Lcom/tenjin/android/Callback;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4902(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;)Lcom/tenjin/android/Callback;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->callback:Lcom/tenjin/android/Callback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Lcom/tenjin/android/Callback;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Lcom/tenjin/android/Callback;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/tenjin/android/TenjinSDK;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/tenjin/android/TenjinSDK;->clickedTenjinLink:Z

    return p0
.end method

.method static synthetic access$5200(Lcom/tenjin/android/TenjinSDK;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->result:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tenjin/android/TenjinSDK;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->isReadyToConnect()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 48
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerParam:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerParam:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/Long;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerClickTime:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$6502(Lcom/tenjin/android/TenjinSDK;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerClickTime:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/Long;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerInstallTime:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$6602(Lcom/tenjin/android/TenjinSDK;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerInstallTime:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$6700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 48
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 48
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/tenjin/android/TenjinSDK;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    return-object p0
.end method

.method private addEventQueue(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Z
    .locals 9

    .line 1443
    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5300(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventName"

    .line 1444
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1445
    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5400(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string v1, "eventNameValue"

    .line 1446
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1447
    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5400(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5500(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string v1, "eventNameIntValue"

    .line 1448
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1449
    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5400(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5600(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_2
    const-string v1, "eventNameTransaction"

    .line 1450
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1451
    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5700(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5800(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5900(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)I

    move-result v5

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$6000(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)D

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;ID)Z

    move-result p1

    return p1

    :cond_3
    const-string v1, "eventNameTransactionData"

    .line 1452
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1453
    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5700(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5800(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$5900(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)I

    move-result v4

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$6000(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)D

    move-result-wide v5

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$6100(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->access$6200(Lcom/tenjin/android/TenjinSDK$AsyncEvent;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private addEventQueue(Ljava/lang/String;)Z
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    monitor-enter v0

    .line 1367
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1368
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 1369
    monitor-exit v0

    return p1

    .line 1371
    :cond_0
    new-instance v2, Lcom/tenjin/android/TenjinSDK$EventName;

    invoke-direct {v2, p0, p1}, Lcom/tenjin/android/TenjinSDK$EventName;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;)V

    .line 1372
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1373
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addEventQueue(Ljava/lang/String;I)Z
    .locals 3

    .line 1392
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    monitor-enter v0

    .line 1393
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1394
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 1395
    monitor-exit v0

    return p1

    .line 1397
    :cond_0
    new-instance v2, Lcom/tenjin/android/TenjinSDK$EventName;

    invoke-direct {v2, p0, p1, p2}, Lcom/tenjin/android/TenjinSDK$EventName;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;I)V

    .line 1398
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1399
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1401
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addEventQueue(Ljava/lang/String;Lcom/tenjin/android/Callback;)Z
    .locals 2

    .line 1431
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    monitor-enter v0

    .line 1432
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 1433
    monitor-exit v0

    return p1

    .line 1435
    :cond_0
    new-instance v1, Lcom/tenjin/android/TenjinSDK$EventName;

    invoke-direct {v1, p0, p1, p2}, Lcom/tenjin/android/TenjinSDK$EventName;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Lcom/tenjin/android/Callback;)V

    .line 1436
    iget-object p2, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1437
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addEventQueue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    monitor-enter v0

    .line 1380
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 1382
    monitor-exit v0

    return p1

    .line 1384
    :cond_0
    new-instance v2, Lcom/tenjin/android/TenjinSDK$EventName;

    invoke-direct {v2, p0, p1, p2}, Lcom/tenjin/android/TenjinSDK$EventName;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1386
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1388
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addEventQueue(Ljava/lang/String;Ljava/lang/String;ID)Z
    .locals 10

    .line 1405
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    monitor-enter v0

    .line 1406
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;ID)Ljava/lang/String;

    move-result-object v1

    .line 1407
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 1408
    monitor-exit v0

    return p1

    .line 1410
    :cond_0
    new-instance v9, Lcom/tenjin/android/TenjinSDK$EventName;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/tenjin/android/TenjinSDK$EventName;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;ID)V

    .line 1411
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {p1, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1412
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addEventQueue(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Z
    .locals 13

    move-object v10, p0

    .line 1418
    iget-object v11, v10, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    monitor-enter v11

    .line 1419
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    iget-object v1, v10, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1421
    monitor-exit v11

    return v0

    .line 1423
    :cond_0
    new-instance v12, Lcom/tenjin/android/TenjinSDK$EventName;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/tenjin/android/TenjinSDK$EventName;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v1, v10, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v1, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1425
    monitor-exit v11

    return v0

    :catchall_0
    move-exception v0

    .line 1427
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private eventIsProcessing(Ljava/lang/String;)Z
    .locals 6

    .line 1478
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventProcessingQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1479
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1480
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventProcessingQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v0, "connect"

    .line 1482
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v4, Lcom/tenjin/android/TenjinSDK;->CONNECT_THRESHOLD:J

    goto :goto_0

    :cond_0
    sget-wide v4, Lcom/tenjin/android/TenjinSDK;->EVENT_THRESHOLD:J

    :goto_0
    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1484
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1490
    :cond_2
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->queueProcessingEvent(Ljava/lang/String;)Z

    return v1
.end method

.method private fetchAdvertisingInfo()Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    .line 702
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 704
    :try_start_0
    iget-object v3, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tenjin/android/TenjinSDK;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 706
    iput-boolean v4, p0, Lcom/tenjin/android/TenjinSDK;->hasGooglePlayServices:Z

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->getPlatform()Ljava/lang/String;

    move-result-object v5

    const-string v6, "amazon"

    .line 710
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/tenjin/android/TenjinSDK;->hasGooglePlayServices:Z

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_5

    .line 726
    iput-boolean v4, p0, Lcom/tenjin/android/TenjinSDK;->hasGooglePlayServices:Z

    const-string v4, "getId"

    .line 727
    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "isLimitAdTrackingEnabled"

    .line 728
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v6, v1}, Lcom/tenjin/android/Reflection;->runInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    move-object v0, v4

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v0, v4

    goto :goto_2

    .line 711
    :cond_2
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "limit_ad_tracking"

    const/4 v6, 0x2

    .line 712
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    const-string v4, "advertising_id"

    .line 714
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 715
    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, v3

    goto :goto_2

    :cond_3
    if-ne v5, v6, :cond_4

    .line 717
    :try_start_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 720
    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 731
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 733
    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    .line 734
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    .line 735
    new-instance v1, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    invoke-direct {v1, p0, v0, v2}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    .line 736
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    return-object v0
.end method

.method private fetchGoogleInstallReferrer()V
    .locals 2

    .line 1534
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tenjin/android/TenjinSDK$3;

    invoke-direct {v1, p0}, Lcom/tenjin/android/TenjinSDK$3;-><init>(Lcom/tenjin/android/TenjinSDK;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1547
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getAdvertisingId()Ljava/lang/String;
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    return-object v0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2000(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2200(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    .line 750
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    return-object v0

    .line 752
    :cond_1
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->fetchAdvertisingInfo()Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 754
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    .line 755
    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2000(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    .line 756
    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2200(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    return-object v0
.end method

.method private static getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    .line 740
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/tenjin/android/Reflection;->runStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getCarrierName()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 605
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method private getConnectivity()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v1, "wifi"

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 620
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mobile"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method private getEventKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private getEventKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEventKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEventKey(Ljava/lang/String;Ljava/lang/String;ID)Ljava/lang/String;
    .locals 1

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEventKey(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1358
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tenjin/android/TenjinSDK;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Lcom/tenjin/android/TenjinSDK;

    invoke-direct {v1, p0, p1, v0, v0}, Lcom/tenjin/android/TenjinSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    .line 154
    :cond_1
    sget-object p0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstanceWithAppSubversion(Landroid/content/Context;Ljava/lang/String;I)Lcom/tenjin/android/TenjinSDK;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    if-nez v1, :cond_1

    .line 183
    new-instance v1, Lcom/tenjin/android/TenjinSDK;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/tenjin/android/TenjinSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    .line 186
    :cond_1
    sget-object p0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstanceWithAppSubversion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Lcom/tenjin/android/TenjinSDK;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    if-nez v1, :cond_1

    .line 172
    new-instance v1, Lcom/tenjin/android/TenjinSDK;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/tenjin/android/TenjinSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    .line 175
    :cond_1
    sget-object p0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstanceWithSharedSecret(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tenjin/android/TenjinSDK;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    if-nez v1, :cond_1

    .line 162
    new-instance v1, Lcom/tenjin/android/TenjinSDK;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/tenjin/android/TenjinSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v1, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    .line 164
    :cond_1
    sget-object p0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstanceWithSharedSecretAppSubversion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/tenjin/android/TenjinSDK;
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Lcom/tenjin/android/TenjinSDK;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/tenjin/android/TenjinSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    .line 208
    :cond_1
    sget-object p0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstanceWithSharedSecretAppSubversion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/tenjin/android/TenjinSDK;
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Lcom/tenjin/android/TenjinSDK;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tenjin/android/TenjinSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    .line 197
    :cond_1
    sget-object p0, Lcom/tenjin/android/TenjinSDK;->tenjinSDK:Lcom/tenjin/android/TenjinSDK;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLimitAdTracking()Ljava/lang/String;
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    return-object v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2000(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2200(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    return-object v0

    .line 772
    :cond_1
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->fetchAdvertisingInfo()Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 774
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->advertiserInfo:Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;

    .line 775
    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2000(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    .line 776
    invoke-static {v0}, Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;->access$2200(Lcom/tenjin/android/TenjinSDK$AdvertiserInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->limitAdTrackingParam:Ljava/lang/String;

    return-object v0
.end method

.method private getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 420
    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 424
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 427
    :try_start_0
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    const-string v3, "tenjinInstallPreferences"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "tenjinInstallReferrer"

    const/4 v5, 0x0

    .line 428
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/tenjin/android/TenjinSDK;->getTenjinReferenceID()Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/tenjin/android/TenjinSDK;->getLimitAdTracking()Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/tenjin/android/TenjinSDK;->getAdvertisingId()Ljava/lang/String;

    move-result-object v7

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/tenjin/android/TenjinSDK;->getPlatform()Ljava/lang/String;

    move-result-object v8

    .line 433
    iget-object v9, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 434
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/tenjin/android/TenjinSDK;->getCarrierName()Ljava/lang/String;

    move-result-object v11

    .line 436
    invoke-static {}, Lcom/tenjin/android/TenjinSDK;->isEmulator()Z

    move-result v12

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/tenjin/android/TenjinSDK;->getConnectivity()Ljava/lang/String;

    move-result-object v13

    if-eqz v7, :cond_1f

    const-string v14, ""

    .line 439
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f

    const-string v14, "bundle_id"

    .line 440
    invoke-interface {v2, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "advertising_id"

    .line 441
    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "platform"

    .line 442
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "limit_ad_tracking"

    .line 443
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "os_version"

    .line 444
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_version"

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sdk_version"

    const-string v7, "1.9.2"

    .line 446
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "device"

    .line 447
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "timezone"

    .line 448
    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "tenjin_reference_id"

    .line 449
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "session_id"

    .line 450
    iget-object v6, v1, Lcom/tenjin/android/TenjinSDK;->sessionId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "device_manufacturer"

    .line 451
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "device_model"

    .line 452
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "device_brand"

    .line 453
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "device_product"

    .line 454
    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sent_at"

    .line 455
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v5, v1, Lcom/tenjin/android/TenjinSDK;->appSubversion:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/tenjin/android/TenjinSDK;->appSubversion:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "app_subversion"

    .line 457
    iget-object v6, v1, Lcom/tenjin/android/TenjinSDK;->appSubversion:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v12, :cond_1

    const-string v5, "device_info"

    .line 460
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_1
    iget-object v5, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerParam:Ljava/lang/String;

    const-wide v6, 0x408f400000000000L    # 1000.0

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_4

    const-string v5, "tenjinGoogleInstallReferrerSent"

    .line 463
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 464
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "referrer"

    .line 465
    iget-object v10, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerParam:Ljava/lang/String;

    invoke-interface {v2, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v5, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerClickTime:Ljava/lang/Long;

    if-eqz v5, :cond_2

    const-string v5, "referrer_click_ts"

    .line 467
    iget-object v10, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerClickTime:Ljava/lang/Long;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_2
    iget-object v5, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerInstallTime:Ljava/lang/Long;

    if-eqz v5, :cond_3

    const-string v5, "referrer_install_ts"

    .line 470
    iget-object v10, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerInstallTime:Ljava/lang/Long;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_3
    iget-wide v14, v1, Lcom/tenjin/android/TenjinSDK;->startTime:J

    cmp-long v5, v14, v8

    if-eqz v5, :cond_4

    iget-wide v14, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerCallbackTime:J

    cmp-long v5, v14, v8

    if-eqz v5, :cond_4

    const-string v5, "referrer_load_time"

    .line 473
    new-instance v10, Ljava/text/DecimalFormat;

    const-string v12, "0.00"

    invoke-direct {v10, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerCallbackTime:J

    iget-wide v8, v1, Lcom/tenjin/android/TenjinSDK;->startTime:J

    const/4 v12, 0x0

    sub-long/2addr v14, v8

    long-to-double v8, v14

    div-double/2addr v8, v6

    invoke-virtual {v10, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v3, :cond_6

    const-string v5, "tenjinInstallReferrerSent"

    .line 478
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 480
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerParam:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "broadcast_referrer"

    .line 481
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v0, "referrer"

    .line 483
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :goto_0
    iget-wide v8, v1, Lcom/tenjin/android/TenjinSDK;->startTime:J

    const-wide/16 v14, 0x0

    cmp-long v0, v8, v14

    if-eqz v0, :cond_6

    iget-wide v8, v1, Lcom/tenjin/android/TenjinSDK;->referrerCallbackTime:J

    cmp-long v0, v8, v14

    if-eqz v0, :cond_6

    const-string v0, "broadcast_referrer_load_time"

    .line 486
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v8, v1, Lcom/tenjin/android/TenjinSDK;->referrerCallbackTime:J

    iget-wide v14, v1, Lcom/tenjin/android/TenjinSDK;->startTime:J

    const/4 v5, 0x0

    sub-long/2addr v8, v14

    long-to-double v8, v8

    div-double/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_6
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->deferredDeeplink:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 492
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->deferredDeeplink:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    .line 493
    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    .line 494
    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 496
    iget-object v6, v1, Lcom/tenjin/android/TenjinSDK;->deferredDeeplink:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    :try_start_1
    iget-object v7, v1, Lcom/tenjin/android/TenjinSDK;->deferredDeeplink:Ljava/lang/String;

    if-ne v7, v0, :cond_7

    const-string v3, "UTF-8"

    .line 500
    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_7
    if-ne v0, v3, :cond_8

    const-string v0, "UTF-8"

    .line 503
    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    if-ne v3, v5, :cond_9

    const-string v0, "UTF-8"

    .line 506
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 508
    :cond_9
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->deferredDeeplink:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :goto_2
    :try_start_2
    const-string v0, "deeplink_url"

    .line 512
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "carrier"

    .line 514
    invoke-interface {v2, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connection_type"

    .line 515
    invoke-interface {v2, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_width"

    .line 516
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_height"

    .line 517
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language"

    .line 518
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "country"

    .line 519
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os_version_release"

    .line 520
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "build_id"

    .line 521
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "locale"

    .line 522
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-boolean v0, v1, Lcom/tenjin/android/TenjinSDK;->optIn:Z

    if-eqz v0, :cond_b

    const-string v0, "opt_in"

    .line 524
    iget-boolean v3, v1, Lcom/tenjin/android/TenjinSDK;->optIn:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 525
    :cond_b
    iget-boolean v0, v1, Lcom/tenjin/android/TenjinSDK;->optOut:Z

    if-eqz v0, :cond_11

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->tenjinParams:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_d

    aget-object v7, v3, v6

    .line 528
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 529
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_d
    const-string v7, "referrer"

    const-string v8, "referrer_click_ts"

    const-string v9, "referrer_install_ts"

    const-string v10, "referrer_load_time"

    const-string v11, "broadcast_referrer"

    const-string v12, "broadcast_referrer_load_time"

    .line 532
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 533
    array-length v5, v3

    :goto_4
    if-ge v4, v5, :cond_f

    aget-object v6, v3, v4

    .line 534
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 535
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 538
    :cond_f
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->sharedSecret:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 539
    invoke-direct {v1, v0}, Lcom/tenjin/android/TenjinSDK;->getSignature(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signature"

    .line 540
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v3, "opt_out"

    .line 542
    iget-boolean v4, v1, Lcom/tenjin/android/TenjinSDK;->optOut:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 545
    :cond_11
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->optInParameters:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->optInParameters:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1b

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 547
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->optInParameters:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_17

    aget-object v7, v3, v6

    const-string v8, "referrer"

    .line 548
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v9, "referrer"

    const-string v10, "referrer_click_ts"

    const-string v11, "referrer_install_ts"

    const-string v12, "referrer_load_time"

    const-string v13, "broadcast_referrer"

    const-string v14, "broadcast_referrer_load_time"

    .line 549
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v7

    .line 550
    array-length v8, v7

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_16

    aget-object v10, v7, v9

    .line 551
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 552
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_13
    const-string v8, "device_all"

    .line 555
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v9, "device"

    const-string v10, "build_id"

    const-string v11, "device_info"

    const-string v12, "screen_width"

    const-string v13, "screen_height"

    const-string v14, "device_model"

    const-string v15, "screen_width"

    const-string v16, "screen_height"

    const-string v17, "device_manufacturer"

    const-string v18, "device_model"

    const-string v19, "device_brand"

    const-string v20, "device_product"

    .line 556
    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v7

    .line 557
    array-length v8, v7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_16

    aget-object v10, v7, v9

    .line 558
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 559
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 562
    :cond_15
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 563
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 566
    :cond_17
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->tenjinParams:[Ljava/lang/String;

    array-length v5, v3

    :goto_8
    if-ge v4, v5, :cond_19

    aget-object v6, v3, v4

    .line 567
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 568
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 571
    :cond_19
    iget-object v3, v1, Lcom/tenjin/android/TenjinSDK;->sharedSecret:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 572
    invoke-direct {v1, v0}, Lcom/tenjin/android/TenjinSDK;->getSignature(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signature"

    .line 573
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v3, "opt_in_params"

    const-string v4, ","

    .line 575
    iget-object v5, v1, Lcom/tenjin/android/TenjinSDK;->optInParameters:[Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 577
    :cond_1b
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->optOutParameters:[Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->optOutParameters:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1e

    .line 578
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->optOutParameters:[Ljava/lang/String;

    array-length v3, v0

    :goto_9
    if-ge v4, v3, :cond_1d

    aget-object v5, v0, v4

    .line 579
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 580
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1d
    const-string v0, "opt_out_params"

    const-string v3, ","

    .line 583
    iget-object v4, v1, Lcom/tenjin/android/TenjinSDK;->optOutParameters:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_1e
    :goto_a
    iget-object v0, v1, Lcom/tenjin/android/TenjinSDK;->sharedSecret:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 586
    invoke-direct {v1, v2}, Lcom/tenjin/android/TenjinSDK;->getSignature(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "signature"

    .line 587
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_b
    return-object v2
.end method

.method private getPlatform()Ljava/lang/String;
    .locals 2

    const-string v0, "Amazon"

    .line 635
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "amazon"

    goto :goto_0

    :cond_0
    const-string v0, "android"

    :goto_0
    return-object v0
.end method

.method private getSignature(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bundle_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "platform"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "session_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tenjin_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdk_version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sent_at"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "HmacSHA256"

    .line 1520
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1521
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/tenjin/android/TenjinSDK;->sharedSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacSHA256"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1522
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1524
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1528
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1526
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private getTenjinReferenceID()Ljava/lang/String;
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    const-string v1, "tenjinInstallPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tenjinReferenceId"

    const/4 v2, 0x0

    .line 399
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 401
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "tenjinReferenceId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object v1
.end method

.method private hasAnyReferrer()Z
    .locals 1

    .line 390
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->hasBroadCastReferrer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->hasGoogleReferrer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasBroadCastReferrer()Z
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    const-string v1, "tenjinInstallPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "containsReferrerKey"

    .line 379
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hasGoogleReferrer()Z
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    const-string v1, "tenjinInstallPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tenjinGoogleInstallContainsReferrerKey"

    .line 385
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private inEventQueue(Ljava/lang/String;)Z
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static isEmulator()Z
    .locals 2

    .line 408
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "^-?[0-9]+$"

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isReadyToConnect()Z
    .locals 1

    .line 394
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->advertiserIdReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->hasAnyReferrer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyConnect()V
    .locals 1

    const-string v0, ""

    .line 295
    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->notifyConnect(Ljava/lang/String;)V

    return-void
.end method

.method private notifyConnect(Ljava/lang/String;)V
    .locals 2

    .line 300
    sget-object p1, Lcom/tenjin/android/TenjinSDK;->advertiserIdReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->broadCastReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    monitor-enter p1

    .line 302
    :try_start_0
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->connectReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 303
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 307
    :cond_0
    sget-object p1, Lcom/tenjin/android/TenjinSDK;->advertiserIdReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    monitor-enter p1

    .line 309
    :try_start_1
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->connectReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 310
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 314
    :cond_1
    sget-object p1, Lcom/tenjin/android/TenjinSDK;->advertiserIdReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->broadCastReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    monitor-enter p1

    .line 316
    :try_start_2
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->connectReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 317
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectReadyObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 318
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private processQueue()V
    .locals 13

    .line 911
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 913
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tenjin/android/TenjinSDK$EventName;

    .line 914
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2300(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eventName"

    .line 915
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 916
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2400(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    .line 917
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2400(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tenjin/android/TenjinSDK;->eventWithName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "eventNameValue"

    .line 918
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 919
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2400(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2500(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    .line 920
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2400(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2500(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/tenjin/android/TenjinSDK;->eventWithNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "eventNameIntValue"

    .line 921
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 922
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2400(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2600(Lcom/tenjin/android/TenjinSDK$EventName;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    .line 923
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2400(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2600(Lcom/tenjin/android/TenjinSDK$EventName;)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/tenjin/android/TenjinSDK;->eventWithNameAndValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v4, "eventNameTransaction"

    .line 924
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 925
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2700(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2800(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2900(Lcom/tenjin/android/TenjinSDK$EventName;)I

    move-result v8

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3000(Lcom/tenjin/android/TenjinSDK$EventName;)D

    move-result-wide v9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;ID)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    .line 926
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2700(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2800(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2900(Lcom/tenjin/android/TenjinSDK$EventName;)I

    move-result v7

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3000(Lcom/tenjin/android/TenjinSDK$EventName;)D

    move-result-wide v8

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tenjin/android/TenjinSDK;->transaction(Ljava/lang/String;Ljava/lang/String;ID)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "eventNameTransactionData"

    .line 927
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 928
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2700(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2800(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2900(Lcom/tenjin/android/TenjinSDK$EventName;)I

    move-result v8

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3000(Lcom/tenjin/android/TenjinSDK$EventName;)D

    move-result-wide v9

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3100(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3200(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v12

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    .line 929
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2700(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2800(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$2900(Lcom/tenjin/android/TenjinSDK$EventName;)I

    move-result v7

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3000(Lcom/tenjin/android/TenjinSDK$EventName;)D

    move-result-wide v8

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3100(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3200(Lcom/tenjin/android/TenjinSDK$EventName;)Ljava/lang/String;

    move-result-object v11

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/tenjin/android/TenjinSDK;->transaction(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "eventGetDeeplink"

    .line 930
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "eventGetDeeplink"

    .line 931
    invoke-direct {p0, v3}, Lcom/tenjin/android/TenjinSDK;->removeProcessingEvent(Ljava/lang/String;)Z

    .line 932
    invoke-static {v2}, Lcom/tenjin/android/TenjinSDK$EventName;->access$3300(Lcom/tenjin/android/TenjinSDK$EventName;)Lcom/tenjin/android/Callback;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tenjin/android/TenjinSDK;->getDeeplink(Lcom/tenjin/android/Callback;)V

    goto/16 :goto_0

    .line 935
    :cond_6
    iget-object v1, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 936
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queueProcessingEvent(Ljava/lang/String;)Z
    .locals 3

    .line 1496
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1497
    iget-object v2, p0, Lcom/tenjin/android/TenjinSDK;->eventProcessingQueue:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private removeEventQueue(Ljava/lang/String;)Z
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeProcessingEvent(Ljava/lang/String;)Z
    .locals 1

    .line 1502
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventProcessingQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->eventProcessingQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendResultToCallback(Lcom/tenjin/android/Callback;Ljava/lang/String;Z)V
    .locals 7

    .line 1302
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->deepLinkSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1305
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->deepLinkSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    .line 1309
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 1311
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object p2

    const/4 v4, 0x0

    .line 1312
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1313
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1315
    :cond_1
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->result:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1318
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1321
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/tenjin/android/TenjinSDK;->context:Landroid/content/Context;

    const-string v3, "tenjinInstallPreferences"

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v3, "tenjinInstallReferrerSent"

    .line 1322
    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tenjin/android/TenjinSDK;->clickedTenjinLink:Z

    const-string p2, "ad_network"

    .line 1324
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p2, "ad_network"

    .line 1325
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "organic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1326
    iput-boolean v2, p0, Lcom/tenjin/android/TenjinSDK;->clickedTenjinLink:Z

    goto :goto_2

    .line 1328
    :cond_3
    iput-boolean v1, p0, Lcom/tenjin/android/TenjinSDK;->clickedTenjinLink:Z

    .line 1332
    :cond_4
    :goto_2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1333
    new-instance v0, Lcom/tenjin/android/TenjinSDK$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/tenjin/android/TenjinSDK$2;-><init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public appendAppSubversion(I)V
    .locals 1

    .line 254
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->appSubversion:Ljava/lang/Integer;

    return-void
.end method

.method public appendAppSubversion(Ljava/lang/Integer;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->appSubversion:Ljava/lang/Integer;

    return-void
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0, v0}, Lcom/tenjin/android/TenjinSDK;->connect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, p1, v0}, Lcom/tenjin/android/TenjinSDK;->connect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 271
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "optin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 272
    iput-boolean v1, p0, Lcom/tenjin/android/TenjinSDK;->optIn:Z

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "optout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 274
    iput-boolean v1, p0, Lcom/tenjin/android/TenjinSDK;->optOut:Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 278
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->deferredDeeplink:Ljava/lang/String;

    :cond_2
    const-string p1, "connect"

    .line 280
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->eventIsProcessing(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 283
    :cond_3
    iget-object p1, p0, Lcom/tenjin/android/TenjinSDK;->advertiserIdParam:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 284
    new-instance p1, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;

    invoke-direct {p1, p0, v0}, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;-><init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$1;)V

    new-array v1, p2, [Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/tenjin/android/TenjinSDK$AsyncGetAdvertisingInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    :cond_4
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->hasAnyReferrer()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/tenjin/android/TenjinSDK;->googleInstallReferrerReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/tenjin/android/TenjinSDK;->fetchGoogleInstallReferrer()V

    .line 290
    :cond_5
    iput-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    .line 291
    new-instance p1, Lcom/tenjin/android/TenjinSDK$AsyncConnect;

    invoke-direct {p1, p0, v0}, Lcom/tenjin/android/TenjinSDK$AsyncConnect;-><init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/TenjinSDK$1;)V

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/tenjin/android/TenjinSDK$AsyncConnect;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public eventWithName(Ljava/lang/String;)V
    .locals 2

    .line 1061
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1062
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->eventIsProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->inEventQueue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1066
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1069
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 1070
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;)Z

    goto :goto_0

    .line 1072
    :cond_1
    invoke-direct {p0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;)Z

    .line 1073
    invoke-virtual {p0}, Lcom/tenjin/android/TenjinSDK;->connect()V

    goto :goto_0

    .line 1076
    :cond_2
    new-instance v0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Lcom/tenjin/android/TenjinSDK$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const-string p1, "TenjinSDK"

    const-string v0, "Tenjin WARNING: Your event was not sent because the eventName was not valid."

    .line 1079
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public eventWithNameAndValue(Ljava/lang/String;I)V
    .locals 2

    .line 1118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->eventIsProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->inEventQueue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1123
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1124
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 1125
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1127
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;I)Z

    .line 1128
    invoke-virtual {p0}, Lcom/tenjin/android/TenjinSDK;->connect()V

    goto :goto_0

    .line 1131
    :cond_2
    new-instance v0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;ILcom/tenjin/android/TenjinSDK$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const-string p1, "TenjinSDK"

    const-string p2, "Tenjin WARNING: Your event was not sent because the eventName or eventValue is not valid."

    .line 1134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public eventWithNameAndValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1091
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->eventIsProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->inEventQueue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1095
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 1097
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1099
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1100
    invoke-virtual {p0}, Lcom/tenjin/android/TenjinSDK;->connect()V

    goto :goto_0

    .line 1103
    :cond_2
    new-instance v0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;Lcom/tenjin/android/TenjinSDK$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const-string p1, "TenjinSDK"

    const-string p2, "Tenjin WARNING: Your event was not sent because the eventName or eventValue was not valid."

    .line 1106
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getDeeplink(Lcom/tenjin/android/Callback;)V
    .locals 1

    const-string v0, "eventGetDeeplink"

    .line 1286
    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->eventIsProcessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1289
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const-string v0, "eventGetDeeplink"

    .line 1291
    invoke-direct {p0, v0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Lcom/tenjin/android/Callback;)Z

    goto :goto_0

    :cond_1
    const-string v0, "eventGetDeeplink"

    .line 1293
    invoke-direct {p0, v0, p1}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Lcom/tenjin/android/Callback;)Z

    .line 1294
    invoke-virtual {p0}, Lcom/tenjin/android/TenjinSDK;->connect()V

    goto :goto_0

    .line 1297
    :cond_2
    new-instance v0, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;

    invoke-direct {v0, p0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;-><init>(Lcom/tenjin/android/TenjinSDK;Lcom/tenjin/android/Callback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/tenjin/android/Callback;

    invoke-virtual {v0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncGetDeeplink;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public optIn()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/tenjin/android/TenjinSDK;->optOut:Z

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/tenjin/android/TenjinSDK;->optIn:Z

    return-void
.end method

.method public optInParams([Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->optInParameters:[Ljava/lang/String;

    return-void
.end method

.method public optOut()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/tenjin/android/TenjinSDK;->optIn:Z

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/tenjin/android/TenjinSDK;->optOut:Z

    return-void
.end method

.method public optOutParams([Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/tenjin/android/TenjinSDK;->optOutParameters:[Ljava/lang/String;

    return-void
.end method

.method public setSessionTime(J)V
    .locals 0

    .line 258
    sput-wide p1, Lcom/tenjin/android/TenjinSDK;->CONNECT_THRESHOLD:J

    return-void
.end method

.method public transaction(Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 9

    .line 1154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tenjin/android/TenjinSDK;->CUR_SET:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-lez p3, :cond_3

    .line 1155
    invoke-direct/range {p0 .. p5}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;ID)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tenjin/android/TenjinSDK;->eventIsProcessing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1158
    :cond_0
    sget-object v0, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 1160
    invoke-direct/range {p0 .. p5}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;ID)Z

    goto :goto_0

    .line 1162
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;ID)Z

    .line 1163
    invoke-virtual {p0}, Lcom/tenjin/android/TenjinSDK;->connect()V

    goto :goto_0

    .line 1166
    :cond_2
    new-instance v0, Lcom/tenjin/android/TenjinSDK$AsyncEvent;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLcom/tenjin/android/TenjinSDK$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const-string p1, "TenjinSDK"

    const-string p2, "Tenjin WARNING: Your purchase was not sent because you didn\'t have valid parameters."

    .line 1169
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public transaction(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v11, p0

    :try_start_0
    const-string v0, "UTF-8"

    move-object/from16 v1, p6

    .line 1188
    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    move-object/from16 v2, p7

    .line 1189
    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tenjin/android/TenjinSDK;->CUR_SET:Ljava/util/Set;

    move-object/from16 v10, p2

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-lez p3, :cond_3

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v7, v0

    move-object v8, v9

    .line 1201
    invoke-direct/range {v1 .. v8}, Lcom/tenjin/android/TenjinSDK;->getEventKey(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tenjin/android/TenjinSDK;->eventIsProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1204
    :cond_0
    sget-object v1, Lcom/tenjin/android/TenjinSDK;->connectSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1205
    iget-object v1, v11, Lcom/tenjin/android/TenjinSDK;->connectTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v7, v0

    move-object v8, v9

    .line 1206
    invoke-direct/range {v1 .. v8}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v7, v0

    move-object v8, v9

    .line 1208
    invoke-direct/range {v1 .. v8}, Lcom/tenjin/android/TenjinSDK;->addEventQueue(Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)Z

    .line 1209
    invoke-virtual {p0}, Lcom/tenjin/android/TenjinSDK;->connect()V

    goto :goto_0

    .line 1212
    :cond_2
    new-instance v12, Lcom/tenjin/android/TenjinSDK$AsyncEvent;

    const/4 v13, 0x0

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object v8, v0

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;-><init>(Lcom/tenjin/android/TenjinSDK;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;Lcom/tenjin/android/TenjinSDK$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v12, v0}, Lcom/tenjin/android/TenjinSDK$AsyncEvent;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const-string v0, "TenjinSDK"

    const-string v1, "Tenjin WARNING: Your purchase was not sent because you didn\'t have valid parameters."

    .line 1215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object/from16 v10, p2

    .line 1191
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1193
    invoke-virtual/range {p0 .. p5}, Lcom/tenjin/android/TenjinSDK;->transaction(Ljava/lang/String;Ljava/lang/String;ID)V

    return-void
.end method
