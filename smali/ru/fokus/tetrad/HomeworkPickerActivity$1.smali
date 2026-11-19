.class Lru/fokus/tetrad/HomeworkPickerActivity$1;
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
    .line 63
    iput-object p1, p0, Lru/fokus/tetrad/HomeworkPickerActivity$1;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lru/fokus/tetrad/HomeworkPickerActivity$1;->this$0:Lru/fokus/tetrad/HomeworkPickerActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/HomeworkPickerActivity;->finish()V

    return-void
.end method
