.class Lru/fokus/tetrad/QuizActivity$3;
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

.field final synthetic val$answer:I

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/QuizActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 161
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity$3;->this$0:Lru/fokus/tetrad/QuizActivity;

    iput p2, p0, Lru/fokus/tetrad/QuizActivity$3;->val$idx:I

    iput p3, p0, Lru/fokus/tetrad/QuizActivity$3;->val$answer:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$3;->this$0:Lru/fokus/tetrad/QuizActivity;

    iget v1, p0, Lru/fokus/tetrad/QuizActivity$3;->val$idx:I

    invoke-static {v0, v1}, Lru/fokus/tetrad/QuizActivity;->access$802(Lru/fokus/tetrad/QuizActivity;I)I

    .line 163
    iget v0, p0, Lru/fokus/tetrad/QuizActivity$3;->val$idx:I

    iget v1, p0, Lru/fokus/tetrad/QuizActivity$3;->val$answer:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$3;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v0}, Lru/fokus/tetrad/QuizActivity;->access$908(Lru/fokus/tetrad/QuizActivity;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$3;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v0}, Lru/fokus/tetrad/QuizActivity;->access$600(Lru/fokus/tetrad/QuizActivity;)V

    .line 165
    return-void
.end method
