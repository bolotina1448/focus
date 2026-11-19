.class Lru/fokus/tetrad/ScheduleActivity$22;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->recognize(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/ScheduleActivity;

.field final synthetic val$forced:I

.field final synthetic val$photos:Ljava/util/List;

.field final synthetic val$todayIso:Ljava/lang/String;

.field final synthetic val$todayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 447
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$photos:Ljava/util/List;

    iput p3, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$forced:I

    iput-object p4, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$todayIso:Ljava/lang/String;

    iput-object p5, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$todayName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 448
    new-instance v11, Lru/fokus/tetrad/Schedule$Week;

    invoke-direct {v11}, Lru/fokus/tetrad/Schedule$Week;-><init>()V

    .line 449
    const/4 v6, 0x0

    .line 450
    const/4 v1, 0x0

    .line 451
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_12

    .line 452
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$photos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (\u0444\u043e\u0442\u043e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0438\u0437 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 456
    :goto_1
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0427\u0438\u0442\u0430\u044e \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1500(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)V

    .line 458
    iget v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$forced:I

    if-ltz v0, :cond_3

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0430 \u0444\u043e\u0442\u043e \u2014 \u0448\u043a\u043e\u043b\u044c\u043d\u043e\u0435 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043d\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lru/fokus/tetrad/Schedule;->DAY_FULL:[Ljava/lang/String;

    iget v2, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$forced:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u0435\u0440\u0435\u043f\u0438\u0448\u0438 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u043f\u043e\u0441\u0442\u0440\u043e\u0447\u043d\u043e, \u0422\u041e\u0427\u041d\u041e \u043a\u0430\u043a \u043d\u0430\u043f\u0438\u0441\u0430\u043d\u043e, \u043d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u0441\u043e\u043a\u0440\u0430\u0449\u0430\u044f \u0438 \u043d\u0435 \u0432\u044b\u0434\u0443\u043c\u044b\u0432\u0430\u044f. \u041a\u043e\u043b\u043e\u043d\u043a\u0443 \u00ab\u0443\u0447\u0438\u0442\u0435\u043b\u044c\u00bb \u043d\u0435 \u043f\u0435\u0440\u0435\u043f\u0438\u0441\u044b\u0432\u0430\u0439.\n\u0424\u043e\u0440\u043c\u0430\u0442 \u043e\u0442\u0432\u0435\u0442\u0430 \u2014 \u0442\u043e\u043b\u044c\u043a\u043e \u0441\u0442\u0440\u043e\u043a\u0438, \u0431\u0435\u0437 \u043f\u043e\u044f\u0441\u043d\u0435\u043d\u0438\u0439:\n\u0414\u041d\u0418: <\u0432\u0441\u0435 \u0434\u043d\u0438 \u043d\u0435\u0434\u0435\u043b\u0438, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u0435\u0441\u0442\u044c \u043d\u0430 \u0444\u043e\u0442\u043e, \u0447\u0435\u0440\u0435\u0437 \u0437\u0430\u043f\u044f\u0442\u0443\u044e>\n\u0414\u0415\u041d\u042c: <\u0434\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438>\n<\u043d\u043e\u043c\u0435\u0440 \u0443\u0440\u043e\u043a\u0430> | <\u0432\u0440\u0435\u043c\u044f> | <\u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u2014 \u0432\u0435\u0441\u044c \u0442\u0435\u043a\u0441\u0442 \u044f\u0447\u0435\u0439\u043a\u0438 \u0446\u0435\u043b\u0438\u043a\u043e\u043c, \u0441\u043e \u0441\u043a\u043e\u0431\u043a\u0430\u043c\u0438 \u0438 \u00ab/\u00bb> | <\u043a\u0430\u0431\u0438\u043d\u0435\u0442 \u2014 \u0432\u0435\u0441\u044c \u0442\u0435\u043a\u0441\u0442 \u044f\u0447\u0435\u0439\u043a\u0438>\n\u041f\u0440\u0438\u043c\u0435\u0440:\n\u0414\u041d\u0418: \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a, \u0432\u0442\u043e\u0440\u043d\u0438\u043a\n\u0414\u0415\u041d\u042c: \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a\n0 | 08:05-08:50 | \u0444\u0438\u0437\u0438\u043a\u0430 | 401\n2 | 09:55-10:40 | \u043c\u0430\u0442\u0435\u043c\u0430\u0442\u0438\u043a\u0430 [10\u041c1] / \u0440\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a [10\u041c2] / \u043c\u0430\u0442\u0435\u043c\u0430\u0442\u0438\u043a\u0430 [10\u041c3] | 300\u0440 / 202 / 501\n\u0414\u0415\u041d\u042c: \u0432\u0442\u043e\u0440\u043d\u0438\u043a\n1 | 09:00-09:45 | \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u043e\u0437\u043d\u0430\u043d\u0438\u0435 [10\u04181+\u0415\u041d] / \u0438\u0441\u0442\u043e\u0440\u0438\u044f [10\u04182] | 304 / 204\n\u041d\u043e\u043c\u0435\u0440\u0430 \u0443\u0440\u043e\u043a\u043e\u0432 \u2014 \u043a\u0430\u043a \u043d\u0430 \u0444\u043e\u0442\u043e (\u043c\u043e\u0433\u0443\u0442 \u043d\u0430\u0447\u0438\u043d\u0430\u0442\u044c\u0441\u044f \u0441 0). \u0421\u0442\u0440\u043e\u043a\u0438 \u0431\u0435\u0437 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430 \u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438. \u0415\u0441\u043b\u0438 \u043d\u0430 \u0444\u043e\u0442\u043e \u043b\u0438\u0441\u0442\u043e\u043a \u0431\u0435\u0437 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u2014 \u0432\u0441\u0451 \u0440\u0430\u0432\u043d\u043e \u043f\u0438\u0448\u0438 \u0432 \u044d\u0442\u043e\u043c \u0444\u043e\u0440\u043c\u0430\u0442\u0435; \u0435\u0441\u043b\u0438 \u0432\u0440\u0435\u043c\u0435\u043d\u0438 \u043d\u0435\u0442 \u2014 \u043e\u0441\u0442\u0430\u0432\u044c \u043a\u043e\u043b\u043e\u043d\u043a\u0443 \u043f\u0443\u0441\u0442\u043e\u0439."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 460
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/ScheduleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0xbb8

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->parseLines(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Parsed;

    move-result-object v3

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    const/4 v0, 0x6

    if-ge v2, v0, :cond_1

    iget-object v0, v3, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v0, v4, :cond_11

    iget-object v0, v3, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_2

    .line 454
    :cond_0
    const-string v0, ""

    move-object v9, v0

    goto/16 :goto_1

    .line 463
    :cond_1
    :try_start_1
    new-instance v0, Lru/fokus/tetrad/Schedule$Week;

    invoke-direct {v0}, Lru/fokus/tetrad/Schedule$Week;-><init>()V

    .line 464
    iget-object v2, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    iget v3, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$forced:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 492
    :goto_4
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    const/4 v0, 0x6

    if-ge v2, v0, :cond_a

    iget-object v0, v1, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v3, v11, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    iget-object v0, v1, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 466
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0430 \u0444\u043e\u0442\u043e \u2014 \u0448\u043a\u043e\u043b\u044c\u043d\u043e\u0435 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435: \u043e\u0434\u043d\u0430 \u0438\u043b\u0438 \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u0442\u0430\u0431\u043b\u0438\u0446, \u0443 \u043a\u0430\u0436\u0434\u043e\u0439 \u0432 \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043a\u0435 \u0434\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, \u00ab10\u0418, \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a\u00bb). \u0421\u0435\u0433\u043e\u0434\u043d\u044f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$todayIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$todayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u041f\u0435\u0440\u0435\u043f\u0438\u0448\u0438 \u0412\u0421\u0415 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u0441 \u0444\u043e\u0442\u043e. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u0435\u0440\u0435\u043f\u0438\u0448\u0438 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u043f\u043e\u0441\u0442\u0440\u043e\u0447\u043d\u043e, \u0422\u041e\u0427\u041d\u041e \u043a\u0430\u043a \u043d\u0430\u043f\u0438\u0441\u0430\u043d\u043e, \u043d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u0441\u043e\u043a\u0440\u0430\u0449\u0430\u044f \u0438 \u043d\u0435 \u0432\u044b\u0434\u0443\u043c\u044b\u0432\u0430\u044f. \u041a\u043e\u043b\u043e\u043d\u043a\u0443 \u00ab\u0443\u0447\u0438\u0442\u0435\u043b\u044c\u00bb \u043d\u0435 \u043f\u0435\u0440\u0435\u043f\u0438\u0441\u044b\u0432\u0430\u0439.\n\u0424\u043e\u0440\u043c\u0430\u0442 \u043e\u0442\u0432\u0435\u0442\u0430 \u2014 \u0442\u043e\u043b\u044c\u043a\u043e \u0441\u0442\u0440\u043e\u043a\u0438, \u0431\u0435\u0437 \u043f\u043e\u044f\u0441\u043d\u0435\u043d\u0438\u0439:\n\u0414\u041d\u0418: <\u0432\u0441\u0435 \u0434\u043d\u0438 \u043d\u0435\u0434\u0435\u043b\u0438, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u0435\u0441\u0442\u044c \u043d\u0430 \u0444\u043e\u0442\u043e, \u0447\u0435\u0440\u0435\u0437 \u0437\u0430\u043f\u044f\u0442\u0443\u044e>\n\u0414\u0415\u041d\u042c: <\u0434\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438>\n<\u043d\u043e\u043c\u0435\u0440 \u0443\u0440\u043e\u043a\u0430> | <\u0432\u0440\u0435\u043c\u044f> | <\u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u2014 \u0432\u0435\u0441\u044c \u0442\u0435\u043a\u0441\u0442 \u044f\u0447\u0435\u0439\u043a\u0438 \u0446\u0435\u043b\u0438\u043a\u043e\u043c, \u0441\u043e \u0441\u043a\u043e\u0431\u043a\u0430\u043c\u0438 \u0438 \u00ab/\u00bb> | <\u043a\u0430\u0431\u0438\u043d\u0435\u0442 \u2014 \u0432\u0435\u0441\u044c \u0442\u0435\u043a\u0441\u0442 \u044f\u0447\u0435\u0439\u043a\u0438>\n\u041f\u0440\u0438\u043c\u0435\u0440:\n\u0414\u041d\u0418: \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a, \u0432\u0442\u043e\u0440\u043d\u0438\u043a\n\u0414\u0415\u041d\u042c: \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a\n0 | 08:05-08:50 | \u0444\u0438\u0437\u0438\u043a\u0430 | 401\n2 | 09:55-10:40 | \u043c\u0430\u0442\u0435\u043c\u0430\u0442\u0438\u043a\u0430 [10\u041c1] / \u0440\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a [10\u041c2] / \u043c\u0430\u0442\u0435\u043c\u0430\u0442\u0438\u043a\u0430 [10\u041c3] | 300\u0440 / 202 / 501\n\u0414\u0415\u041d\u042c: \u0432\u0442\u043e\u0440\u043d\u0438\u043a\n1 | 09:00-09:45 | \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u043e\u0437\u043d\u0430\u043d\u0438\u0435 [10\u04181+\u0415\u041d] / \u0438\u0441\u0442\u043e\u0440\u0438\u044f [10\u04182] | 304 / 204\n\u041d\u043e\u043c\u0435\u0440\u0430 \u0443\u0440\u043e\u043a\u043e\u0432 \u2014 \u043a\u0430\u043a \u043d\u0430 \u0444\u043e\u0442\u043e (\u043c\u043e\u0433\u0443\u0442 \u043d\u0430\u0447\u0438\u043d\u0430\u0442\u044c\u0441\u044f \u0441 0). \u0421\u0442\u0440\u043e\u043a\u0438 \u0431\u0435\u0437 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430 \u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438. \u0415\u0441\u043b\u0438 \u043d\u0430 \u0444\u043e\u0442\u043e \u043b\u0438\u0441\u0442\u043e\u043a \u0431\u0435\u0437 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u2014 \u0432\u0441\u0451 \u0440\u0430\u0432\u043d\u043e \u043f\u0438\u0448\u0438 \u0432 \u044d\u0442\u043e\u043c \u0444\u043e\u0440\u043c\u0430\u0442\u0435; \u0435\u0441\u043b\u0438 \u0432\u0440\u0435\u043c\u0435\u043d\u0438 \u043d\u0435\u0442 \u2014 \u043e\u0441\u0442\u0430\u0432\u044c \u043a\u043e\u043b\u043e\u043d\u043a\u0443 \u043f\u0443\u0441\u0442\u043e\u0439."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/ScheduleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0xdac

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->parseLines(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Parsed;

    move-result-object v0

    .line 469
    iget-object v10, v0, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    .line 470
    new-instance v12, Ljava/util/TreeSet;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Parsed;->mentioned:Ljava/util/Set;

    invoke-direct {v12, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 471
    invoke-virtual {v10}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043c\u043e\u0442\u0440\u044e, \u043a\u0430\u043a\u0438\u0435 \u0434\u043d\u0438 \u043d\u0430 \u0444\u043e\u0442\u043e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1500(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)V

    .line 474
    const-string v3, "\u041d\u0430 \u0444\u043e\u0442\u043e \u2014 \u0448\u043a\u043e\u043b\u044c\u043d\u043e\u0435 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435. \u041a\u0430\u043a\u0438\u0435 \u0434\u043d\u0438 \u043d\u0435\u0434\u0435\u043b\u0438 \u043d\u0430 \u043d\u0451\u043c \u0435\u0441\u0442\u044c? \u041e\u0442\u0432\u0435\u0442\u044c \u043e\u0434\u043d\u043e\u0439 \u0441\u0442\u0440\u043e\u043a\u043e\u0439: \u0414\u041d\u0418: \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a, \u0432\u0442\u043e\u0440\u043d\u0438\u043a"

    .line 475
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/ScheduleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0x64

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->parseLines(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Parsed;

    move-result-object v0

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Parsed;->mentioned:Ljava/util/Set;

    invoke-interface {v12, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 477
    :cond_4
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 478
    iget-object v0, v10, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e\u0447\u0438\u0442\u044b\u0432\u0430\u044e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Lru/fokus/tetrad/ScheduleActivity;->accusative(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1500(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0430 \u0444\u043e\u0442\u043e \u2014 \u0448\u043a\u043e\u043b\u044c\u043d\u043e\u0435 \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435. \u041f\u0435\u0440\u0435\u043f\u0438\u0448\u0438 \u0422\u041e\u041b\u042c\u041a\u041e \u0442\u0430\u0431\u043b\u0438\u0446\u0443 \u043d\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lru/fokus/tetrad/Schedule;->DAY_FULL:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u0441 \u044d\u0442\u0438\u043c \u0434\u043d\u0451\u043c \u0432 \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043a\u0435). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u0435\u0440\u0435\u043f\u0438\u0448\u0438 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u043f\u043e\u0441\u0442\u0440\u043e\u0447\u043d\u043e, \u0422\u041e\u0427\u041d\u041e \u043a\u0430\u043a \u043d\u0430\u043f\u0438\u0441\u0430\u043d\u043e, \u043d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u0441\u043e\u043a\u0440\u0430\u0449\u0430\u044f \u0438 \u043d\u0435 \u0432\u044b\u0434\u0443\u043c\u044b\u0432\u0430\u044f. \u041a\u043e\u043b\u043e\u043d\u043a\u0443 \u00ab\u0443\u0447\u0438\u0442\u0435\u043b\u044c\u00bb \u043d\u0435 \u043f\u0435\u0440\u0435\u043f\u0438\u0441\u044b\u0432\u0430\u0439.\n\u0424\u043e\u0440\u043c\u0430\u0442 \u043e\u0442\u0432\u0435\u0442\u0430 \u2014 \u0442\u043e\u043b\u044c\u043a\u043e \u0441\u0442\u0440\u043e\u043a\u0438, \u0431\u0435\u0437 \u043f\u043e\u044f\u0441\u043d\u0435\u043d\u0438\u0439:\n\u0414\u041d\u0418: <\u0432\u0441\u0435 \u0434\u043d\u0438 \u043d\u0435\u0434\u0435\u043b\u0438, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u0435\u0441\u0442\u044c \u043d\u0430 \u0444\u043e\u0442\u043e, \u0447\u0435\u0440\u0435\u0437 \u0437\u0430\u043f\u044f\u0442\u0443\u044e>\n\u0414\u0415\u041d\u042c: <\u0434\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438>\n<\u043d\u043e\u043c\u0435\u0440 \u0443\u0440\u043e\u043a\u0430> | <\u0432\u0440\u0435\u043c\u044f> | <\u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u2014 \u0432\u0435\u0441\u044c \u0442\u0435\u043a\u0441\u0442 \u044f\u0447\u0435\u0439\u043a\u0438 \u0446\u0435\u043b\u0438\u043a\u043e\u043c, \u0441\u043e \u0441\u043a\u043e\u0431\u043a\u0430\u043c\u0438 \u0438 \u00ab/\u00bb> | <\u043a\u0430\u0431\u0438\u043d\u0435\u0442 \u2014 \u0432\u0435\u0441\u044c \u0442\u0435\u043a\u0441\u0442 \u044f\u0447\u0435\u0439\u043a\u0438>\n\u041f\u0440\u0438\u043c\u0435\u0440:\n\u0414\u041d\u0418: \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a, \u0432\u0442\u043e\u0440\u043d\u0438\u043a\n\u0414\u0415\u041d\u042c: \u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a\n0 | 08:05-08:50 | \u0444\u0438\u0437\u0438\u043a\u0430 | 401\n2 | 09:55-10:40 | \u043c\u0430\u0442\u0435\u043c\u0430\u0442\u0438\u043a\u0430 [10\u041c1] / \u0440\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a [10\u041c2] / \u043c\u0430\u0442\u0435\u043c\u0430\u0442\u0438\u043a\u0430 [10\u041c3] | 300\u0440 / 202 / 501\n\u0414\u0415\u041d\u042c: \u0432\u0442\u043e\u0440\u043d\u0438\u043a\n1 | 09:00-09:45 | \u043e\u0431\u0449\u0435\u0441\u0442\u0432\u043e\u0437\u043d\u0430\u043d\u0438\u0435 [10\u04181+\u0415\u041d] / \u0438\u0441\u0442\u043e\u0440\u0438\u044f [10\u04182] | 304 / 204\n\u041d\u043e\u043c\u0435\u0440\u0430 \u0443\u0440\u043e\u043a\u043e\u0432 \u2014 \u043a\u0430\u043a \u043d\u0430 \u0444\u043e\u0442\u043e (\u043c\u043e\u0433\u0443\u0442 \u043d\u0430\u0447\u0438\u043d\u0430\u0442\u044c\u0441\u044f \u0441 0). \u0421\u0442\u0440\u043e\u043a\u0438 \u0431\u0435\u0437 \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430 \u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438. \u0415\u0441\u043b\u0438 \u043d\u0430 \u0444\u043e\u0442\u043e \u043b\u0438\u0441\u0442\u043e\u043a \u0431\u0435\u0437 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u2014 \u0432\u0441\u0451 \u0440\u0430\u0432\u043d\u043e \u043f\u0438\u0448\u0438 \u0432 \u044d\u0442\u043e\u043c \u0444\u043e\u0440\u043c\u0430\u0442\u0435; \u0435\u0441\u043b\u0438 \u0432\u0440\u0435\u043c\u0435\u043d\u0438 \u043d\u0435\u0442 \u2014 \u043e\u0441\u0442\u0430\u0432\u044c \u043a\u043e\u043b\u043e\u043d\u043a\u0443 \u043f\u0443\u0441\u0442\u043e\u0439."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 483
    :try_start_2
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/ScheduleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3}, Lru/fokus/tetrad/AiClient;->one(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0x9c4

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/Schedule;->parseLines(Ljava/lang/String;)Lru/fokus/tetrad/Schedule$Parsed;

    move-result-object v3

    .line 484
    iget-object v0, v3, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 485
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    move-object v1, v0

    :goto_7
    const/4 v0, 0x6

    if-ge v2, v0, :cond_7

    iget-object v0, v3, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v0, v5, :cond_f

    iget-object v0, v3, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_7

    :cond_6
    move-object v1, v0

    .line 486
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v10, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 487
    :catch_0
    move-exception v0

    .line 488
    :try_start_3
    iget v1, v0, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v2, 0x1ad

    if-eq v1, v2, :cond_8

    iget v1, v0, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v2, 0x192

    if-eq v1, v2, :cond_8

    iget v1, v0, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_5

    :cond_8
    throw v0
    :try_end_3
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 494
    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v8, 0x1

    iget v3, v2, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v4, 0x1ad

    if-eq v3, v4, :cond_9

    iget v3, v2, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v4, 0x192

    if-eq v3, v4, :cond_9

    iget v2, v2, Lru/fokus/tetrad/AiClient$AiException;->code:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_b

    .line 497
    :cond_9
    :goto_9
    if-nez v1, :cond_d

    if-lez v0, :cond_d

    invoke-virtual {v11}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 498
    const-string v0, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u043d\u0430\u0439\u0442\u0438 \u043d\u0430 \u0444\u043e\u0442\u043e \u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435. \u0421\u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0440\u0443\u0439 \u0440\u043e\u0432\u043d\u0435\u0435 \u0438 \u0431\u043b\u0438\u0436\u0435, \u0447\u0442\u043e\u0431\u044b \u0442\u0430\u0431\u043b\u0438\u0446\u0430 \u0431\u044b\u043b\u0430 \u0446\u0435\u043b\u0438\u043a\u043e\u043c."

    .line 500
    :goto_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$photos:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lru/fokus/tetrad/AiClient;->deleteAll(Ljava/util/List;)V

    .line 502
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    new-instance v2, Lru/fokus/tetrad/ScheduleActivity$22$1;

    invoke-direct {v2, p0, v0, v11}, Lru/fokus/tetrad/ScheduleActivity$22$1;-><init>(Lru/fokus/tetrad/ScheduleActivity$22;Ljava/lang/String;Lru/fokus/tetrad/Schedule$Week;)V

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/ScheduleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 521
    return-void

    .line 493
    :cond_a
    :try_start_4
    invoke-virtual {v1}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z
    :try_end_4
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v0, v8, 0x1

    :goto_b
    move-object v1, v6

    .line 451
    :cond_b
    :goto_c
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v0

    move-object v6, v1

    goto/16 :goto_0

    .line 495
    :catch_2
    move-exception v0

    add-int/lit8 v0, v8, 0x1

    move-object v1, v6

    goto :goto_c

    .line 499
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435 \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043b\u043e\u0441\u044c \u0444\u043e\u0442\u043e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0438\u0437 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22;->val$photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u0414\u043e\u0431\u0430\u0432\u044c \u0435\u0433\u043e \u0435\u0449\u0451 \u0440\u0430\u0437 \u2014 \u043e\u0441\u0442\u0430\u043b\u044c\u043d\u044b\u0435 \u0434\u043d\u0438 \u0443\u0436\u0435 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u044b."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_d
    move-object v0, v1

    goto :goto_a

    :cond_e
    move v0, v8

    goto :goto_b

    :cond_f
    move-object v0, v1

    goto/16 :goto_8

    :cond_10
    move-object v1, v10

    goto/16 :goto_4

    :cond_11
    move-object v0, v1

    goto/16 :goto_3

    :cond_12
    move v0, v8

    move-object v1, v6

    goto :goto_9
.end method
