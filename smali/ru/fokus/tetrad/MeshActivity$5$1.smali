.class Lru/fokus/tetrad/MeshActivity$5$1;
.super Ljava/lang/Object;
.source "MeshActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MeshActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/MeshActivity$5;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MeshActivity$5;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$5$1;->this$1:Lru/fokus/tetrad/MeshActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$5$1;->this$1:Lru/fokus/tetrad/MeshActivity$5;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$5;->this$0:Lru/fokus/tetrad/MeshActivity;

    const-string v1, "\u0412\u0445\u043e\u0434 \u0432 \u041c\u042d\u0428 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$5$1;->this$1:Lru/fokus/tetrad/MeshActivity$5;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$5;->this$0:Lru/fokus/tetrad/MeshActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MeshActivity;->setResult(I)V

    .line 143
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$5$1;->this$1:Lru/fokus/tetrad/MeshActivity$5;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$5;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MeshActivity;->finish()V

    .line 144
    return-void
.end method
