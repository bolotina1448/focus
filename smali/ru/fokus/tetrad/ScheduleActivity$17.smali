.class Lru/fokus/tetrad/ScheduleActivity$17;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->pickGroups()V
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
    .line 307
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$17;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$17;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$17;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/LessonReminders;->week(Landroid/content/Context;)Lru/fokus/tetrad/Schedule$Week;

    move-result-object v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$802(Lru/fokus/tetrad/ScheduleActivity;Lru/fokus/tetrad/Schedule$Week;)Lru/fokus/tetrad/Schedule$Week;

    .line 309
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$17;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 310
    return-void
.end method
