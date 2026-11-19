.class Lru/fokus/tetrad/ScheduleActivity$6;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 74
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$6;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lru/fokus/tetrad/ScheduleActivity;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    invoke-static {}, Lru/fokus/tetrad/ScheduleActivity;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$6;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lru/fokus/tetrad/ScheduleActivity;->access$202(Lru/fokus/tetrad/ScheduleActivity;Z)Z

    .line 78
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$6;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1, v0}, Lru/fokus/tetrad/ScheduleActivity;->access$300(Lru/fokus/tetrad/ScheduleActivity;Ljava/util/List;)V

    .line 79
    return-void
.end method
