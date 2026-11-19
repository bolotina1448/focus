.class Lru/fokus/tetrad/LessonSettingsActivity$4;
.super Ljava/lang/Object;
.source "LessonSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 98
    iput-object p1, p0, Lru/fokus/tetrad/LessonSettingsActivity$4;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity$4;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/LessonSettingsActivity;->access$000(Lru/fokus/tetrad/LessonSettingsActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0, p2}, Lru/fokus/tetrad/Store;->setBlockSettings(Z)V

    return-void
.end method
