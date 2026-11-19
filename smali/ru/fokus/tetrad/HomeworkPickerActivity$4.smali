.class Lru/fokus/tetrad/HomeworkPickerActivity$4;
.super Ljava/lang/Object;
.source "HomeworkPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/HomeworkPickerActivity;->card(Lru/fokus/tetrad/Mesh$Hw;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

.field final synthetic val$h:Lru/fokus/tetrad/Mesh$Hw;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/HomeworkPickerActivity;Lru/fokus/tetrad/Mesh$Hw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    iput-object p2, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->val$h:Lru/fokus/tetrad/Mesh$Hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$000(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->val$h:Lru/fokus/tetrad/Mesh$Hw;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$000(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->val$h:Lru/fokus/tetrad/Mesh$Hw;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 153
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$300(Lru/fokus/tetrad/HomeworkPickerActivity;)V

    .line 154
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$000(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$4;->val$h:Lru/fokus/tetrad/Mesh$Hw;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
