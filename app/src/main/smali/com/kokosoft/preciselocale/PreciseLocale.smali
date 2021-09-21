.class public Lcom/kokosoft/preciselocale/PreciseLocale;
.super Ljava/lang/Object;
.source "PreciseLocale.java"


# static fields
.field private static final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/kokosoft/preciselocale/PreciseLocale;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrency()Ljava/util/Currency;
    .locals 1

    .line 18
    :try_start_0
    sget-object v0, Lcom/kokosoft/preciselocale/PreciseLocale;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lcom/kokosoft/preciselocale/PreciseLocale;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lcom/kokosoft/preciselocale/PreciseLocale;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/kokosoft/preciselocale/PreciseLocale;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageID()Ljava/lang/String;
    .locals 3

    .line 26
    invoke-static {}, Lcom/kokosoft/preciselocale/PreciseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/kokosoft/preciselocale/PreciseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 32
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/kokosoft/preciselocale/PreciseLocale;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
