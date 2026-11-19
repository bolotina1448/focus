.class Lru/fokus/tetrad/ScheduleActivity$7;
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
    .line 85
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$7;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$7;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$7;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$400(Lru/fokus/tetrad/ScheduleActivity;)I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lru/fokus/tetrad/ScheduleActivity;->access$500(Lru/fokus/tetrad/ScheduleActivity;II)V

    return-void
.end method
