.class public final Lru/fokus/tetrad/GroupPicker;
.super Ljava/lang/Object;
.source "GroupPicker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->raw(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->allTokens(Lru/fokus/tetrad/Schedule$Week;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static families(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 69
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->family(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    return-object v2
.end method

.method public static mine(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 33
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "schedGroups"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    return-object v1
.end method

.method public static needsChoice(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->available(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->mine(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    invoke-static {v0}, Lru/fokus/tetrad/GroupPicker;->families(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_2

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_1

    .line 62
    :cond_3
    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static raw(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "scheduleRaw"

    const-string v2, "{\"days\":[]}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->fromJson(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v0

    return-object v0
.end method

.method public static save(Landroid/content/Context;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lru/fokus/tetrad/Store;

    invoke-direct {v0, p0}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "schedGroups"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->raw(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    invoke-static {v1, p1}, Lru/fokus/tetrad/Schedule;->applyGroups(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Set;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->fill(Lru/fokus/tetrad/Schedule$Week;)V

    .line 49
    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "schedule"

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->toJson(Lru/fokus/tetrad/Schedule$Week;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    invoke-static {p0}, Lru/fokus/tetrad/LessonReminders;->schedule(Landroid/content/Context;)V

    .line 52
    :cond_2
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v7, 0x41000000    # 8.0f

    .line 87
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->available(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041c\u043e\u0438 \u0433\u0440\u0443\u043f\u043f\u044b"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0413\u0440\u0443\u043f\u043f\u044b \u043f\u043e\u044f\u0432\u044f\u0442\u0441\u044f, \u043a\u043e\u0433\u0434\u0430 \u0432 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0438 \u043d\u0430\u0439\u0434\u0443\u0442\u0441\u044f \u0443\u0440\u043e\u043a\u0438 \u043f\u043e \u0433\u0440\u0443\u043f\u043f\u0430\u043c (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, [10\u041c2] \u0438\u043b\u0438 [10\u04181]). \u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u0439 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043f\u043e \u0444\u043e\u0442\u043e."

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041f\u043e\u043d\u044f\u0442\u043d\u043e"

    .line 91
    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->mine(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 95
    invoke-interface {v4, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 96
    invoke-static {v0}, Lru/fokus/tetrad/GroupPicker;->families(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    .line 98
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 99
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lru/fokus/tetrad/Ui;->col(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 100
    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v0

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    invoke-static {v5}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v5

    invoke-static {v7}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v7

    invoke-virtual {v1, v0, v2, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 101
    invoke-virtual {v6, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 103
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lru/fokus/tetrad/GroupPicker$1;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lru/fokus/tetrad/GroupPicker$1;-><init>(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Set;[Ljava/lang/Runnable;)V

    aput-object v0, v5, v8

    .line 129
    aget-object v0, v5, v8

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041c\u043e\u0438 \u0433\u0440\u0443\u043f\u043f\u044b"

    .line 132
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    new-instance v2, Lru/fokus/tetrad/GroupPicker$2;

    invoke-direct {v2, p0, v4, p1}, Lru/fokus/tetrad/GroupPicker$2;-><init>(Landroid/app/Activity;Ljava/util/Set;Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 138
    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static summary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->mine(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 79
    invoke-static {p0}, Lru/fokus/tetrad/GroupPicker;->available(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 80
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u043d\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u044b"

    .line 83
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
