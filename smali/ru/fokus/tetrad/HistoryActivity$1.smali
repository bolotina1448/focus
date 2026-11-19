.class Lru/fokus/tetrad/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/HistoryActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/HistoryActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/HistoryActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lru/fokus/tetrad/HistoryActivity$1;->this$0:Lru/fokus/tetrad/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity$1;->this$0:Lru/fokus/tetrad/HistoryActivity;

    const-string v1, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u044c \u0438\u0441\u0442\u043e\u0440\u0438\u044e \u043c\u043e\u0436\u0435\u0442 \u0442\u043e\u043b\u044c\u043a\u043e \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044c."

    new-instance v2, Lru/fokus/tetrad/HistoryActivity$1$1;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/HistoryActivity$1$1;-><init>(Lru/fokus/tetrad/HistoryActivity$1;)V

    invoke-static {v0, v1, v2}, Lru/fokus/tetrad/Pin;->guard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
