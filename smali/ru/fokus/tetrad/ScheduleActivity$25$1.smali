.class Lru/fokus/tetrad/ScheduleActivity$25$1;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/ScheduleActivity$25;

.field final synthetic val$fa:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity$25;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 585
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$25$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$25;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$25$1;->val$fa:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$25;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1902(Lru/fokus/tetrad/ScheduleActivity;Z)Z

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$25;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$25$1;->val$fa:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$1002(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$25$1;->this$1:Lru/fokus/tetrad/ScheduleActivity$25;

    iget-object v0, v0, Lru/fokus/tetrad/ScheduleActivity$25;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    return-void
.end method
