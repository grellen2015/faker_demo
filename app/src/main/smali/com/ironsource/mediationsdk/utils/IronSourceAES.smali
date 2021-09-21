.class public Lcom/ironsource/mediationsdk/utils/IronSourceAES;
.super Ljava/lang/Object;
.source "IronSourceAES.java"


# static fields
.field private static mDidSendEncryptionFailEventInSession:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v0

    return-object p0

    .line 62
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit v0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 66
    :try_start_2
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const/16 v2, 0x10

    .line 69
    new-array v2, v2, [B

    .line 70
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 71
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 73
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v2, "AES/CBC/PKCS7Padding"

    .line 75
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v4, 0x2

    .line 76
    invoke-virtual {v2, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 77
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 79
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p0

    .line 84
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    sget-boolean p0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->mDidSendEncryptionFailEventInSession:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 88
    sput-boolean p0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->mDidSendEncryptionFailEventInSession:Z

    .line 89
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "status"

    const-string v2, "false"

    .line 91
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 92
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 94
    :try_start_5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 96
    :goto_0
    new-instance p0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x72

    invoke-direct {p0, v1, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 97
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    const-string v1, "https://outcome-ssp.supersonicads.com/mediation?adUnit=2"

    invoke-virtual {p1, p0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sendEventToUrl(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    :cond_2
    const-string p0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 27
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    return-object p0

    .line 30
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit v0

    return-object p0

    .line 34
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const-string v1, "UTF8"

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v1, 0x10

    .line 38
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 39
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 40
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 43
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x1

    .line 44
    invoke-virtual {v1, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "line.separator"

    .line 47
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0

    throw p0
.end method

.method private static getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 113
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 115
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "UTF-8"

    .line 118
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 119
    array-length v2, p0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 120
    :goto_0
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method
