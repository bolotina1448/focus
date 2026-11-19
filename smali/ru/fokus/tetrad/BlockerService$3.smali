.class Lru/fokus/tetrad/BlockerService$3;
.super Landroid/widget/FrameLayout;
.source "BlockerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/BlockerService;->showOverlay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/BlockerService;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/BlockerService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lru/fokus/tetrad/BlockerService$3;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 242
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService$3;->this$0:Lru/fokus/tetrad/BlockerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lru/fokus/tetrad/BlockerService;->performGlobalAction(I)Z

    iget-object v1, p0, Lru/fokus/tetrad/BlockerService$3;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v1}, Lru/fokus/tetrad/BlockerService;->access$100(Lru/fokus/tetrad/BlockerService;)V

    .line 245
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
