.class Lru/fokus/tetrad/LessonSettingsActivity$1;
.super Ljava/lang/Object;
.source "LessonSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/LessonSettingsActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/LessonSettingsActivity;

.field final synthetic val$m:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/LessonSettingsActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lru/fokus/tetrad/LessonSettingsActivity$1;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    iput p2, p0, Lru/fokus/tetrad/LessonSettingsActivity$1;->val$m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity$1;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/LessonSettingsActivity;->access$000(Lru/fokus/tetrad/LessonSettingsActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    iget v1, p0, Lru/fokus/tetrad/LessonSettingsActivity$1;->val$m:I

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setMinutes(I)V

    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity$1;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/LessonSettingsActivity;->access$100(Lru/fokus/tetrad/LessonSettingsActivity;)V

    return-void
.end method
