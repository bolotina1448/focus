.class Lru/fokus/tetrad/MeshActivity$6$1$1;
.super Ljava/lang/Object;
.source "MeshActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MeshActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/fokus/tetrad/MeshActivity$6$1;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MeshActivity$6$1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$6$1$1;->this$2:Lru/fokus/tetrad/MeshActivity$6$1;

    iput-object p2, p0, Lru/fokus/tetrad/MeshActivity$6$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$1;->this$2:Lru/fokus/tetrad/MeshActivity$6$1;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    const-string v1, "\u041d\u0430 \u044d\u0442\u043e\u0439 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0435 \u043d\u0435 \u043d\u0430\u0448\u043b\u043e\u0441\u044c \u0434\u043e\u043c\u0430\u0448\u043d\u0438\u0445 \u0437\u0430\u0434\u0430\u043d\u0438\u0439. \u041e\u0442\u043a\u0440\u043e\u0439 \u0440\u0430\u0437\u0434\u0435\u043b \u0441 \u0434\u043e\u043c\u0430\u0448\u043a\u043e\u0439."

    invoke-static {v0, v1}, Lru/fokus/tetrad/MeshActivity;->access$300(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$1;->val$list:Ljava/util/List;

    sput-object v0, Lru/fokus/tetrad/MeshActivity;->pageResult:Ljava/util/List;

    .line 167
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$1;->this$2:Lru/fokus/tetrad/MeshActivity$6$1;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MeshActivity;->setResult(I)V

    .line 168
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$1;->this$2:Lru/fokus/tetrad/MeshActivity$6$1;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MeshActivity;->finish()V

    goto :goto_0
.end method
