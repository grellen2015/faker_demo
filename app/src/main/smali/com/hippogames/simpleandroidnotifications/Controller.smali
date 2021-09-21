.class public Lcom/hippogames/simpleandroidnotifications/Controller;
.super Landroid/content/BroadcastReceiver;
.source "Controller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private BuildNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;Landroid/content/Intent;Landroid/app/NotificationManager;)Landroid/app/Notification;
    .locals 8

    .line 276
    iget v0, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 280
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 282
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v4, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-direct {v1, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    iget-object v4, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-virtual {p4, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-nez v4, :cond_2

    .line 288
    new-instance v4, Landroid/app/NotificationChannel;

    iget-object v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    iget-object v6, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    iget v7, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Importance:I

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 289
    iget-boolean v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibrate:Z

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 290
    iget-boolean v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Light:Z

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 291
    iget v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightColor:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 292
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 293
    iget v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Importance:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 295
    iget-boolean v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Sound:Z

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    invoke-static {v5}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "android.resource://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/raw/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 298
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    .line 299
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const/4 v7, 0x6

    .line 300
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 302
    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 305
    :cond_0
    invoke-virtual {p4, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 310
    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    :cond_2
    :goto_0
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 p4, 0x1

    .line 315
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 316
    iget-object v4, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Title:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 317
    iget-object v4, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Message:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 319
    iget-boolean p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Multiline:Z

    const/16 v4, 0x10

    if-eqz p3, :cond_3

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v4, :cond_3

    .line 321
    new-instance p3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v5, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Message:Ljava/lang/String;

    invoke-virtual {p3, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 324
    :cond_3
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt p3, v5, :cond_4

    .line 326
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 329
    :cond_4
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt p3, v5, :cond_5

    iget p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIconColor:I

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 330
    :cond_5
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Ticker:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Ticker:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 331
    :cond_6
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 333
    :cond_7
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LargeIcon:Ljava/lang/String;

    invoke-direct {p0, p3, v1, p1}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetLargeIcon(Ljava/lang/String;Landroid/app/Notification$Builder;Landroid/content/Context;)V

    .line 335
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p3, v2, :cond_d

    .line 337
    iget-boolean p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibrate:Z

    if-eqz p3, :cond_8

    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibration:[J

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 338
    :cond_8
    iget-boolean p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Light:Z

    if-eqz p3, :cond_9

    iget p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightColor:I

    iget v0, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOnMs:I

    iget v2, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOffMs:I

    invoke-virtual {v1, p3, v0, v2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 339
    :cond_9
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x2

    if-lt p3, v4, :cond_b

    .line 343
    iget p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Importance:I

    const/16 v2, -0x3e8

    if-eq p3, v2, :cond_a

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v3, -0x1

    goto :goto_1

    :pswitch_3
    const/4 v3, -0x2

    .line 354
    :cond_a
    :goto_1
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 356
    :cond_b
    iget-boolean p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Sound:Z

    if-eqz p3, :cond_d

    .line 358
    iget-object p3, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    invoke-static {p3}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 359
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "android.resource://"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/raw/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 363
    :cond_d
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_e

    .line 365
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 368
    :cond_e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v4, :cond_f

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    goto :goto_3

    :cond_f
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static CancelAllDisplayedNotifications()V
    .locals 2

    .line 210
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 212
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public static CancelAllNotifications()V
    .locals 0

    .line 217
    invoke-static {}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelAllScheduledNotifications()V

    .line 218
    invoke-static {}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelAllDisplayedNotifications()V

    return-void
.end method

.method public static CancelAllScheduledNotifications()V
    .locals 2

    .line 202
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hippogames/simpleandroidnotifications/Storage;->GetNotificationIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    invoke-static {v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelScheduledNotification(I)V

    goto :goto_0
.end method

.method public static CancelDisplayedNotification(I)V
    .locals 2

    .line 190
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 191
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static CancelNotification(I)V
    .locals 0

    .line 196
    invoke-static {p0}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelScheduledNotification(I)V

    .line 197
    invoke-static {p0}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelDisplayedNotification(I)V

    return-void
.end method

.method public static CancelScheduledNotification(I)V
    .locals 3

    .line 180
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hippogames/simpleandroidnotifications/Controller;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 182
    invoke-static {v0, p0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 183
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 184
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 185
    invoke-static {v0, p0}, Lcom/hippogames/simpleandroidnotifications/Storage;->RemoveNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private CreateStackedNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V
    .locals 10

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "notification"

    .line 377
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 379
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 381
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_6

    .line 389
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 393
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_1

    .line 395
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-direct {v3, p1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 400
    :cond_1
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 404
    iget-object v5, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupSummary:Ljava/lang/String;

    const-string v6, "{0}"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 406
    new-instance v6, Landroid/app/Notification$InboxStyle;

    invoke-direct {v6}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 408
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 418
    invoke-virtual {v6, v5}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 421
    iget-object v1, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 422
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 423
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 424
    iget-object v1, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 425
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 426
    iget-object v1, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    const-string v6, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v1, v6

    div-int/lit16 v1, v1, 0x3e8

    const/high16 v4, 0x8000000

    invoke-static {p1, v1, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 429
    iget-object p2, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LargeIcon:Ljava/lang/String;

    invoke-direct {p0, p2, v3, p1}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetLargeIcon(Ljava/lang/String;Landroid/app/Notification$Builder;Landroid/content/Context;)V

    .line 431
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_3

    .line 433
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 436
    :cond_3
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 p2, -0x1

    .line 438
    iput p2, p1, Landroid/app/Notification;->defaults:I

    .line 439
    iget-object p2, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v2, p2, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_3

    .line 408
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/StatusBarNotification;

    .line 410
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 412
    invoke-static {v7}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 414
    invoke-virtual {v6, v7}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    .line 381
    :cond_6
    aget-object v6, v3, v5

    .line 383
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    if-eq v7, v0, :cond_7

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "g:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p3, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 385
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public static DeleteNotificationChannel(Ljava/lang/String;)V
    .locals 2

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 252
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 254
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static GetNotificationChannelIds()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 227
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 228
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 230
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 232
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-ne v0, v4, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 240
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static IsEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static LimitStorageSize(I)V
    .locals 5

    .line 265
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hippogames/simpleandroidnotifications/Storage;->GetNotificationIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p0

    if-lt v1, v2, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/hippogames/simpleandroidnotifications/Controller;->CancelScheduledNotification(I)V

    const-string v2, "Controller"

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Too many scheduled notifications, so notification was cancelled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private SetLargeIcon(Ljava/lang/String;Landroid/app/Notification$Builder;Landroid/content/Context;)V
    .locals 2

    .line 445
    invoke-static {p1}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "app_icon"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 453
    invoke-static {p1}, Lcom/hippogames/simpleandroidnotifications/AppIconHelper;->GetAppIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    .line 464
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method public static SetNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 29

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v0, 0x0

    const/4 v5, 0x1

    move/from16 v6, p6

    if-ne v6, v5, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    move/from16 v6, p7

    if-ne v6, v5, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    const/4 v6, 0x2

    .line 35
    new-array v12, v6, [J

    fill-array-data v12, :array_0

    move/from16 v6, p8

    if-ne v6, v5, :cond_2

    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0xbb8

    const/16 v20, 0xbb8

    const v21, -0xff0100

    const/16 v25, 0x1

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v13, 0x0

    move/from16 v0, p0

    move-wide/from16 v5, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v17, v12

    move-object/from16 v12, p5

    move-object/from16 v22, p9

    move-object/from16 v23, p10

    move/from16 v24, p11

    move-object/from16 v28, p12

    invoke-static/range {v0 .. v28}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z[JZIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method

.method public static SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 31

    const-string v0, ","

    move-object/from16 v1, p17

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 45
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_5

    const/4 v0, 0x1

    move/from16 v4, p7

    if-ne v4, v0, :cond_0

    move/from16 v5, p13

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move/from16 v5, p13

    const/4 v9, 0x0

    :goto_1
    if-ne v5, v0, :cond_1

    move/from16 v6, p14

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    move/from16 v6, p14

    const/4 v15, 0x0

    :goto_2
    if-ne v6, v0, :cond_2

    move/from16 v7, p16

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    move/from16 v7, p16

    const/16 v16, 0x0

    :goto_3
    if-ne v7, v0, :cond_3

    move/from16 v8, p18

    const/16 v18, 0x1

    goto :goto_4

    :cond_3
    move/from16 v8, p18

    const/16 v18, 0x0

    :goto_4
    if-ne v8, v0, :cond_4

    const/16 v20, 0x1

    goto :goto_5

    :cond_4
    const/16 v20, 0x0

    :goto_5
    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, p15

    move-object/from16 v19, v1

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move/from16 v26, p24

    move/from16 v27, p25

    move/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    .line 50
    invoke-static/range {v2 .. v30}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z[JZIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    move/from16 v4, p7

    move/from16 v5, p13

    move/from16 v6, p14

    move/from16 v7, p16

    move/from16 v8, p18

    .line 47
    aget-object v9, v0, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static SetNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z[JZIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 56
    new-instance v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;

    invoke-direct {v0}, Lcom/hippogames/simpleandroidnotifications/NotificationParams;-><init>()V

    move v1, p0

    .line 58
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    move-object v1, p1

    .line 59
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    move-object v1, p2

    .line 60
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupSummary:Ljava/lang/String;

    move-object v1, p3

    .line 61
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    move-object v1, p4

    .line 62
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p5

    iput-wide v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    move v1, p7

    .line 64
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Repeat:Z

    move-wide v1, p8

    .line 65
    iput-wide v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->RepeatIntervalMs:J

    move-object v1, p10

    .line 66
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Title:Ljava/lang/String;

    move-object v1, p11

    .line 67
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Message:Ljava/lang/String;

    move-object v1, p12

    .line 68
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Ticker:Ljava/lang/String;

    move/from16 v1, p13

    .line 69
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Multiline:Z

    move/from16 v1, p14

    .line 70
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Sound:Z

    move-object/from16 v1, p15

    .line 71
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CustomSound:Ljava/lang/String;

    move/from16 v1, p16

    .line 72
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibrate:Z

    move-object/from16 v1, p17

    .line 73
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Vibration:[J

    move/from16 v1, p18

    .line 74
    iput-boolean v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Light:Z

    move/from16 v1, p19

    .line 75
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOnMs:I

    move/from16 v1, p20

    .line 76
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightOffMs:I

    move/from16 v1, p21

    .line 77
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LightColor:I

    move-object/from16 v1, p22

    .line 78
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->LargeIcon:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 79
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIcon:Ljava/lang/String;

    move/from16 v1, p24

    .line 80
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->SmallIconColor:I

    move/from16 v1, p25

    .line 81
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    move/from16 v1, p26

    .line 82
    iput v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Importance:I

    move-object/from16 v1, p27

    .line 83
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CallbackData:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 84
    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->UnityClass:Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/hippogames/simpleandroidnotifications/Controller;->SetNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V

    .line 87
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/hippogames/simpleandroidnotifications/Storage;->AddNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V

    const/16 v0, 0x64

    .line 88
    invoke-static {v0}, Lcom/hippogames/simpleandroidnotifications/Controller;->LimitStorageSize(I)V

    return-void
.end method

.method public static SetNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V
    .locals 8

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "alarm"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/hippogames/simpleandroidnotifications/Controller;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Id"

    .line 98
    iget v3, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget v2, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 102
    iget-boolean p0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Repeat:Z

    if-eqz p0, :cond_2

    .line 104
    iget p0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 106
    iget-wide v3, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    iget-wide v5, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->RepeatIntervalMs:J

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 110
    iget-wide v3, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    iget-wide v5, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->RepeatIntervalMs:J

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 115
    :cond_2
    iget p0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p0, v0, :cond_3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_3

    .line 117
    iget-wide p0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    invoke-virtual {v1, v2, p0, p1, v7}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 119
    :cond_3
    iget p0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ExecuteMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_4

    .line 121
    iget-wide p0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    invoke-virtual {v1, v2, p0, p1, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 125
    :cond_4
    iget-wide p0, p1, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->TriggerAtMillis:J

    invoke-virtual {v1, v2, p0, p1, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "Id"

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 133
    invoke-static {p1, p2}, Lcom/hippogames/simpleandroidnotifications/Storage;->GetNotification(Landroid/content/Context;I)Lcom/hippogames/simpleandroidnotifications/NotificationParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    invoke-static {v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Default"

    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelId:Ljava/lang/String;

    .line 137
    :cond_1
    iget-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    invoke-static {v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Default"

    iput-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->ChannelName:Ljava/lang/String;

    .line 143
    :cond_2
    :try_start_0
    iget-object v1, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->UnityClass:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Notification.Id"

    .line 153
    iget v3, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Id:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Notification.CallbackData"

    .line 154
    iget-object v3, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->CallbackData:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification"

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 157
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/hippogames/simpleandroidnotifications/Controller;->BuildNotification(Landroid/content/Context;Lcom/hippogames/simpleandroidnotifications/NotificationParams;Landroid/content/Intent;Landroid/app/NotificationManager;)Landroid/app/Notification;

    move-result-object v3

    .line 159
    invoke-virtual {v1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    iget-boolean v4, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->Repeat:Z

    if-eqz v4, :cond_3

    .line 163
    invoke-virtual {v1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-static {p1, p2}, Lcom/hippogames/simpleandroidnotifications/Storage;->RemoveNotification(Landroid/content/Context;I)V

    .line 170
    :goto_0
    invoke-virtual {v1, p2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 172
    iget-object p2, v0, Lcom/hippogames/simpleandroidnotifications/NotificationParams;->GroupName:Ljava/lang/String;

    invoke-static {p2}, Lcom/hippogames/simpleandroidnotifications/Controller;->IsEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 174
    invoke-direct {p0, p1, v2, v0}, Lcom/hippogames/simpleandroidnotifications/Controller;->CreateStackedNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/hippogames/simpleandroidnotifications/NotificationParams;)V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void
.end method
