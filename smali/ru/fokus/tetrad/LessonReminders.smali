.class public final Lru/fokus/tetrad/LessonReminders;
.super Ljava/lang/Object;
.source "LessonReminders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/LessonReminders$Receiver;,
        Lru/fokus/tetrad/LessonReminders$Boot;
    }
.end annotation


# static fields
.field static final CH:Ljava/lang/String; = "lessons"

.field static final NOTIF_ID:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beforeMin(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "remBeforeMin"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static beforeOn(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "remBefore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static morningMin(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "remMorningMin"

    const/16 v2, 0x1b3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static morningOn(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "remMorning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static pi(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x7

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lru/fokus/tetrad/LessonReminders$Receiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0xc000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 36
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AlarmManager;

    .line 37
    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->pi(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 38
    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->week(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->morningOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->morningMin(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->beforeOn(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->beforeMin(Landroid/content/Context;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/Schedule;->nextReminder(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;ZIZI)Lru/fokus/tetrad/Schedule$Reminder;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v1, Lru/fokus/tetrad/Store;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "remTitle"

    iget-object v3, v0, Lru/fokus/tetrad/Schedule$Reminder;->title:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "remText"

    iget-object v3, v0, Lru/fokus/tetrad/Schedule$Reminder;->text:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "remAt"

    iget-wide v4, v0, Lru/fokus/tetrad/Schedule$Reminder;->at:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iget-wide v2, v0, Lru/fokus/tetrad/Schedule$Reminder;->at:J

    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->pi(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    iget-wide v2, v0, Lru/fokus/tetrad/Schedule$Reminder;->at:J

    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->pi(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x3

    .line 49
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 51
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "lessons"

    const-string v3, "\u041d\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u043d\u0438\u044f \u043e \u0443\u0440\u043e\u043a\u0430\u0445"

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 52
    const-string v2, "\u0421\u043f\u0438\u0441\u043e\u043a \u0443\u0440\u043e\u043a\u043e\u0432 \u0443\u0442\u0440\u043e\u043c \u0438 \u043d\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u043d\u0438\u0435 \u043f\u0435\u0440\u0435\u0434 \u0443\u0440\u043e\u043a\u043e\u043c"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 55
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_1

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "lessons"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ic_notify"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 57
    const/16 v3, 0x8

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0xc000000

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 59
    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 62
    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 65
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_2
    return-void

    .line 55
    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_2
    const v2, 0x108005e

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static week(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "schedule"

    const-string v2, "{\"days\":[]}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->fromJson(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v0

    return-object v0
.end method
