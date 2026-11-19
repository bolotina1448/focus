.class Lru/fokus/tetrad/ScheduleActivity$15$1;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/ScheduleActivity$15;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity$15;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$15$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$15$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$15;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$15;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    new-instance v1, Lru/fokus/tetrad/Schedule$Week;

    invoke-direct {v1}, Lru/fokus/tetrad/Schedule$Week;-><init>()V

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$802(Lru/fokus/tetrad/ScheduleActivity;Lru/fokus/tetrad/Schedule$Week;)Lru/fokus/tetrad/Schedule$Week;

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$15$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$15;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$15;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$900(Lru/fokus/tetrad/ScheduleActivity;)V

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$15$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$15;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$15;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1002(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$15$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$15;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$15;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1100(Lru/fokus/tetrad/ScheduleActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scheduleRaw"

    const-string v2, "{\"days\":[]}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$15$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$15;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$15;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 255
    return-void
.end method
