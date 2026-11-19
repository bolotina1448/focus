.class Lru/fokus/tetrad/ScheduleActivity$27$1;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/ScheduleActivity$27;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity$27;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$27$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$27$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$27;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$27;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remMorningMin"

    mul-int/lit8 v2, p2, 0x3c

    add-int/2addr v2, p3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 602
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$27$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$27;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$27;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/LessonReminders;->schedule(Landroid/content/Context;)V

    .line 603
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$27$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$27;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$27;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 604
    return-void
.end method
