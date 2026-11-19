.class Lru/fokus/tetrad/FocusActivity$6;
.super Ljava/lang/Object;
.source "FocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/FocusActivity;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/FocusActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/FocusActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lru/fokus/tetrad/FocusActivity$6;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$6;->this$0:Lru/fokus/tetrad/FocusActivity;

    const-string v1, "\u0427\u0442\u043e\u0431\u044b \u0437\u0430\u043a\u043e\u043d\u0447\u0438\u0442\u044c \u0437\u0430\u043d\u044f\u0442\u0438\u0435 \u0440\u0430\u043d\u044c\u0448\u0435 \u0432\u0440\u0435\u043c\u0435\u043d\u0438, \u043d\u0443\u0436\u0435\u043d PIN \u0440\u043e\u0434\u0438\u0442\u0435\u043b\u044f."

    new-instance v2, Lru/fokus/tetrad/FocusActivity$6$1;

    invoke-direct {v2, p0}, Lru/fokus/tetrad/FocusActivity$6$1;-><init>(Lru/fokus/tetrad/FocusActivity$6;)V

    invoke-static {v0, v1, v2}, Lru/fokus/tetrad/Pin;->guard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method
