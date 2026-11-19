.class Lru/fokus/tetrad/HomeworkPickerActivity$3;
.super Ljava/lang/Object;
.source "HomeworkPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/HomeworkPickerActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

.field final synthetic val$d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/HomeworkPickerActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$3;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    iput-object p2, p0, Lru/fokus/tetrad/HomeworkPickerActivity$3;->val$d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$3;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    iget-object v1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$3;->val$d:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$202(Lru/fokus/tetrad/HomeworkPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$3;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$300(Lru/fokus/tetrad/HomeworkPickerActivity;)V

    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$3;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$400(Lru/fokus/tetrad/HomeworkPickerActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
