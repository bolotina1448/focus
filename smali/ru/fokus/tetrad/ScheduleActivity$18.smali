.class Lru/fokus/tetrad/ScheduleActivity$18;
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

.field final synthetic val$end:Landroid/widget/EditText;

.field final synthetic val$l:Lru/fokus/tetrad/Schedule$Lesson;

.field final synthetic val$ls:Ljava/util/List;

.field final synthetic val$room:Landroid/widget/EditText;

.field final synthetic val$start:Landroid/widget/EditText;

.field final synthetic val$subj:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;Landroid/widget/EditText;Lru/fokus/tetrad/Schedule$Lesson;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 357
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$18;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$subj:Landroid/widget/EditText;

    iput-object p3, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$l:Lru/fokus/tetrad/Schedule$Lesson;

    iput-object p4, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$start:Landroid/widget/EditText;

    iput-object p5, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$end:Landroid/widget/EditText;

    iput-object p6, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$room:Landroid/widget/EditText;

    iput-object p7, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$ls:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$subj:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$l:Lru/fokus/tetrad/Schedule$Lesson;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$l:Lru/fokus/tetrad/Schedule$Lesson;

    .line 361
    :goto_1
    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->subject:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$start:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->start:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$end:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->end:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$room:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->room:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$l:Lru/fokus/tetrad/Schedule$Lesson;

    if-nez v1, :cond_1

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$ls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lru/fokus/tetrad/Schedule$Lesson;->n:I

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$ls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$18;->val$ls:Ljava/util/List;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$1300(Ljava/util/List;)V

    .line 367
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$18;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$900(Lru/fokus/tetrad/ScheduleActivity;)V

    .line 368
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$18;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-static {v0}, Lru/fokus/tetrad/ScheduleActivity;->access$100(Lru/fokus/tetrad/ScheduleActivity;)V

    goto :goto_0

    .line 360
    :cond_2
    new-instance v0, Lru/fokus/tetrad/Schedule$Lesson;

    invoke-direct {v0}, Lru/fokus/tetrad/Schedule$Lesson;-><init>()V

    goto :goto_1
.end method
