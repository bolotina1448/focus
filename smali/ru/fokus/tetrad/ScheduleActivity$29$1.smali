.class Lru/fokus/tetrad/ScheduleActivity$29$1;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/ScheduleActivity$29;

.field final synthetic val$opts:[I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity$29;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 614
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$29$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$29;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$29$1;->val$opts:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$29$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$29;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$29;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remBeforeMin"

    iget-object v2, p0, Lru/fokus/tetrad/ScheduleActivity$29$1;->val$opts:[I

    aget v2, v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 617
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$29$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$29;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$29;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/LessonReminders;->schedule(Landroid/content/Context;)V

    .line 618
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$29$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$29;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$29;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 619
    return-void
.end method
