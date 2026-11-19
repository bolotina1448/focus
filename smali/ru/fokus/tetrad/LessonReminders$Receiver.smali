.class public Lru/fokus/tetrad/LessonReminders$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "LessonReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/LessonReminders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 70
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p1}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "remAt"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 73
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "remTitle"

    const-string v3, "\u0423\u0440\u043e\u043a"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "remText"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lru/fokus/tetrad/LessonReminders;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {p1}, Lru/fokus/tetrad/LessonReminders;->schedule(Landroid/content/Context;)V

    .line 77
    return-void
.end method
