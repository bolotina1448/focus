.class Lru/fokus/tetrad/QuizActivity$6;
.super Ljava/lang/Object;
.source "QuizActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/QuizActivity;->renderResult()V
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
    .line 217
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity$6;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$6;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/QuizActivity;->finish()V

    return-void
.end method
