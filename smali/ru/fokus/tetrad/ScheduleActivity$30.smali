.class Lru/fokus/tetrad/ScheduleActivity$30;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->switchRow(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/ScheduleActivity;

.field final synthetic val$onText:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 632
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$30;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput-object p2, p0, Lru/fokus/tetrad/ScheduleActivity$30;->val$onText:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lru/fokus/tetrad/ScheduleActivity$30;->val$onText:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
