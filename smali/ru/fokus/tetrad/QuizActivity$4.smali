.class Lru/fokus/tetrad/QuizActivity$4;
.super Ljava/lang/Object;
.source "QuizActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/QuizActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/QuizActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/QuizActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity$4;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$4;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v0}, Lru/fokus/tetrad/QuizActivity;->access$1008(Lru/fokus/tetrad/QuizActivity;)I

    .line 180
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$4;->this$0:Lru/fokus/tetrad/QuizActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lru/fokus/tetrad/QuizActivity;->access$802(Lru/fokus/tetrad/QuizActivity;I)I

    .line 181
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$4;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v0}, Lru/fokus/tetrad/QuizActivity;->access$600(Lru/fokus/tetrad/QuizActivity;)V

    .line 182
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$4;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v0}, Lru/fokus/tetrad/QuizActivity;->access$1100(Lru/fokus/tetrad/QuizActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 183
    return-void
.end method
