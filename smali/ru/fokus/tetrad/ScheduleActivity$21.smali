.class Lru/fokus/tetrad/ScheduleActivity$21;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Lru/fokus/tetrad/Photos$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 396
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$21;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lru/fokus/tetrad/ScheduleActivity;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$21;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$202(Lru/fokus/tetrad/ScheduleActivity;Z)Z

    .line 399
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$21;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0, p2}, Lru/fokus/tetrad/ScheduleActivity;->access$1402(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$21;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 401
    return-void
.end method
