.class Lru/fokus/tetrad/HomeworkPickerActivity$2;
.super Ljava/lang/Object;
.source "HomeworkPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/HomeworkPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/HomeworkPickerActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/HomeworkPickerActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$2;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$2;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$000(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$2;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$100(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/fokus/tetrad/Mesh$Hw;

    iget-object v3, p0, Lru/fokus/tetrad/HomeworkPickerActivity$2;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-static {v3}, Lru/fokus/tetrad/HomeworkPickerActivity;->access$000(Lru/fokus/tetrad/HomeworkPickerActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_2
    sput-object v1, Lru/fokus/tetrad/HomeworkPickerActivity;->result:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$2;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/HomeworkPickerActivity;->setResult(I)V

    .line 93
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$2;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->finish()V

    goto :goto_0
.end method
