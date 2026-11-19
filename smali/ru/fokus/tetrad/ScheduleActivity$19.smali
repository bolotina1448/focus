.class Lru/fokus/tetrad/ScheduleActivity$19;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->editLesson(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/ScheduleActivity;

.field final synthetic val$index:I

.field final synthetic val$ls:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 371
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$19;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$19;->val$ls:Ljava/util/List;

    iput p3, p0, Lru/fokus/tetrad/ScheduleActivity$19;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$19;->val$ls:Ljava/util/List;

    iget v1, p0, Lru/fokus/tetrad/ScheduleActivity$19;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 373
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$19;->val$ls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$19;->val$ls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Schedule$Lesson;

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$19;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$900(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 375
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$19;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 376
    return-void
.end method
