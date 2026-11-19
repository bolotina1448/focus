.class Lru/fokus/tetrad/ScheduleActivity$27;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/ScheduleActivity;->remindersCard()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/ScheduleActivity;

.field final synthetic val$mm:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 598
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$27;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    iput p2, p0, Lru/fokus/tetrad/ScheduleActivity$27;->val$mm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 599
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lru/fokus/tetrad/ScheduleActivity$27;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    new-instance v2, Lru/fokus/tetrad/ScheduleActivity$27$1;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/ScheduleActivity$27$1;-><init>(Lru/fokus/tetrad/ScheduleActivity$27;)V

    iget v3, p0, Lru/fokus/tetrad/ScheduleActivity$27;->val$mm:I

    div-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lru/fokus/tetrad/ScheduleActivity$27;->val$mm:I

    rem-int/lit8 v4, v4, 0x3c

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 605
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 606
    return-void
.end method
