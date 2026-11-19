.class public Lru/fokus/tetrad/Notifier$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 117
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p1}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-static {p1}, Lru/fokus/tetrad/Notifier;->timeUp(Landroid/content/Context;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lru/fokus/tetrad/Notifier;->scheduleAlarm(Landroid/content/Context;J)V

    goto :goto_0
.end method
