.class Lru/fokus/tetrad/GuideActivity$6$1;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/GuideActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/GuideActivity$6;

.field final synthetic val$fm:Ljava/lang/String;

.field final synthetic val$fok:Z


# direct methods
.method constructor <init>(Lru/fokus/tetrad/GuideActivity$6;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lru/fokus/tetrad/GuideActivity$6$1;->this$1:Lru/fokus/tetrad/GuideActivity$6;

    iput-object p2, p0, Lru/fokus/tetrad/GuideActivity$6$1;->val$fm:Ljava/lang/String;

    iput-boolean p3, p0, Lru/fokus/tetrad/GuideActivity$6$1;->val$fok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity$6$1;->this$1:Lru/fokus/tetrad/GuideActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/GuideActivity;->access$602(Lru/fokus/tetrad/GuideActivity;Z)Z

    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity$6$1;->this$1:Lru/fokus/tetrad/GuideActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    iget-object v1, p0, Lru/fokus/tetrad/GuideActivity$6$1;->val$fm:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/GuideActivity;->access$702(Lru/fokus/tetrad/GuideActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity$6$1;->this$1:Lru/fokus/tetrad/GuideActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    iget-boolean v1, p0, Lru/fokus/tetrad/GuideActivity$6$1;->val$fok:Z

    invoke-static {v0, v1}, Lru/fokus/tetrad/GuideActivity;->access$802(Lru/fokus/tetrad/GuideActivity;Z)Z

    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity$6$1;->this$1:Lru/fokus/tetrad/GuideActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/GuideActivity$6;->this$0:Lru/fokus/tetrad/GuideActivity;

    invoke-static {v0}, Lru/fokus/tetrad/GuideActivity;->access$200(Lru/fokus/tetrad/GuideActivity;)V

    return-void
.end method
