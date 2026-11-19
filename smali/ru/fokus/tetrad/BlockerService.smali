.class public Lru/fokus/tetrad/BlockerService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "BlockerService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final WATCH_MS:J = 0x190L


# instance fields
.field private blockSettingsCache:Z

.field private blockedCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private lastHome:J

.field private lastUsageQuery:J

.field private overlay:Landroid/view/View;

.field private overlayText:Landroid/widget/TextView;

.field private overlayTitle:Landroid/widget/TextView;

.field private store:Lru/fokus/tetrad/Store;

.field private final timeUp:Ljava/lang/Runnable;

.field private usageForeground:Ljava/lang/String;

.field private usm:Landroid/app/usage/UsageStatsManager;

.field private final watchdog:Ljava/lang/Runnable;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->handler:Landroid/os/Handler;

    .line 56
    iput-wide v2, p0, Lru/fokus/tetrad/BlockerService;->lastHome:J

    iput-wide v2, p0, Lru/fokus/tetrad/BlockerService;->lastUsageQuery:J

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    .line 60
    new-instance v0, Lru/fokus/tetrad/BlockerService$1;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/BlockerService$1;-><init>(Lru/fokus/tetrad/BlockerService;)V

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->timeUp:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lru/fokus/tetrad/BlockerService$2;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/BlockerService$2;-><init>(Lru/fokus/tetrad/BlockerService;)V

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->watchdog:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lru/fokus/tetrad/BlockerService;)Lru/fokus/tetrad/Store;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    return-object v0
.end method

.method static synthetic access$100(Lru/fokus/tetrad/BlockerService;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->hideOverlay()V

    return-void
.end method

.method static synthetic access$200(Lru/fokus/tetrad/BlockerService;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->schedule()V

    return-void
.end method

.method static synthetic access$300(Lru/fokus/tetrad/BlockerService;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->scanWindows()V

    return-void
.end method

.method static synthetic access$400(Lru/fokus/tetrad/BlockerService;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->scanUsage()V

    return-void
.end method

.method static synthetic access$500(Lru/fokus/tetrad/BlockerService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static batteryUnrestricted(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 351
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 353
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private block(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 224
    iget-wide v2, p0, Lru/fokus/tetrad/BlockerService;->lastHome:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 225
    iput-wide v0, p0, Lru/fokus/tetrad/BlockerService;->lastHome:J

    .line 226
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/BlockerService;->performGlobalAction(I)Z

    .line 228
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 229
    :goto_0
    invoke-direct {p0, p1}, Lru/fokus/tetrad/BlockerService;->showOverlay(Ljava/lang/String;)V

    .line 230
    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0, p1}, Lru/fokus/tetrad/Store;->recordAttempt(Ljava/lang/String;)V

    .line 231
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    .line 232
    return-void

    .line 228
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canDrawOverlays(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 346
    :try_start_0
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasUsageAccess(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 339
    :try_start_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 340
    const-string v2, "android:get_usage_stats"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 341
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 341
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private hideOverlay()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;

    .line 317
    :cond_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->blockedCache:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->reloadLists()V

    .line 219
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->blockedCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lru/fokus/tetrad/BlockerService;->blockSettingsCache:Z

    if-eqz v0, :cond_2

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lru/fokus/tetrad/BlockerService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 328
    invoke-virtual {v3, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 329
    :cond_2
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 331
    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reloadLists()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blocked()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->blockedCache:Ljava/util/Set;

    .line 114
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blockSettings()Z

    move-result v0

    iput-boolean v0, p0, Lru/fokus/tetrad/BlockerService;->blockSettingsCache:Z

    goto :goto_0
.end method

.method private scanUsage()V
    .locals 8

    .prologue
    .line 191
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->usm:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->hasUsageAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 193
    iget-object v2, p0, Lru/fokus/tetrad/BlockerService;->usm:Landroid/app/usage/UsageStatsManager;

    iget-wide v4, p0, Lru/fokus/tetrad/BlockerService;->lastUsageQuery:J

    const-wide/16 v6, 0x5dc

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v4

    .line 194
    iput-wide v0, p0, Lru/fokus/tetrad/BlockerService;->lastUsageQuery:J

    .line 195
    if-eqz v4, :cond_0

    .line 196
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 197
    const-wide/16 v2, 0x0

    .line 198
    const/4 v0, 0x0

    .line 199
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    invoke-virtual {v4, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 201
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v5

    .line 202
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-ltz v5, :cond_2

    .line 203
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    .line 204
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 207
    :cond_3
    if-eqz v0, :cond_4

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    .line 208
    :cond_4
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->hideOverlay()V

    goto :goto_0

    .line 209
    :cond_5
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    invoke-direct {p0, v0}, Lru/fokus/tetrad/BlockerService;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    invoke-direct {p0, v0}, Lru/fokus/tetrad/BlockerService;->block(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scanWindows()V
    .locals 5

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getWindows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 175
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    if-nez v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_2
    if-nez v0, :cond_4

    .line 186
    :cond_3
    :goto_1
    return-void

    .line 184
    :cond_4
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->hideOverlay()V

    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    goto :goto_1

    .line 185
    :cond_5
    invoke-direct {p0, v0}, Lru/fokus/tetrad/BlockerService;->isBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lru/fokus/tetrad/BlockerService;->block(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private schedule()V
    .locals 8

    .prologue
    .line 118
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService;->timeUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->timeUpNotified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService;->timeUp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v4}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blockingNow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lru/fokus/tetrad/BlockerService;->lastUsageQuery:J

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->usageForeground:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->hideOverlay()V

    goto :goto_0
.end method

.method private showOverlay(Ljava/lang/String;)V
    .locals 13

    .prologue
    const/high16 v12, 0x41e00000    # 28.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, -0x1

    const/16 v9, 0x11

    .line 235
    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    move-object v6, v0

    .line 236
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ru"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v3}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 237
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;

    if-nez v0, :cond_0

    .line 238
    invoke-static {p0}, Lru/fokus/tetrad/Ui;->init(Landroid/content/Context;)V

    .line 239
    new-instance v8, Lru/fokus/tetrad/BlockerService$3;

    invoke-direct {v8, p0, p0}, Lru/fokus/tetrad/BlockerService$3;-><init>(Lru/fokus/tetrad/BlockerService;Landroid/content/Context;)V

    .line 248
    const v0, -0xf1ebd0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 249
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 250
    const/16 v0, 0x12

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 252
    invoke-static {v12}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v12}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v10, v3, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 253
    const-string v2, "\u26d4"

    const/high16 v3, 0x42600000    # 56.0f

    const v4, -0x110e01

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    .line 254
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    const-string v2, ""

    const/high16 v3, 0x41c00000    # 24.0f

    const v4, -0x110e01

    sget-object v5, Lru/fokus/tetrad/Ui;->BOLD:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/BlockerService;->overlayTitle:Landroid/widget/TextView;

    .line 257
    iget-object v2, p0, Lru/fokus/tetrad/BlockerService;->overlayTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    iget-object v2, p0, Lru/fokus/tetrad/BlockerService;->overlayTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    const-string v2, ""

    const/high16 v3, 0x41800000    # 16.0f

    const v4, -0x5c532a

    sget-object v5, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-static {p0, v2, v3, v4, v5}, Lru/fokus/tetrad/Ui;->text(Landroid/content/Context;Ljava/lang/CharSequence;FILandroid/graphics/Typeface;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/fokus/tetrad/BlockerService;->overlayText:Landroid/widget/TextView;

    .line 260
    iget-object v2, p0, Lru/fokus/tetrad/BlockerService;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    iget-object v2, p0, Lru/fokus/tetrad/BlockerService;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    const-string v2, "\u0412\u0435\u0440\u043d\u0443\u0442\u044c\u0441\u044f \u043a \u0437\u0430\u043d\u044f\u0442\u0438\u044e"

    const/4 v3, 0x4

    invoke-static {p0, v2, v3, v11}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 263
    new-instance v3, Lru/fokus/tetrad/BlockerService$4;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/BlockerService$4;-><init>(Lru/fokus/tetrad/BlockerService;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    const-string v2, "\u041f\u043e\u043d\u044f\u0442\u043d\u043e"

    const/4 v3, 0x6

    invoke-static {p0, v2, v3, v10}, Lru/fokus/tetrad/Ui;->button(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 272
    new-instance v3, Lru/fokus/tetrad/BlockerService$5;

    invoke-direct {v3, p0}, Lru/fokus/tetrad/BlockerService$5;-><init>(Lru/fokus/tetrad/BlockerService;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    invoke-static {}, Lru/fokus/tetrad/Ui;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-static {p0}, Lru/fokus/tetrad/BlockerService;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    const/16 v0, 0x7f6

    :goto_1
    move v3, v0

    .line 289
    :goto_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x120

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 294
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 296
    :try_start_0
    iget-object v1, p0, Lru/fokus/tetrad/BlockerService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iput-object v8, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlayTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00ab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00bb \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlayText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u0434\u0451\u0442 \u0437\u0430\u043d\u044f\u0442\u0438\u0435 \u0434\u043e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". \u041f\u043e\u0441\u043b\u0435 \u043d\u0435\u0433\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0441\u043d\u043e\u0432\u0430 \u043e\u0442\u043a\u0440\u043e\u0435\u0442\u0441\u044f."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_3
    return-void

    .line 235
    :cond_1
    invoke-static {p0, p1}, Lru/fokus/tetrad/FocusActivity;->appName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    .line 285
    :cond_2
    const/16 v0, 0x7d3

    goto :goto_1

    .line 287
    :cond_3
    const/16 v3, 0x7f0

    goto :goto_2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;

    .line 302
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/fokus/tetrad/FocusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/BlockerService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 304
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private windowBelongsTo(ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getWindows()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 156
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 166
    :goto_0
    return v2

    .line 158
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 164
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 166
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 133
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    if-nez v0, :cond_2

    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    .line 135
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blockingNow()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->overlay:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->hideOverlay()V

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 140
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ru.fokus.tetrad."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->hideOverlay()V

    goto :goto_0

    .line 146
    :cond_4
    invoke-direct {p0, v0}, Lru/fokus/tetrad/BlockerService;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    if-ne v1, v3, :cond_5

    invoke-direct {p0, v0}, Lru/fokus/tetrad/BlockerService;->block(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lru/fokus/tetrad/BlockerService;->windowBelongsTo(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lru/fokus/tetrad/BlockerService;->block(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->hideOverlay()V

    .line 103
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 104
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method protected onServiceConnected()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 80
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    .line 81
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/BlockerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->wm:Landroid/view/WindowManager;

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/BlockerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lru/fokus/tetrad/BlockerService;->usm:Landroid/app/usage/UsageStatsManager;

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lru/fokus/tetrad/BlockerService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    const v1, 0x401820

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 89
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 90
    const-wide/16 v2, 0x50

    iput-wide v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 91
    invoke-virtual {p0, v0}, Lru/fokus/tetrad/BlockerService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService;->store:Lru/fokus/tetrad/Store;

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 95
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->reloadLists()V

    .line 96
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->schedule()V

    .line 97
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    const-string v0, "blocked"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "blockSettings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sActive"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->reloadLists()V

    .line 108
    :cond_1
    const-string v0, "sEnd"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sActive"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lru/fokus/tetrad/BlockerService;->schedule()V

    .line 109
    :cond_3
    return-void
.end method
