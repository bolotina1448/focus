.class public final Lru/fokus/tetrad/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/Notifier$AlarmReceiver;
    }
.end annotation


# static fields
.field static final CH_FOCUS:Ljava/lang/String; = "focus"

.field static final CH_TIMEUP:Ljava/lang/String; = "timeup"

.field static final ID_FOCUS:I = 0x1

.field static final ID_TIMEUP:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static builder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 89
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 90
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 91
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lru/fokus/tetrad/Notifier$AlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0xc000000

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 93
    return-void
.end method

.method private static channels(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 32
    :cond_0
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 33
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "focus"

    const-string v3, "\u0418\u0434\u0451\u0442 \u0443\u0440\u043e\u043a"

    invoke-direct {v1, v2, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 34
    const-string v2, "\u041e\u0431\u0440\u0430\u0442\u043d\u044b\u0439 \u043e\u0442\u0441\u0447\u0451\u0442 \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0440\u0435\u0436\u0438\u043c\u0430 \u0444\u043e\u043a\u0443\u0441\u0430"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 37
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "timeup"

    const-string v3, "\u0412\u0440\u0435\u043c\u044f \u0432\u044b\u0448\u043b\u043e"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 38
    const-string v2, "\u0421\u0438\u0433\u043d\u0430\u043b \u043e\u0431 \u043e\u043a\u043e\u043d\u0447\u0430\u043d\u0438\u0438 \u0443\u0440\u043e\u043a\u0430"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 39
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x5

    .line 40
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0
.end method

.method private static openFocus(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/FocusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleAlarm(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 79
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 80
    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lru/fokus/tetrad/Notifier$AlarmReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0xc000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 82
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sessionStarted(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 58
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->channels(Landroid/content/Context;)V

    .line 59
    new-instance v1, Lru/fokus/tetrad/Store;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ru"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v2, "focus"

    invoke-static {p0, v2}, Lru/fokus/tetrad/Notifier;->builder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 62
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->smallIcon(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "\u0418\u0434\u0451\u0442 \u0437\u0430\u043d\u044f\u0442\u0438\u0435"

    .line 63
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0414\u043e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". \u041e\u0442\u0432\u043b\u0435\u043a\u0430\u044e\u0449\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u044b."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->openFocus(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "progress"

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setChronometerCountDown(Z)Landroid/app/Notification$Builder;

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 74
    :cond_1
    :try_start_0
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lru/fokus/tetrad/Notifier;->scheduleAlarm(Landroid/content/Context;J)V

    .line 76
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static smallIcon(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_notify"

    const-string v2, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 27
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const v0, 0x108002e

    goto :goto_0
.end method

.method public static timeUp(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->timeUpNotified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {v0, v4}, Lru/fokus/tetrad/Store;->setTimeUpNotified(Z)V

    .line 101
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->channels(Landroid/content/Context;)V

    .line 102
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 103
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 104
    const-string v1, "timeup"

    invoke-static {p0, v1}, Lru/fokus/tetrad/Notifier;->builder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 105
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->smallIcon(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "\u0412\u0440\u0435\u043c\u044f \u0432\u044b\u0448\u043b\u043e!"

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "\u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0438 \u043e\u0442\u043f\u0440\u0430\u0432\u044c \u043d\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0443."

    .line 107
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 109
    invoke-static {p0}, Lru/fokus/tetrad/Notifier;->openFocus(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "alarm"

    .line 110
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 111
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 112
    :cond_2
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
