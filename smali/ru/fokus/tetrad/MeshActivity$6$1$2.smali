.class Lru/fokus/tetrad/MeshActivity$6$1$2;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MeshActivity$6$1;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$6$1$2;->this$2:Lru/fokus/tetrad/MeshActivity$6$1;

    iput-object p2, p0, Lru/fokus/tetrad/MeshActivity$6$1$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$2;->this$2:Lru/fokus/tetrad/MeshActivity$6$1;

    iget-object v0, v0, Lru/fokus/tetrad/MeshActivity$6$1;->this$1:Lru/fokus/tetrad/MeshActivity$6;

    iget-object v1, v0, Lru/fokus/tetrad/MeshActivity$6;->this$0:Lru/fokus/tetrad/MeshActivity;

    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0440\u0430\u0437\u0431\u043e\u0440\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b."

    :goto_0
    invoke-static {v1, v0}, Lru/fokus/tetrad/MeshActivity;->access$300(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$6$1$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
