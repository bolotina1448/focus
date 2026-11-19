.class Lru/fokus/tetrad/ScheduleActivity$22$1;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/ScheduleActivity$22;

.field final synthetic val$fe:Ljava/lang/String;

.field final synthetic val$fw:Lru/fokus/tetrad/Schedule$Week;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity$22;Ljava/lang/String;Lru/fokus/tetrad/Schedule$Week;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 502
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->val$fe:Ljava/lang/String;

    iput-object p3, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->val$fw:Lru/fokus/tetrad/Schedule$Week;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v1, v1, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1, v0}, Lru/fokus/tetrad/ScheduleActivity;->access$702(Lru/fokus/tetrad/ScheduleActivity;Z)Z

    .line 504
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v1, v1, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v2, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->val$fe:Ljava/lang/String;

    invoke-static {v1, v2}, Lru/fokus/tetrad/ScheduleActivity;->access$1402(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->val$fw:Lru/fokus/tetrad/Schedule$Week;

    invoke-virtual {v1}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v1, v1, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1600(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v2

    move v1, v0

    .line 507
    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->val$fw:Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, v2, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->val$fw:Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, v0, Lru/fokus/tetrad/Schedule$Week;->days:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scheduleRaw"

    invoke-static {v2}, Lru/fokus/tetrad/Schedule;->toJson(Lru/fokus/tetrad/Schedule$Week;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v1, v1, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1700(Lru/fokus/tetrad/ScheduleActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Lru/fokus/tetrad/Schedule;->applyGroups(Lru/fokus/tetrad/Schedule$Week;Ljava/util/Set;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$802(Lru/fokus/tetrad/ScheduleActivity;Lru/fokus/tetrad/Schedule$Week;)Lru/fokus/tetrad/Schedule$Week;

    .line 510
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$900(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 511
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->val$forced:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget v1, v1, Lru/fokus/tetrad/ScheduleActivity$22;->val$forced:I

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$402(Lru/fokus/tetrad/ScheduleActivity;I)I

    .line 512
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/GroupPicker;->needsChoice(Landroid/content/Context;)Z

    move-result v0

    .line 513
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v1, v1, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$800(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v1

    invoke-static {v1}, Lru/fokus/tetrad/Schedule;->missingDays(Lru/fokus/tetrad/Schedule$Week;)Ljava/util/List;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v2, v2, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    if-eqz v0, :cond_5

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e! \u0422\u0435\u043f\u0435\u0440\u044c \u0432\u044b\u0431\u0435\u0440\u0438 \u0441\u0432\u043e\u0438 \u0433\u0440\u0443\u043f\u043f\u044b \u2014 \u043e\u0441\u0442\u0430\u043d\u0443\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0442\u0432\u043e\u0438 \u0443\u0440\u043e\u043a\u0438."

    .line 516
    :goto_1
    const/4 v1, 0x1

    .line 514
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 518
    :cond_3
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 519
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->val$fw:Lru/fokus/tetrad/Schedule$Week;

    invoke-virtual {v0}, Lru/fokus/tetrad/Schedule$Week;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/GroupPicker;->needsChoice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$22$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$22;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$22;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1200(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 520
    :cond_4
    return-void

    .line 515
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u0420\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d\u043e. \u041f\u0440\u043e\u0432\u0435\u0440\u044c, \u0432\u0441\u0451 \u043b\u0438 \u0432\u0435\u0440\u043d\u043e."

    goto :goto_1

    .line 516
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e. \u041d\u0435 \u043d\u0430\u0448\u043b\u043e\u0441\u044c: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->daysList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u0415\u0441\u043b\u0438 \u0432 \u044d\u0442\u0438 \u0434\u043d\u0438 \u0435\u0441\u0442\u044c \u0443\u0440\u043e\u043a\u0438 \u2014 \u0434\u043e\u0441\u043d\u0438\u043c\u0438 \u0438\u0445."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
