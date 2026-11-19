.class Lru/fokus/tetrad/LessonSettingsActivity$2;
.super Ljava/lang/Object;
.source "LessonSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$row:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/LessonSettingsActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lru/fokus/tetrad/LessonSettingsActivity$2;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/LessonSettingsActivity$2;->val$row:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lru/fokus/tetrad/LessonSettingsActivity$2;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    invoke-static {v2}, Lru/fokus/tetrad/LessonSettingsActivity;->access$000(Lru/fokus/tetrad/LessonSettingsActivity;)Lru/fokus/tetrad/Store;

    move-result-object v2

    const/16 v3, 0xf0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lru/fokus/tetrad/Store;->setMinutes(I)V

    move v1, v0

    .line 73
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity$2;->val$row:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity$2;->val$row:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lru/fokus/tetrad/Ui;->styleChip(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
