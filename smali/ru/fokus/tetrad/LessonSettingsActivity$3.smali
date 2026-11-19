.class Lru/fokus/tetrad/LessonSettingsActivity$3;
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


# direct methods
.method constructor <init>(Lru/fokus/tetrad/LessonSettingsActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lru/fokus/tetrad/LessonSettingsActivity$3;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity$3;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/LessonSettingsActivity$3;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    const-class v3, Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/LessonSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
