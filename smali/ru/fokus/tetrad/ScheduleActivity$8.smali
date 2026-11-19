.class Lru/fokus/tetrad/ScheduleActivity$8;
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
    .line 89
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$8;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lru/fokus/tetrad/ScheduleActivity;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/AiClient;->deleteAll(Ljava/util/List;)V

    .line 91
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$8;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$202(Lru/fokus/tetrad/ScheduleActivity;Z)Z

    .line 92
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$8;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 93
    return-void
.end method
