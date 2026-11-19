.class Lru/fokus/tetrad/ScheduleActivity$29;
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


# direct methods
.method constructor <init>(Lru/fokus/tetrad/ScheduleActivity;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lru/fokus/tetrad/ScheduleActivity$29;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 612
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 613
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lru/fokus/tetrad/ScheduleActivity$29;->this$0:Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0417\u0430 \u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0438\u043d\u0443\u0442 \u043d\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u0442\u044c?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u0417\u0430 2 \u043c\u0438\u043d\u0443\u0442\u044b"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u0417\u0430 5 \u043c\u0438\u043d\u0443\u0442"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u0417\u0430 10 \u043c\u0438\u043d\u0443\u0442"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u0417\u0430 15 \u043c\u0438\u043d\u0443\u0442"

    aput-object v4, v2, v3

    new-instance v3, Lru/fokus/tetrad/ScheduleActivity$29$1;

    invoke-direct {v3, p0, v0}, Lru/fokus/tetrad/ScheduleActivity$29$1;-><init>(Lru/fokus/tetrad/ScheduleActivity$29;[I)V

    .line 614
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 621
    return-void

    .line 612
    :array_0
    .array-data 4
        0x2
        0x5
        0xa
        0xf
    .end array-data
.end method
