.class Lru/fokus/tetrad/BlockerService$1;
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
    .line 60
    iput-object p1, p0, Lru/fokus/tetrad/BlockerService$1;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$1;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$000(Lru/fokus/tetrad/BlockerService;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->active()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lru/fokus/tetrad/BlockerService$1;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v2}, Lru/fokus/tetrad/BlockerService;->access$000(Lru/fokus/tetrad/BlockerService;)Lru/fokus/tetrad/Store;

    move-result-object v2

    invoke-virtual {v2}, Lru/fokus/tetrad/Store;->end()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 63
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$1;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/Notifier;->timeUp(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$1;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$100(Lru/fokus/tetrad/BlockerService;)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$1;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$200(Lru/fokus/tetrad/BlockerService;)V

    goto :goto_0
.end method
