.class Lru/fokus/tetrad/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    iput-object p2, p0, Lru/fokus/tetrad/MainActivity$8;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 168
    const-string v0, "sched"

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$8;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    const-class v3, Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "marks"

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$8;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    const-class v3, Lru/fokus/tetrad/MarksActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "hist"

    iget-object v1, p0, Lru/fokus/tetrad/MainActivity$8;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    const-class v3, Lru/fokus/tetrad/HistoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/MainActivity$8;->this$0:Lru/fokus/tetrad/MainActivity;

    const-class v3, Lru/fokus/tetrad/CheckActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "standalone"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
