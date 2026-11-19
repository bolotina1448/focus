.class Lru/fokus/tetrad/ScheduleActivity$3;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Lru/fokus/tetrad/Photos$Remove;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->stagingCard()Landroid/view/View;
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
    .line 61
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$3;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lru/fokus/tetrad/ScheduleActivity;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$3;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    return-void
.end method
