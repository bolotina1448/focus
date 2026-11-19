.class Lru/fokus/tetrad/ScheduleActivity$12;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/ScheduleActivity;

.field final synthetic val$li:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$12;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput p2, p0, Lru/fokus/tetrad/ScheduleActivity$12;->val$li:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$12;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$12;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v1}, Lru/fokus/tetrad/ScheduleActivity;->access$400(Lru/fokus/tetrad/ScheduleActivity;)I

    move-result v1

    iget v2, p0, Lru/fokus/tetrad/ScheduleActivity$12;->val$li:I

    invoke-static {v0, v1, v2}, Lru/fokus/tetrad/ScheduleActivity;->access$500(Lru/fokus/tetrad/ScheduleActivity;II)V

    return-void
.end method
