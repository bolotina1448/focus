.class Lru/fokus/tetrad/HistoryActivity$1$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/HistoryActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/HistoryActivity$1;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/HistoryActivity$1;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lru/fokus/tetrad/HistoryActivity$1$1;->this$1:Lru/fokus/tetrad/HistoryActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/fokus/tetrad/HistoryActivity$1$1;->this$1:Lru/fokus/tetrad/HistoryActivity$1;

    iget-object v1, v1, Lru/fokus/tetrad/HistoryActivity$1;->this$0:Lru/fokus/tetrad/HistoryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u044e \u0438\u0441\u0442\u043e\u0440\u0438\u044e?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u043d\u044f\u0442\u0438\u044f, \u043e\u0446\u0435\u043d\u043a\u0438 \u0438 \u0441\u0435\u0440\u0438\u044f \u0434\u043d\u0435\u0439 \u0431\u0443\u0434\u0443\u0442 \u0441\u0442\u0451\u0440\u0442\u044b."

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c"

    new-instance v2, Lru/fokus/tetrad/HistoryActivity$1$1$1;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/HistoryActivity$1$1$1;-><init>(Lru/fokus/tetrad/HistoryActivity$1$1;)V

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 110
    return-void
.end method
