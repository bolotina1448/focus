.class public final Lru/fokus/tetrad/Grades;
.super Ljava/lang/Object;
.source "Grades.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/Grades$Subject;
    }
.end annotation


# static fields
.field public static final EASY:I = 0x0

.field public static final STABLE:I = 0x1

.field public static final WEAK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyze(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Mark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Grades$Subject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    new-instance v1, Lru/fokus/tetrad/Grades$1;

    invoke-direct {v1}, Lru/fokus/tetrad/Grades$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Mark;

    .line 41
    iget-object v1, v0, Lru/fokus/tetrad/Mesh$Mark;->subject:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Grades$Subject;

    .line 42
    if-nez v1, :cond_0

    new-instance v1, Lru/fokus/tetrad/Grades$Subject;

    invoke-direct {v1}, Lru/fokus/tetrad/Grades$Subject;-><init>()V

    iget-object v4, v0, Lru/fokus/tetrad/Mesh$Mark;->subject:Ljava/lang/String;

    iput-object v4, v1, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    iget-object v4, v0, Lru/fokus/tetrad/Mesh$Mark;->subject:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    iget-object v1, v1, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Grades$Subject;

    .line 47
    iget-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    .line 48
    iget-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-static {v1}, Lru/fokus/tetrad/Grades;->weighted(Ljava/util/List;)D

    move-result-wide v2

    iput-wide v2, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    .line 49
    iget-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Mesh$Mark;

    .line 50
    iget-wide v6, v1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    iget v1, v0, Lru/fokus/tetrad/Grades$Subject;->twos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lru/fokus/tetrad/Grades$Subject;->twos:I

    goto :goto_2

    .line 51
    :cond_3
    iget-wide v6, v1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    const-wide/high16 v8, 0x400c000000000000L    # 3.5

    cmpg-double v1, v6, v8

    if-gez v1, :cond_2

    iget v1, v0, Lru/fokus/tetrad/Grades$Subject;->threes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lru/fokus/tetrad/Grades$Subject;->threes:I

    goto :goto_2

    .line 53
    :cond_4
    const/4 v1, 0x1

    iget v2, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 54
    iget-object v2, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    const/4 v3, 0x0

    iget v6, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v2, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lru/fokus/tetrad/Grades;->weighted(Ljava/util/List;)D

    move-result-wide v2

    iput-wide v2, v0, Lru/fokus/tetrad/Grades$Subject;->earlyAvg:D

    .line 55
    iget-object v2, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    iget v3, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lru/fokus/tetrad/Grades;->weighted(Ljava/util/List;)D

    move-result-wide v2

    iput-wide v2, v0, Lru/fokus/tetrad/Grades$Subject;->recentAvg:D

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v1, 0x0

    iget v2, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    add-int/lit8 v2, v2, -0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :goto_3
    iget v1, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    if-ge v2, v1, :cond_6

    iget-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Mesh$Mark;

    iget-wide v6, v1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    cmpg-double v1, v6, v8

    if-gez v1, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 58
    :cond_6
    invoke-virtual {v0}, Lru/fokus/tetrad/Grades$Subject;->trend()D

    move-result-wide v6

    .line 59
    iget-wide v8, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    cmpg-double v1, v8, v10

    if-ltz v1, :cond_7

    if-nez v3, :cond_7

    iget-wide v8, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    const-wide v10, 0x4010cccccccccccdL    # 4.2

    cmpg-double v1, v8, v10

    if-gez v1, :cond_a

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    cmpg-double v1, v6, v8

    if-gtz v1, :cond_a

    .line 60
    :cond_7
    const/4 v1, 0x2

    iput v1, v0, Lru/fokus/tetrad/Grades$Subject;->status:I

    .line 61
    if-eqz v3, :cond_8

    const-string v1, "\u0421\u0440\u0435\u0434\u0438 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0445 \u043e\u0446\u0435\u043d\u043e\u043a \u0435\u0441\u0442\u044c \u0434\u0432\u043e\u0439\u043a\u0430"

    .line 63
    :goto_4
    iput-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->reason:Ljava/lang/String;

    goto/16 :goto_1

    .line 62
    :cond_8
    iget-wide v2, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    const-wide v6, 0x400ccccccccccccdL    # 3.6

    cmpg-double v1, v2, v6

    if-gez v1, :cond_9

    const-string v1, "\u0421\u0440\u0435\u0434\u043d\u0438\u0439 \u0431\u0430\u043b\u043b \u043d\u0438\u0436\u0435 3,6"

    goto :goto_4

    .line 63
    :cond_9
    const-string v1, "\u041e\u0446\u0435\u043d\u043a\u0438 \u0432 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0435\u0435 \u0432\u0440\u0435\u043c\u044f \u0441\u043d\u0438\u0436\u0430\u044e\u0442\u0441\u044f"

    goto :goto_4

    .line 64
    :cond_a
    iget-wide v2, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    cmpl-double v1, v2, v8

    if-ltz v1, :cond_c

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    cmpl-double v1, v6, v2

    if-lez v1, :cond_c

    .line 65
    const/4 v1, 0x0

    iput v1, v0, Lru/fokus/tetrad/Grades$Subject;->status:I

    .line 66
    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v6, v2

    if-ltz v1, :cond_b

    const-string v1, "\u0412\u044b\u0441\u043e\u043a\u0438\u0439 \u0431\u0430\u043b\u043b \u0438 \u0440\u0430\u0441\u0442\u0451\u0442"

    :goto_5
    iput-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->reason:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v1, "\u0421\u0442\u0430\u0431\u0438\u043b\u044c\u043d\u043e \u0432\u044b\u0441\u043e\u043a\u0438\u0439 \u0431\u0430\u043b\u043b"

    goto :goto_5

    .line 68
    :cond_c
    const/4 v1, 0x1

    iput v1, v0, Lru/fokus/tetrad/Grades$Subject;->status:I

    .line 69
    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v6, v2

    if-ltz v1, :cond_d

    const-string v1, "\u041e\u0446\u0435\u043d\u043a\u0438 \u0440\u0430\u0441\u0442\u0443\u0442 \u2014 \u0435\u0449\u0451 \u043d\u0435\u043c\u043d\u043e\u0433\u043e \u0434\u043e \u00ab5\u00bb"

    .line 71
    :goto_6
    iput-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->reason:Ljava/lang/String;

    goto/16 :goto_1

    .line 70
    :cond_d
    const-wide v2, -0x4026666666666666L    # -0.4

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_e

    const-string v1, "\u041e\u0446\u0435\u043d\u043a\u0438 \u043d\u0435\u043c\u043d\u043e\u0433\u043e \u0441\u043d\u0438\u0436\u0430\u044e\u0442\u0441\u044f \u2014 \u0441\u0442\u043e\u0438\u0442 \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c \u0442\u0435\u043c\u044b"

    goto :goto_6

    .line 71
    :cond_e
    iget v1, v0, Lru/fokus/tetrad/Grades$Subject;->threes:I

    if-lez v1, :cond_f

    const-string v1, "\u0415\u0441\u0442\u044c \u0442\u0440\u043e\u0439\u043a\u0438 \u2014 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u0434\u0442\u044f\u043d\u0443\u0442\u044c \u0434\u043e \u00ab5\u00bb"

    goto :goto_6

    :cond_f
    const-string v1, "\u0420\u043e\u0432\u043d\u043e, \u0431\u0435\u0437 \u043f\u0440\u043e\u0432\u0430\u043b\u043e\u0432"

    goto :goto_6

    .line 74
    :cond_10
    new-instance v0, Lru/fokus/tetrad/Grades$2;

    invoke-direct {v0}, Lru/fokus/tetrad/Grades$2;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    return-object v4
.end method

.method public static fmt(D)Ljava/lang/String;
    .locals 6

    .prologue
    .line 81
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rounded(D)I
    .locals 2

    .prologue
    .line 86
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static summary(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Grades$Subject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Grades$Subject;

    .line 93
    iget-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \u0441\u0440\u0435\u0434\u043d\u0438\u0439 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v0, Lru/fokus/tetrad/Grades$Subject;->avg:D

    invoke-static {v6, v7}, Lru/fokus/tetrad/Grades;->fmt(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u043e\u0446\u0435\u043d\u043e\u043a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u0434\u0432\u043e\u0435\u043a "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lru/fokus/tetrad/Grades$Subject;->twos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u0442\u0440\u043e\u0435\u043a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lru/fokus/tetrad/Grades$Subject;->threes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    iget v1, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const-string v1, ", \u0434\u0438\u043d\u0430\u043c\u0438\u043a\u0430 "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lru/fokus/tetrad/Grades$Subject;->trend()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_3

    const-string v1, "+"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lru/fokus/tetrad/Grades$Subject;->trend()D

    move-result-wide v6

    invoke-static {v6, v7}, Lru/fokus/tetrad/Grades;->fmt(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    const-string v1, ", \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0435: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/4 v1, 0x0

    iget v2, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    add-int/lit8 v2, v2, -0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :goto_2
    iget v1, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    if-ge v2, v1, :cond_4

    .line 98
    iget-object v1, v0, Lru/fokus/tetrad/Grades$Subject;->marks:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Mesh$Mark;

    .line 99
    iget-wide v6, v1, Lru/fokus/tetrad/Mesh$Mark;->value:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    iget-object v5, v1, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lru/fokus/tetrad/Mesh$Mark;->form:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    iget v1, v0, Lru/fokus/tetrad/Grades$Subject;->count:I

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 95
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 103
    :cond_4
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 105
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static weighted(Ljava/util/List;)D
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Mesh$Mark;",
            ">;)D"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    move-wide v6, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Mark;

    iget-wide v10, v0, Lru/fokus/tetrad/Mesh$Mark;->value:D

    iget v1, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    int-to-double v12, v1

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    iget v0, v0, Lru/fokus/tetrad/Mesh$Mark;->weight:I

    int-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 31
    :cond_0
    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    :goto_1
    return-wide v4

    :cond_1
    div-double v4, v6, v2

    goto :goto_1
.end method
