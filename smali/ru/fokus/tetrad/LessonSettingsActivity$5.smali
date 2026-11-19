.class Lru/fokus/tetrad/LessonSettingsActivity$5;
.super Ljava/lang/Object;
.source "LessonSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/LessonSettingsActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/LessonSettingsActivity;

.field final synthetic val$sw:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/LessonSettingsActivity;Landroid/widget/Switch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lru/fokus/tetrad/LessonSettingsActivity$5;->this$0:Lru/fokus/tetrad/LessonSettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/LessonSettingsActivity$5;->val$sw:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lru/fokus/tetrad/LessonSettingsActivity$5;->val$sw:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method
