.class Lru/fokus/tetrad/MarksActivity$10;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity;->subjectCard(Lru/fokus/tetrad/Grades$Subject;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MarksActivity;

.field final synthetic val$open:Z

.field final synthetic val$s:Lru/fokus/tetrad/Grades$Subject;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity;ZLru/fokus/tetrad/Grades$Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 427
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$10;->this$0:Lru/fokus/tetrad/MarksActivity;

    iput-boolean p2, p0, Lru/fokus/tetrad/MarksActivity$10;->val$open:Z

    iput-object p3, p0, Lru/fokus/tetrad/MarksActivity$10;->val$s:Lru/fokus/tetrad/Grades$Subject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lru/fokus/tetrad/MarksActivity$10;->val$open:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$10;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$1400(Lru/fokus/tetrad/MarksActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$10;->val$s:Lru/fokus/tetrad/Grades$Subject;

    iget-object v1, v1, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 429
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$10;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$800(Lru/fokus/tetrad/MarksActivity;)V

    .line 430
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$10;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$1400(Lru/fokus/tetrad/MarksActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$10;->val$s:Lru/fokus/tetrad/Grades$Subject;

    iget-object v1, v1, Lru/fokus/tetrad/Grades$Subject;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
