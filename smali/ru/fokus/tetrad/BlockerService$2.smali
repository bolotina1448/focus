.class Lru/fokus/tetrad/BlockerService$2;
.super Ljava/lang/Object;
.source "BlockerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/BlockerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/BlockerService;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/BlockerService;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lru/fokus/tetrad/BlockerService$2;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$2;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$000(Lru/fokus/tetrad/BlockerService;)Lru/fokus/tetrad/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$2;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$000(Lru/fokus/tetrad/BlockerService;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->blockingNow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$2;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$100(Lru/fokus/tetrad/BlockerService;)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$2;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$300(Lru/fokus/tetrad/BlockerService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_1
    :try_start_1
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$2;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$400(Lru/fokus/tetrad/BlockerService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :goto_2
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$2;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$500(Lru/fokus/tetrad/BlockerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_2

    .line 72
    :catch_1
    move-exception v0

    goto :goto_1
.end method
