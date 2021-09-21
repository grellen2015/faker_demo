.class final Lcom/moat/analytics/mobile/cha/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/a$d;
    }
.end annotation


# instance fields
.field final ˊ:Ljava/lang/String;

.field ˋ:Landroid/webkit/WebView;

.field private ˎ:Z

.field ˏ:Lcom/moat/analytics/mobile/cha/j;

.field private final ॱ:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/app/Application;I)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcom/moat/analytics/mobile/cha/a;->ॱ:I

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/a;->ˎ:Z

    .line 78
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "_moatTracker%d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4197d78400000000L    # 1.0E8

    mul-double v5, v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/a;->ˊ:Ljava/lang/String;

    .line 81
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    .line 82
    iget-object p1, p0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 96
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 97
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 101
    :cond_1
    sget p1, Lcom/moat/analytics/mobile/cha/j$e;->ˎ:I

    .line 102
    sget v0, Lcom/moat/analytics/mobile/cha/a$d;->ˋ:I

    if-ne p2, v0, :cond_2

    .line 103
    sget p1, Lcom/moat/analytics/mobile/cha/j$e;->ˋ:I

    .line 106
    :cond_2
    :try_start_0
    new-instance p2, Lcom/moat/analytics/mobile/cha/j;

    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    invoke-direct {p2, v0, p1}, Lcom/moat/analytics/mobile/cha/j;-><init>(Landroid/webkit/WebView;I)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/a;->ˏ:Lcom/moat/analytics/mobile/cha/j;
    :try_end_0
    .catch Lcom/moat/analytics/mobile/cha/o; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 108
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    return-void
.end method

.method static ˊ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6043
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/t;->ˏ:Z

    if-nez v0, :cond_1

    .line 6044
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/cha/f;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/f;->ˎ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "[ERROR] "

    .line 6046
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    .line 6049
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MoatAnalytics"

    .line 6050
    invoke-static {v0, p1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/cha/a;)Z
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/cha/a;->ˎ:Z

    return v0
.end method

.method static ˏ(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 6069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6070
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "null"

    return-object p0
.end method

.method static ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 2019
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/t;->ˏ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 2064
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Moat"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "message = %s"

    .line 2021
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3064
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Moat"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "id = %s, message = %s"

    const/4 v3, 0x2

    .line 2024
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    aput-object p3, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 4030
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/t;->ˋ:Z

    if-eqz v0, :cond_1

    .line 4064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "id = %s, message = %s"

    const/4 v1, 0x2

    .line 4031
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 4032
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4031
    invoke-static {v1, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static ॱ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 5037
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/cha/t;->ˏ:Z

    if-eqz v0, :cond_0

    .line 5064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "id = %s, message = %s"

    const/4 v1, 0x2

    .line 5038
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic ॱ(Lcom/moat/analytics/mobile/cha/a;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/moat/analytics/mobile/cha/a;->ˎ:Z

    return p0
.end method


# virtual methods
.method final ˊ(Ljava/lang/String;)V
    .locals 3

    .line 118
    iget v0, p0, Lcom/moat/analytics/mobile/cha/a;->ॱ:I

    sget v1, Lcom/moat/analytics/mobile/cha/a$d;->ˏ:I

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/cha/a$2;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/cha/a$2;-><init>(Lcom/moat/analytics/mobile/cha/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 132
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/moatad.js\" type=\"text/javascript\"></script>\n</body>\n</html>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "text/html"

    const-string v2, "utf-8"

    .line 132
    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final ˊ(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 137
    iget v0, p0, Lcom/moat/analytics/mobile/cha/a;->ॱ:I

    sget v1, Lcom/moat/analytics/mobile/cha/a$d;->ˋ:I

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/cha/a$5;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/cha/a$5;-><init>(Lcom/moat/analytics/mobile/cha/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 156
    iget-object p2, p0, Lcom/moat/analytics/mobile/cha/a;->ˋ:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/a;->ˊ:Ljava/lang/String;

    .line 1174
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "mianahwvc"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 p3, 0x2

    aput-object p4, v4, p3

    const/4 p3, 0x3

    const-string p4, "mianahwvc"

    aput-object p4, v4, p3

    const/4 p3, 0x4

    .line 1180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v4, p3

    const/4 p3, 0x5

    aput-object v1, v4, p3

    const/4 p3, 0x6

    aput-object p1, v4, p3

    const/4 p1, 0x7

    .line 1183
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, p1

    const/16 p1, 0x8

    aput-object p5, v4, p1

    .line 1174
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "text/html"

    const/4 p4, 0x0

    .line 156
    invoke-virtual {p2, p1, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
