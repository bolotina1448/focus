.class Lru/fokus/tetrad/QuizActivity$1$1;
.super Ljava/lang/Object;
.source "QuizActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/QuizActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/QuizActivity$1;

.field final synthetic val$fe:Ljava/lang/String;

.field final synthetic val$fq:Lorg/json/JSONArray;

.field final synthetic val$ft:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/QuizActivity$1;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iput-object p2, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$fe:Ljava/lang/String;

    iput-object p3, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$fq:Lorg/json/JSONArray;

    iput-object p4, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$ft:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iget v0, v0, Lru/fokus/tetrad/QuizActivity$1;->val$gen:I

    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iget-object v1, v1, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v1}, Lru/fokus/tetrad/QuizActivity;->access$100(Lru/fokus/tetrad/QuizActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/QuizActivity;->access$202(Lru/fokus/tetrad/QuizActivity;Z)Z

    .line 96
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$fe:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/QuizActivity;->access$302(Lru/fokus/tetrad/QuizActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$fe:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$fq:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lru/fokus/tetrad/QuizActivity;->access$402(Lru/fokus/tetrad/QuizActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$ft:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$ft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    iget-object v1, p0, Lru/fokus/tetrad/QuizActivity$1$1;->val$ft:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/QuizActivity;->access$502(Lru/fokus/tetrad/QuizActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/QuizActivity$1$1;->this$1:Lru/fokus/tetrad/QuizActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/QuizActivity$1;->this$0:Lru/fokus/tetrad/QuizActivity;

    invoke-static {v0}, Lru/fokus/tetrad/QuizActivity;->access$600(Lru/fokus/tetrad/QuizActivity;)V

    goto :goto_0
.end method
