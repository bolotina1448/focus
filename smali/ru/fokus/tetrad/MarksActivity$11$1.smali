.class Lru/fokus/tetrad/MarksActivity$11$1;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/MarksActivity$11;

.field final synthetic val$fa:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity$11;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 505
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$11$1;->this$1:Lru/fokus/tetrad/MarksActivity$11;

    iput-object p2, p0, Lru/fokus/tetrad/MarksActivity$11$1;->val$fa:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$11$1;->this$1:Lru/fokus/tetrad/MarksActivity$11;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$11;->this$0:Lru/fokus/tetrad/MarksActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/MarksActivity;->access$1502(Lru/fokus/tetrad/MarksActivity;Z)Z

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$11$1;->this$1:Lru/fokus/tetrad/MarksActivity$11;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$11;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$11$1;->val$fa:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/MarksActivity;->access$1602(Lru/fokus/tetrad/MarksActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$11$1;->this$1:Lru/fokus/tetrad/MarksActivity$11;

    iget-object v0, v0, Lru/fokus/tetrad/MarksActivity$11;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$800(Lru/fokus/tetrad/MarksActivity;)V

    return-void
.end method
