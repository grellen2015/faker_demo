.class public Lcom/chartboost/sdk/impl/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/bd;

.field private final b:Lcom/chartboost/sdk/impl/bf;

.field private final c:I

.field private final d:Lorg/json/JSONObject;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bd;Lcom/chartboost/sdk/impl/bf;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg;->a:Lcom/chartboost/sdk/impl/bd;

    .line 48
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    .line 49
    iput p3, p0, Lcom/chartboost/sdk/impl/bg;->c:I

    .line 50
    iput-object p4, p0, Lcom/chartboost/sdk/impl/bg;->e:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 57
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/bg;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    const/high16 v1, 0x447a0000    # 1000.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 202
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->c(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    :try_start_2
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Invalid set orientation command"

    .line 204
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    goto/16 :goto_2

    .line 192
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-class v1, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Warning message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    :try_start_4
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Warning message is empty"

    .line 196
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    goto/16 :goto_2

    .line 180
    :pswitch_2
    :try_start_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/bf;->m:Ljava/lang/String;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->x()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    :try_start_6
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    .line 185
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Parsing exception unknown field for video replay"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    goto/16 :goto_2

    .line 168
    :pswitch_3
    :try_start_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/bf;->m:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    :try_start_8
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    .line 172
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Parsing exception unknown field for video play"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->e(Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->b(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    goto/16 :goto_2

    .line 156
    :pswitch_4
    :try_start_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/bf;->m:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    :catch_4
    :try_start_a
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    .line 160
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Parsing exception unknown field for video pause"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->e(Ljava/lang/String;)V

    .line 163
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->b(I)V

    goto/16 :goto_2

    .line 149
    :pswitch_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->a:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bd;->onHideCustomView()V

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->b(I)V

    .line 151
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->w()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    goto/16 :goto_2

    .line 140
    :pswitch_6
    :try_start_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->b(Ljava/lang/String;)V

    .line 142
    const-class v1, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track VAST event message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    :try_start_c
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview tracking VAST events"

    .line 144
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_2

    .line 129
    :pswitch_7
    :try_start_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "NativeBridgeCommand"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "######### JS->Native Video total player duration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->b(F)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_2

    .line 133
    :catch_6
    :try_start_e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Parsing exception unknown field for total player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->e(Ljava/lang/String;)V

    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    .line 134
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :pswitch_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->z()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    goto/16 :goto_2

    .line 101
    :pswitch_9
    :try_start_f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bf;->y()Lcom/chartboost/sdk/impl/bf$b;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 110
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    const-class v1, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track MRAID openUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v0

    .line 118
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception while opening a browser view with MRAID url"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception while opening a browser view with MRAID url"

    .line 119
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_8
    move-exception v0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "NativeBridgeCommand"

    const-string v1, "ActivityNotFoundException occured when opening a url in a browser"

    .line 116
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_2

    .line 90
    :pswitch_a
    :try_start_11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-class v1, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->d(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_2

    :catch_9
    :try_start_12
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Error message is empty"

    .line 94
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->d(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_2

    .line 79
    :pswitch_b
    :try_start_13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-class v1, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Debug message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->c(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_2

    :catch_a
    :try_start_14
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    .line 83
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->c(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_2

    .line 68
    :pswitch_c
    :try_start_15
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->d:Lorg/json/JSONObject;

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "NativeBridgeCommand"

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "######### JS->Native Video current player duration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->a(F)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_2

    .line 72
    :catch_b
    :try_start_16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "Parsing exception unknown field for current player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->e(Ljava/lang/String;)V

    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    .line 73
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :pswitch_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->h()V

    goto :goto_2

    .line 59
    :pswitch_e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg;->b:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->b(Lorg/json/JSONObject;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_2

    :catch_c
    move-exception v0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bg;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
