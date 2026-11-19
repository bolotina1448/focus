.class Lru/fokus/tetrad/MarksActivity$1$1;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/MarksActivity$1;

.field final synthetic val$fe:Ljava/lang/Exception;

.field final synthetic val$fm:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity$1;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iput-object p2, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fe:Ljava/lang/Exception;

    iput-object p3, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fm:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget v0, v0, Lru/fokus/tetrad/MarksActivity$1;->val$g:I

    iget-object v2, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v2, v2, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v2}, Lru/fokus/tetrad/MarksActivity;->access$000(Lru/fokus/tetrad/MarksActivity;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0, v1}, Lru/fokus/tetrad/MarksActivity;->access$102(Lru/fokus/tetrad/MarksActivity;Z)Z

    .line 102
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fe:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v2, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fe:Ljava/lang/Exception;

    instance-of v0, v0, Lru/fokus/tetrad/Mesh$MeshException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fe:Ljava/lang/Exception;

    check-cast v0, Lru/fokus/tetrad/Mesh$MeshException;

    iget-boolean v0, v0, Lru/fokus/tetrad/Mesh$MeshException;->needLogin:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lru/fokus/tetrad/MarksActivity;->access$202(Lru/fokus/tetrad/MarksActivity;Z)Z

    .line 104
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v1, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$200(Lru/fokus/tetrad/MarksActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fe:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lru/fokus/tetrad/MarksActivity;->access$302(Lru/fokus/tetrad/MarksActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    :goto_3
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$800(Lru/fokus/tetrad/MarksActivity;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0435 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u043e\u0446\u0435\u043d\u043a\u0438 \u0438\u0437 \u041c\u042d\u0428. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u043f\u043e\u0437\u0436\u0435. ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fe:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 106
    :cond_3
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fm:Ljava/util/List;

    invoke-static {v1}, Lru/fokus/tetrad/Grades;->analyze(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/MarksActivity;->access$402(Lru/fokus/tetrad/MarksActivity;Ljava/util/List;)Ljava/util/List;

    .line 107
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fm:Ljava/util/List;

    invoke-static {v0, v1}, Lru/fokus/tetrad/MarksActivity;->access$502(Lru/fokus/tetrad/MarksActivity;Ljava/util/List;)Ljava/util/List;

    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/MarksActivity;->access$602(Lru/fokus/tetrad/MarksActivity;I)I

    .line 109
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1$1;->this$1:Lru/fokus/tetrad/MarksActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$1$1;->val$fm:Ljava/util/List;

    invoke-static {v1}, Lru/fokus/tetrad/Grades;->weighted(Ljava/util/List;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lru/fokus/tetrad/MarksActivity;->access$702(Lru/fokus/tetrad/MarksActivity;D)D

    goto :goto_3
.end method
