.class Lru/fokus/tetrad/CheckActivity$8;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v0

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->solution:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v0

    iget-boolean v0, v0, Lru/fokus/tetrad/CheckState;->checking:Z

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v0

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u043d\u0435 \u0443\u043a\u0430\u0437\u0430\u043d"

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v1}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v1

    iget-object v1, v1, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v1}, Lru/fokus/tetrad/CheckActivity;->access$400(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/Store;

    move-result-object v1

    invoke-virtual {v1}, Lru/fokus/tetrad/Store;->grade()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lru/fokus/tetrad/CheckState;->grade:Ljava/lang/String;

    .line 203
    :cond_3
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$8;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-virtual {v1}, Lru/fokus/tetrad/CheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/CheckState;->runCheck(Landroid/content/Context;)V

    goto :goto_0
.end method
