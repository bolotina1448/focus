.class Lru/fokus/tetrad/ScheduleActivity$11;
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

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$11;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput p2, p0, Lru/fokus/tetrad/ScheduleActivity$11;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$11;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iget v1, p0, Lru/fokus/tetrad/ScheduleActivity$11;->val$idx:I

    invoke-static {v0, v1}, Lru/fokus/tetrad/ScheduleActivity;->access$402(Lru/fokus/tetrad/ScheduleActivity;I)I

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$11;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    return-void
.end method
