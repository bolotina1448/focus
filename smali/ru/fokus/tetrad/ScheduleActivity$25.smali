.class Lru/fokus/tetrad/ScheduleActivity$25;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->makePlan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/ScheduleActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 557
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 558
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$800(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v0

    invoke-static {v0, v1}, Lru/fokus/tetrad/Schedule;->nextSchoolDay(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Calendar;)I

    move-result v2

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/ScheduleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Mesh;->loggedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/ScheduleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Mesh;->homeworks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    .line 563
    iget-boolean v5, v0, Lru/fokus/tetrad/Mesh$Hw;->done:Z

    if-nez v5, :cond_0

    .line 564
    const-string v5, "- "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lru/fokus/tetrad/Mesh$Hw;->date:Ljava/lang/String;

    invoke-static {v6}, Lru/fokus/tetrad/Mesh;->dayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lru/fokus/tetrad/Mesh$Hw;->subject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lru/fokus/tetrad/Mesh$Hw;->text:Ljava/lang/String;

    const/16 v6, 0xa

    const/16 v7, 0x20

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 568
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->lessonItems()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v8}, Lru/fokus/tetrad/Homework;->text(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "- \u0423\u0436\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043e \u043d\u0430 \u0441\u0435\u0433\u043e\u0434\u043d\u044f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_2
    sget-object v0, Lru/fokus/tetrad/Schedule;->DAY_FULL:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->dayIndex(Ljava/util/Calendar;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget-object v0, v0, v4

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0422\u044b \u2014 \u0448\u043a\u043e\u043b\u044c\u043d\u044b\u0439 \u043d\u0430\u0441\u0442\u0430\u0432\u043d\u0438\u043a. \u0421\u0435\u0433\u043e\u0434\u043d\u044f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->dayIndex(Ljava/util/Calendar;)I

    move-result v5

    if-gez v5, :cond_3

    const-string v0, "\u0432\u043e\u0441\u043a\u0440\u0435\u0441\u0435\u043d\u044c\u0435"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", \u0441\u0435\u0439\u0447\u0430\u0441 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xb

    .line 572
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->hhmm(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u0423\u0447\u0435\u043d\u0438\u043a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\n\u0420\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043d\u0430 \u043d\u0435\u0434\u0435\u043b\u044e:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    .line 574
    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$800(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v1

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->describe(Lru/fokus/tetrad/Schedule$Week;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    if-ltz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0411\u043b\u0438\u0436\u0430\u0439\u0448\u0438\u0439 \u0443\u0447\u0435\u0431\u043d\u044b\u0439 \u0434\u0435\u043d\u044c: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lru/fokus/tetrad/Schedule;->DAY_FULL:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 576
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e\u043c\u0430\u0448\u043d\u0438\u0435 \u0437\u0430\u0434\u0430\u043d\u0438\u044f:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0421\u043e\u0441\u0442\u0430\u0432\u044c \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439 \u043f\u043b\u0430\u043d \u043d\u0430 \u0441\u0435\u0433\u043e\u0434\u043d\u044f (\u0434\u043e 120 \u0441\u043b\u043e\u0432), \u043f\u043e-\u0440\u0443\u0441\u0441\u043a\u0438, \u0431\u0435\u0437 Markdown \u0438 \u0437\u0432\u0451\u0437\u0434\u043e\u0447\u0435\u043a: \u0447\u0442\u043e \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u0438 \u0432 \u043a\u0430\u043a\u043e\u043c \u043f\u043e\u0440\u044f\u0434\u043a\u0435, \u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0438\u043d\u0443\u0442 \u043f\u0440\u0438\u043c\u0435\u0440\u043d\u043e \u043d\u0430 \u043a\u0430\u0436\u0434\u043e\u0435, \u0433\u0434\u0435 \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u043f\u0435\u0440\u0435\u0440\u044b\u0432. \u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0442\u043e, \u0447\u0442\u043e \u043d\u0443\u0436\u043d\u043e \u043a \u0431\u043b\u0438\u0436\u0430\u0439\u0448\u0435\u043c\u0443 \u0434\u043d\u044e, \u0441\u043b\u043e\u0436\u043d\u043e\u0435 \u2014 \u043f\u043e\u043a\u0430 \u0441\u0432\u0435\u0436\u0430\u044f \u0433\u043e\u043b\u043e\u0432\u0430. \u0415\u0441\u043b\u0438 \u0437\u0430\u0434\u0430\u043d\u0438\u0435 \u043d\u0430 \u0434\u0430\u043b\u044c\u043d\u0438\u0439 \u0434\u0435\u043d\u044c \u0431\u043e\u043b\u044c\u0448\u043e\u0435 \u2014 \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0438 \u043d\u0430\u0447\u0430\u0442\u044c \u043f\u043e\u043d\u0435\u043c\u043d\u043e\u0433\u0443. \u041d\u0435 \u0432\u044b\u0434\u0443\u043c\u044b\u0432\u0430\u0439 \u0437\u0430\u0434\u0430\u043d\u0438\u044f, \u043a\u043e\u0442\u043e\u0440\u044b\u0445 \u043d\u0435\u0442."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    :try_start_1
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/ScheduleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x384

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/CheckState;->clean(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 585
    :goto_5
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    new-instance v2, Lru/fokus/tetrad/ScheduleActivity$25$1;

    invoke-direct {v2, p0, v0}, Lru/fokus/tetrad/ScheduleActivity$25$1;-><init>(Lru/fokus/tetrad/ScheduleActivity$25;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/ScheduleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 586
    return-void

    .line 571
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 573
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v4}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v4

    invoke-virtual {v4}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043a\u043b\u0430\u0441\u0441\u0430"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 575
    :cond_5
    const-string v0, ""

    goto :goto_3

    .line 576
    :cond_6
    const-string v0, "\u0421\u043f\u0438\u0441\u043e\u043a \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0445 \u0437\u0430\u0434\u0430\u043d\u0438\u0439 \u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u0435\u043d \u2014 \u043e\u043f\u0438\u0440\u0430\u0439\u0441\u044f \u043d\u0430 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u0431\u043b\u0438\u0436\u0430\u0439\u0448\u0435\u0433\u043e \u0434\u043d\u044f.\n"

    goto :goto_4

    .line 582
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 583
    :catch_2
    move-exception v0

    const-string v0, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u0441\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u043f\u043b\u0430\u043d. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    goto :goto_5
.end method
