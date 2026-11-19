.class Lru/fokus/tetrad/MeshActivity$6$1;
.super Ljava/lang/Object;
.source "MeshActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MeshActivity$6;->onReceiveValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/MeshActivity$6;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MeshActivity$6;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 161
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iput-object p2, p0, Lru/fokus/tetrad/MeshActivity$6$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MeshActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/MeshActivity$6$1;->val$text:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/Mesh;->fromPageText(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iget-object v1, v1, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    new-instance v2, Lru/fokus/tetrad/MeshActivity$6$1$1;

    invoke-direct {v2, p0, v0}, Lru/fokus/tetrad/MeshActivity$6$1$1;-><init>(Lru/fokus/tetrad/MeshActivity$6$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/MeshActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iget-object v1, v1, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    new-instance v2, Lru/fokus/tetrad/MeshActivity$6$1$2;

    invoke-direct {v2, p0, v0}, Lru/fokus/tetrad/MeshActivity$6$1$2;-><init>(Lru/fokus/tetrad/MeshActivity$6$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/MeshActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
