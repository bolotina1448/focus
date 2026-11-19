.class Lru/fokus/tetrad/ScheduleActivity$9;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->progress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/ScheduleActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$9;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$9;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$9;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$9;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$602(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$9;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$700(Lru/fokus/tetrad/ScheduleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$9;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    :cond_0
    return-void
.end method
