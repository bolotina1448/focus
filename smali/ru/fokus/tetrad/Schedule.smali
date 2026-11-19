.class public final Lru/fokus/tetrad/Schedule;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/fokus/tetrad/Schedule$Week;,
        Lru/fokus/tetrad/Schedule$Lesson;,
        Lru/fokus/tetrad/Schedule$Variant;,
        Lru/fokus/tetrad/Schedule$Parsed;,
        Lru/fokus/tetrad/Schedule$Reminder;
    }
.end annotation


# static fields
.field public static final BELLS:[[Ljava/lang/String;

.field public static final DAY_FULL:[Ljava/lang/String;

.field public static final DAY_SHORT:[Ljava/lang/String;

.field private static final GROUP:Ljava/util/regex/Pattern;

.field private static final TIME:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u041f\u043d"

    aput-object v1, v0, v4

    const-string v1, "\u0412\u0442"

    aput-object v1, v0, v5

    const-string v1, "\u0421\u0440"

    aput-object v1, v0, v6

    const-string v1, "\u0427\u0442"

    aput-object v1, v0, v3

    const-string v1, "\u041f\u0442"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0421\u0431"

    aput-object v2, v0, v1

    sput-object v0, Lru/fokus/tetrad/Schedule;->DAY_SHORT:[Ljava/lang/String;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u041f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a"

    aput-object v1, v0, v4

    const-string v1, "\u0412\u0442\u043e\u0440\u043d\u0438\u043a"

    aput-object v1, v0, v5

    const-string v1, "\u0421\u0440\u0435\u0434\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u0427\u0435\u0442\u0432\u0435\u0440\u0433"

    aput-object v1, v0, v3

    const-string v1, "\u041f\u044f\u0442\u043d\u0438\u0446\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0421\u0443\u0431\u0431\u043e\u0442\u0430"

    aput-object v2, v0, v1

    sput-object v0, Lru/fokus/tetrad/Schedule;->DAY_FULL:[Ljava/lang/String;

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "08:30"

    aput-object v2, v1, v4

    const-string v2, "09:15"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "09:25"

    aput-object v2, v1, v4

    const-string v2, "10:10"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "10:30"

    aput-object v2, v1, v4

    const-string v2, "11:15"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "11:35"

    aput-object v2, v1, v4

    const-string v2, "12:20"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "12:30"

    aput-object v2, v1, v4

    const-string v2, "13:15"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "13:25"

    aput-object v3, v2, v4

    const-string v3, "14:10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "14:20"

    aput-object v3, v2, v4

    const-string v3, "15:05"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "15:15"

    aput-object v3, v2, v4

    const-string v3, "16:00"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "16:10"

    aput-object v3, v2, v4

    const-string v3, "16:55"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lru/fokus/tetrad/Schedule;->BELLS:[[Ljava/lang/String;

    .line 197
    const-string v0, "(\\d{1,2})[:.](\\d{2})\\s*[-\u2013\u2014]\\s*(\\d{1,2})[:.](\\d{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Schedule;->TIME:Ljava/util/regex/Pattern;

    .line 198
    const-string v0, "\\[([^\\]]*)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/fokus/tetrad/Schedule;->GROUP:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allTokens(Lru/fokus/tetrad/Schedule$Week;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/fokus/tetrad/Schedule$Week;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 292
    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Lesson;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Variant;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->tokens(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 293
    :cond_2
    return-object v1
.end method

.method public static applyGroups(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Set;)Lru/fokus/tetrad/Schedule$Week;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/fokus/tetrad/Schedule$Week;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lru/fokus/tetrad/Schedule$Week;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v5, Lru/fokus/tetrad/Schedule$Week;

    invoke-direct {v5}, Lru/fokus/tetrad/Schedule$Week;-><init>()V

    .line 305
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v4, v0, :cond_a

    .line 306
    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Lesson;

    .line 307
    iget-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v5, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->copy(Lru/fokus/tetrad/Schedule$Lesson;)Lru/fokus/tetrad/Schedule$Lesson;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    iget-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Schedule$Variant;

    .line 310
    iget-object v2, v1, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-static {v2}, Lru/fokus/tetrad/Schedule;->tokens(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 311
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 312
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    .line 315
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->copy(Lru/fokus/tetrad/Schedule$Lesson;)Lru/fokus/tetrad/Schedule$Lesson;

    move-result-object v2

    .line 317
    iget-object v0, v2, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Variant;

    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, " / "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_6
    iget-object v1, v0, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 321
    :cond_7
    const-string v1, ""

    goto :goto_5

    .line 324
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    .line 325
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^( / )+|( / )+$"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    .line 326
    iget-object v0, v5, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 305
    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 329
    :cond_a
    return-object v5

    :cond_b
    move-object v1, v3

    goto/16 :goto_3
.end method

.method static cap(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    if-nez p0, :cond_1

    const-string v0, ""

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method static copy(Lru/fokus/tetrad/Schedule$Lesson;)Lru/fokus/tetrad/Schedule$Lesson;
    .locals 3

    .prologue
    .line 333
    new-instance v0, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-direct {v0}, Lru/fokus/tetrad/Schedule$Lesson;-><init>()V

    .line 334
    iget v1, p0, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    iput v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    iget-object v1, p0, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    iget-object v1, p0, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    iget-object v1, p0, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    iget-object v1, p0, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    .line 335
    iget-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    iget-object v2, p0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    return-object v0
.end method

.method public static current(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;)Lru/fokus/tetrad/Schedule$Lesson;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 347
    invoke-static {p1}, Lru/fokus/tetrad/Schedule;->dayIndex(Ljava/util/Calendar;)I

    move-result v0

    .line 348
    if-gez v0, :cond_0

    move-object v0, v1

    .line 351
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 350
    iget-object v3, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-virtual {v0}, Lru/fokus/tetrad/Schedule$Lesson;->startMin()I

    move-result v4

    if-lt v2, v4, :cond_1

    invoke-virtual {v0}, Lru/fokus/tetrad/Schedule$Lesson;->endMin()I

    move-result v4

    if-ge v2, v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 351
    goto :goto_0
.end method

.method public static dayByName(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x451

    const/16 v3, 0x435

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 174
    const/4 v0, 0x6

    new-array v3, v0, [[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "\u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a"

    aput-object v4, v0, v1

    const-string v4, "\u043f\u043d"

    aput-object v4, v0, v6

    aput-object v0, v3, v1

    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "\u0432\u0442\u043e\u0440\u043d\u0438\u043a"

    aput-object v4, v0, v1

    const-string v4, "\u0432\u0442"

    aput-object v4, v0, v6

    aput-object v0, v3, v6

    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "\u0441\u0440\u0435\u0434"

    aput-object v4, v0, v1

    const-string v4, "\u0441\u0440"

    aput-object v4, v0, v6

    aput-object v0, v3, v7

    const/4 v0, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "\u0447\u0435\u0442\u0432\u0435\u0440\u0433"

    aput-object v5, v4, v1

    const-string v5, "\u0447\u0442"

    aput-object v5, v4, v6

    aput-object v4, v3, v0

    const/4 v0, 0x4

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "\u043f\u044f\u0442\u043d\u0438\u0446"

    aput-object v5, v4, v1

    const-string v5, "\u043f\u0442"

    aput-object v5, v4, v6

    aput-object v4, v3, v0

    const/4 v0, 0x5

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "\u0441\u0443\u0431\u0431\u043e\u0442"

    aput-object v5, v4, v1

    const-string v5, "\u0441\u0431"

    aput-object v5, v4, v6

    aput-object v4, v3, v0

    move v0, v1

    .line 175
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    :goto_1
    return v0

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    array-length v0, v3

    if-ge v1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?s).*\\b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v1

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\\b.*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 177
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static dayIndex(Ljava/util/Calendar;)I
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 342
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public static describe(Lru/fokus/tetrad/Schedule$Week;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v3

    .line 432
    :goto_0
    const/4 v0, 0x6

    if-ge v4, v0, :cond_3

    .line 433
    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 434
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 435
    :cond_0
    sget-object v1, Lru/fokus/tetrad/Schedule;->DAY_FULL:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 436
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Schedule$Lesson;

    iget-object v1, v1, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 437
    :cond_2
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 439
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static family(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    const-string v0, "\\d+$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static fill(Lru/fokus/tetrad/Schedule$Week;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v2, v3

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Schedule$Lesson;

    .line 54
    iget v4, v1, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    if-gez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    iput v4, v1, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    .line 55
    :cond_1
    iget-object v4, v1, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    invoke-static {v4}, Lru/fokus/tetrad/Schedule;->minutes(Ljava/lang/String;)I

    move-result v5

    iget-object v4, v1, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    invoke-static {v4}, Lru/fokus/tetrad/Schedule;->minutes(Ljava/lang/String;)I

    move-result v4

    .line 56
    sget-object v7, Lru/fokus/tetrad/Schedule;->BELLS:[[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    iget v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 57
    iget-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lru/fokus/tetrad/Schedule;->joinVariants(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    .line 58
    :cond_2
    iget-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-static {v8, v3}, Lru/fokus/tetrad/Schedule;->joinVariants(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    .line 59
    :cond_3
    if-gez v5, :cond_4

    sget-object v5, Lru/fokus/tetrad/Schedule;->BELLS:[[Ljava/lang/String;

    aget-object v5, v5, v7

    aget-object v5, v5, v3

    invoke-static {v5}, Lru/fokus/tetrad/Schedule;->minutes(Ljava/lang/String;)I

    move-result v5

    .line 60
    :cond_4
    if-ltz v4, :cond_5

    if-gt v4, v5, :cond_6

    :cond_5
    add-int/lit8 v4, v5, 0x2d

    .line 61
    :cond_6
    invoke-static {v5}, Lru/fokus/tetrad/Schedule;->hhmm(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    .line 62
    invoke-static {v4}, Lru/fokus/tetrad/Schedule;->hhmm(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    .line 52
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 65
    :cond_7
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Week;
    .locals 17

    .prologue
    .line 68
    new-instance v3, Lru/fokus/tetrad/Schedule$Week;

    invoke-direct {v3}, Lru/fokus/tetrad/Schedule$Week;-><init>()V

    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v2, "days"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 72
    if-nez v7, :cond_0

    move-object v1, v3

    .line 122
    :goto_0
    return-object v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_7

    .line 74
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    if-nez v4, :cond_2

    .line 73
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 76
    :cond_2
    const-string v1, "day"

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 77
    const-string v1, "date"

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    const/16 v8, 0xa

    if-lt v5, v8, :cond_f

    .line 80
    :try_start_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 83
    invoke-static {v5}, Lru/fokus/tetrad/Schedule;->dayIndex(Ljava/util/Calendar;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 84
    if-ltz v1, :cond_e

    :goto_2
    move v5, v1

    .line 87
    :goto_3
    if-ltz v5, :cond_1

    const/4 v1, 0x5

    if-gt v5, v1, :cond_1

    .line 88
    :try_start_2
    const-string v1, "lessons"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 89
    if-eqz v8, :cond_1

    .line 90
    iget-object v1, v3, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const/4 v1, 0x0

    move v4, v1

    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 92
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 93
    if-nez v9, :cond_4

    .line 91
    :cond_3
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 85
    :catch_0
    move-exception v1

    move v5, v2

    goto :goto_3

    .line 94
    :cond_4
    const-string v1, "subject"

    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v10, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-direct {v10}, Lru/fokus/tetrad/Schedule$Lesson;-><init>()V

    .line 96
    const-string v1, "variants"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 97
    if-eqz v11, :cond_8

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v1, v12, :cond_8

    .line 98
    invoke-virtual {v11, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 99
    if-nez v12, :cond_6

    .line 97
    :cond_5
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 100
    :cond_6
    new-instance v13, Lru/fokus/tetrad/Schedule$Variant;

    invoke-direct {v13}, Lru/fokus/tetrad/Schedule$Variant;-><init>()V

    .line 101
    const-string v14, "subject"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lru/fokus/tetrad/Schedule;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lru/fokus/tetrad/Schedule;->cap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    .line 102
    const-string v14, "group"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lru/fokus/tetrad/Schedule;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "["

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "]"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    .line 103
    const-string v14, "room"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lru/fokus/tetrad/Schedule;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    .line 104
    iget-object v12, v13, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v10, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 120
    :catch_1
    move-exception v1

    .line 121
    :cond_7
    invoke-static {v3}, Lru/fokus/tetrad/Schedule;->fill(Lru/fokus/tetrad/Schedule$Week;)V

    move-object v1, v3

    .line 122
    goto/16 :goto_0

    .line 106
    :cond_8
    :try_start_3
    iget-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_b

    iget-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Schedule$Variant;

    iget-object v1, v1, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Schedule$Variant;

    iget-object v2, v1, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    .line 108
    :cond_9
    const-string v1, "room"

    const-string v11, ""

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v11, "room"

    iget-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/fokus/tetrad/Schedule$Variant;

    iget-object v1, v1, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    invoke-virtual {v9, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_a
    iget-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    :cond_c
    const-string v1, "n"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "n"

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :goto_8
    iput v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    .line 113
    const-string v1, "start"

    const-string v11, ""

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    .line 114
    const-string v1, "end"

    const-string v11, ""

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    .line 115
    invoke-static {v2}, Lru/fokus/tetrad/Schedule;->cap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    .line 116
    const-string v1, "room"

    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    const-string v9, ""

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    .line 117
    iget-object v1, v3, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 112
    :cond_d
    add-int/lit8 v1, v4, 0x1

    goto :goto_8

    :cond_e
    move v1, v2

    goto/16 :goto_2

    :cond_f
    move v5, v2

    goto/16 :goto_3
.end method

.method public static hhmm(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, p0, 0x3c

    if-ge v0, v2, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, p0, 0x3c

    if-ge v0, v2, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method static joinVariants(Ljava/util/List;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/fokus/tetrad/Schedule$Variant;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Variant;

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    if-eqz p1, :cond_2

    iget-object v3, v0, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static minutes(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    .line 44
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static missingDays(Lru/fokus/tetrad/Schedule$Week;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/fokus/tetrad/Schedule$Week;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 426
    :cond_1
    return-object v2
.end method

.method public static nextReminder(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;ZIZI)Lru/fokus/tetrad/Schedule$Reminder;
    .locals 14

    .prologue
    .line 384
    invoke-virtual {p0}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 419
    :goto_0
    return-object v2

    .line 385
    :cond_1
    const/4 v5, 0x0

    .line 386
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    const/16 v2, 0x8

    if-ge v6, v2, :cond_d

    .line 387
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Calendar;

    .line 388
    const/4 v2, 0x6

    invoke-virtual {v3, v2, v6}, Ljava/util/Calendar;->add(II)V

    .line 389
    const/16 v2, 0xb

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/16 v2, 0xe

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 393
    invoke-static {v3}, Lru/fokus/tetrad/Schedule;->dayIndex(Ljava/util/Calendar;)I

    move-result v2

    .line 394
    if-gez v2, :cond_3

    move-object v2, v5

    .line 386
    :cond_2
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v5, v2

    goto :goto_1

    .line 395
    :cond_3
    iget-object v4, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    .line 396
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v5

    goto :goto_2

    .line 397
    :cond_4
    if-eqz p2, :cond_c

    .line 398
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    move/from16 v0, p3

    int-to-long v10, v0

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 399
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-lez v2, :cond_c

    if-eqz v5, :cond_5

    iget-wide v10, v5, Lru/fokus/tetrad/Schedule$Reminder;->at:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_c

    .line 400
    :cond_5
    new-instance v5, Lru/fokus/tetrad/Schedule$Reminder;

    invoke-direct {v5}, Lru/fokus/tetrad/Schedule$Reminder;-><init>()V

    .line 401
    iput-wide v8, v5, Lru/fokus/tetrad/Schedule$Reminder;->at:J

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0421\u0435\u0433\u043e\u0434\u043d\u044f "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v8, v7

    const-string v7, "\u0443\u0440\u043e\u043a"

    const-string v10, "\u0443\u0440\u043e\u043a\u0430"

    const-string v11, "\u0443\u0440\u043e\u043a\u043e\u0432"

    invoke-static {v8, v9, v7, v10, v11}, Lru/fokus/tetrad/Ui;->plural(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lru/fokus/tetrad/Schedule$Reminder;->title:Ljava/lang/String;

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, v2, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 405
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lru/fokus/tetrad/Schedule$Reminder;->text:Ljava/lang/String;

    move-object v2, v5

    .line 408
    :goto_4
    if-eqz p4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v2

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/fokus/tetrad/Schedule$Lesson;

    .line 409
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Lru/fokus/tetrad/Schedule$Lesson;->startMin()I

    move-result v7

    sub-int v7, v7, p5

    int-to-long v10, v7

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 410
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_e

    if-eqz v4, :cond_8

    iget-wide v10, v4, Lru/fokus/tetrad/Schedule$Reminder;->at:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_e

    .line 411
    :cond_8
    new-instance v4, Lru/fokus/tetrad/Schedule$Reminder;

    invoke-direct {v4}, Lru/fokus/tetrad/Schedule$Reminder;-><init>()V

    .line 412
    iput-wide v8, v4, Lru/fokus/tetrad/Schedule$Reminder;->at:J

    .line 413
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0427\u0435\u0440\u0435\u0437 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u043c\u0438\u043d: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lru/fokus/tetrad/Schedule$Reminder;->title:Ljava/lang/String;

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-\u0439 \u0443\u0440\u043e\u043a, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u2013"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v2, ""

    :goto_6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lru/fokus/tetrad/Schedule$Reminder;->text:Ljava/lang/String;

    move-object v2, v4

    :goto_7
    move-object v4, v2

    .line 416
    goto/16 :goto_5

    .line 414
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", \u043a\u0430\u0431\u0438\u043d\u0435\u0442 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v2, v2, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, v4

    .line 417
    :cond_b
    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_c
    move-object v2, v5

    goto/16 :goto_4

    :cond_d
    move-object v2, v5

    goto/16 :goto_0

    :cond_e
    move-object v2, v4

    goto :goto_7
.end method

.method public static nextSchoolDay(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;)I
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 366
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v1, 0x7

    if-ge v3, v1, :cond_1

    .line 367
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 368
    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->dayIndex(Ljava/util/Calendar;)I

    move-result v2

    .line 369
    if-ltz v2, :cond_0

    iget-object v1, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 371
    :goto_1
    return v0

    .line 366
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static nextToday(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;)Lru/fokus/tetrad/Schedule$Lesson;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-static {p1}, Lru/fokus/tetrad/Schedule;->dayIndex(Ljava/util/Calendar;)I

    move-result v0

    .line 357
    if-gez v0, :cond_0

    move-object v0, v1

    .line 360
    :goto_0
    return-object v0

    .line 358
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 359
    iget-object v3, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-virtual {v0}, Lru/fokus/tetrad/Schedule$Lesson;->startMin()I

    move-result v4

    if-le v4, v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 360
    goto :goto_0
.end method

.method public static parseLines(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Parsed;
    .locals 18

    .prologue
    .line 207
    new-instance v8, Lru/fokus/tetrad/Schedule$Parsed;

    invoke-direct {v8}, Lru/fokus/tetrad/Schedule$Parsed;-><init>()V

    .line 208
    const/4 v5, -0x1

    .line 209
    const-string v1, "\r"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v10, :cond_1c

    aget-object v1, v9, v7

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[*#>\\-\u2022\\s]+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "**"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "```"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v5

    .line 209
    :goto_1
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v5, v1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v3, "\u0434\u043d\u0438"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[,;]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 215
    invoke-static {v4}, Lru/fokus/tetrad/Schedule;->dayByName(Ljava/lang/String;)I

    move-result v4

    .line 216
    if-ltz v4, :cond_1

    iget-object v6, v8, Lru/fokus/tetrad/Schedule$Parsed;->mentioned:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v5

    .line 218
    goto :goto_1

    .line 220
    :cond_3
    const-string v3, "\u0434\u0435\u043d\u044c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->dayByName(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_6

    .line 221
    :cond_4
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->dayByName(Ljava/lang/String;)I

    move-result v1

    .line 222
    if-ltz v1, :cond_1b

    iget-object v2, v8, Lru/fokus/tetrad/Schedule$Parsed;->mentioned:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 225
    :cond_6
    if-ltz v5, :cond_1b

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move v1, v5

    goto/16 :goto_1

    .line 226
    :cond_7
    const-string v2, "\\|"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 227
    array-length v1, v3

    const/4 v2, 0x3

    if-ge v1, v2, :cond_8

    move v1, v5

    goto/16 :goto_1

    .line 228
    :cond_8
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    array-length v1, v3

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_3
    array-length v2, v3

    const/4 v6, 0x2

    if-le v2, v6, :cond_a

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 229
    :goto_4
    array-length v6, v3

    const/4 v11, 0x3

    if-le v6, v11, :cond_b

    const/4 v6, 0x3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 230
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "\u2014"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v11, "\u043f\u0440\u0435\u0434\u043c\u0435\u0442"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v1, v5

    goto/16 :goto_1

    .line 228
    :cond_9
    const-string v1, ""

    goto :goto_3

    :cond_a
    const-string v2, ""

    goto :goto_4

    .line 229
    :cond_b
    const-string v3, ""

    goto :goto_5

    .line 231
    :cond_c
    new-instance v11, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-direct {v11}, Lru/fokus/tetrad/Schedule$Lesson;-><init>()V

    .line 232
    :try_start_0
    const-string v6, "\\D"

    const-string v12, ""

    invoke-virtual {v4, v6, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v11, Lru/fokus/tetrad/Schedule$Lesson;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_6
    sget-object v4, Lru/fokus/tetrad/Schedule;->TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 235
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v4}, Lru/fokus/tetrad/Schedule;->hhmm(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    .line 236
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->hhmm(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    .line 238
    :cond_d
    invoke-static {v2}, Lru/fokus/tetrad/Schedule;->splitTop(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 239
    const-string v1, "\u2014"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "-"

    const-string v6, ""

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->splitTop(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 240
    const/4 v1, 0x0

    .line 241
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v1

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v14, Lru/fokus/tetrad/Schedule;->GROUP:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :goto_8
    move v4, v1

    goto :goto_7

    .line 232
    :catch_0
    move-exception v4

    const/4 v4, -0x1

    iput v4, v11, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    goto/16 :goto_6

    .line 242
    :cond_e
    if-nez v4, :cond_11

    .line 243
    const-string v1, "\\s+"

    const-string v4, " "

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->cap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    .line 244
    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v3, ""

    :cond_f
    iput-object v3, v11, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    .line 268
    :cond_10
    iget-object v1, v11, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v11, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v5

    goto/16 :goto_1

    .line 246
    :cond_11
    const/4 v1, 0x0

    .line 247
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v2, v1

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    sget-object v3, Lru/fokus/tetrad/Schedule;->GROUP:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 250
    :goto_a
    const-string v4, "\\[[^\\]]*\\]"

    const-string v6, ""

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\s+"

    const-string v6, " "

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->cap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 252
    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 253
    :goto_b
    array-length v1, v4

    const/4 v6, 0x1

    if-le v1, v6, :cond_14

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    array-length v6, v4

    if-lt v1, v6, :cond_14

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_14

    const/4 v1, 0x1

    .line 254
    :goto_c
    if-eqz v1, :cond_17

    .line 255
    array-length v0, v4

    move/from16 v16, v0

    const/4 v1, 0x0

    move v6, v1

    move v3, v2

    :goto_d
    move/from16 v0, v16

    if-ge v6, v0, :cond_16

    aget-object v1, v4, v6

    .line 256
    new-instance v17, Lru/fokus/tetrad/Schedule$Variant;

    invoke-direct/range {v17 .. v17}, Lru/fokus/tetrad/Schedule$Variant;-><init>()V

    .line 257
    move-object/from16 v0, v17

    iput-object v15, v0, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_15

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_e
    move-object/from16 v0, v17

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    .line 258
    iget-object v1, v11, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v3, v2

    goto :goto_d

    .line 249
    :cond_12
    const-string v3, ""

    goto :goto_a

    .line 252
    :cond_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    move-object v4, v1

    goto :goto_b

    .line 253
    :cond_14
    const/4 v1, 0x0

    goto :goto_c

    .line 257
    :cond_15
    const-string v1, ""

    move v2, v3

    goto :goto_e

    :cond_16
    move v1, v3

    :goto_f
    move v2, v1

    .line 266
    goto/16 :goto_9

    .line 261
    :cond_17
    new-instance v4, Lru/fokus/tetrad/Schedule$Variant;

    invoke-direct {v4}, Lru/fokus/tetrad/Schedule$Variant;-><init>()V

    .line 262
    iput-object v15, v4, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    iput-object v3, v4, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    .line 263
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_18

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v2, v3

    :goto_10
    iput-object v1, v4, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    .line 264
    iget-object v1, v11, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_f

    .line 263
    :cond_18
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_10

    :cond_19
    const-string v1, ""

    goto :goto_10

    .line 269
    :cond_1a
    iget-object v1, v8, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    iget-object v1, v1, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    move v1, v5

    goto/16 :goto_1

    .line 271
    :cond_1c
    iget-object v1, v8, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->fill(Lru/fokus/tetrad/Schedule$Week;)V

    .line 272
    return-object v8

    :cond_1d
    move v1, v4

    goto/16 :goto_8
.end method

.method static splitTop(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v6, :cond_3

    aget-char v7, v5, v1

    .line 186
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 187
    :cond_0
    const/16 v8, 0x5d

    if-ne v7, v8, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 188
    :cond_1
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 185
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    :cond_5
    return-object v1
.end method

.method public static toJson(Lru/fokus/tetrad/Schedule$Week;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 127
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 128
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_3

    .line 129
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 130
    iget-object v0, p0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Lesson;

    .line 131
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "n"

    iget v7, v0, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "start"

    iget-object v7, v0, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "end"

    iget-object v7, v0, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "subject"

    iget-object v7, v0, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "room"

    iget-object v7, v0, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 132
    iget-object v6, v0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 133
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 134
    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Lesson;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Variant;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "subject"

    iget-object v10, v0, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "group"

    iget-object v10, v0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "room"

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    const-string v0, "{\"days\":[]}"

    :goto_3
    return-object v0

    .line 135
    :cond_0
    :try_start_1
    const-string v0, "variants"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 139
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "day"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "lessons"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 141
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "days"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public static tokens(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 280
    if-nez p0, :cond_1

    .line 286
    :cond_0
    return-object v0

    .line 281
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x401

    const/16 v3, 0x415

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[/+,;]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 282
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "^\\d+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".*\\d.*|[\u0410-\u042fA-Z]{2,4}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 281
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
