.class Lru/fokus/tetrad/BlockerService$5;
.super Ljava/lang/Object;
.source "BlockerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lru/fokus/tetrad/BlockerService;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lru/fokus/tetrad/BlockerService$5;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$5;->this$0:Lru/fokus/tetrad/BlockerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/BlockerService;->performGlobalAction(I)Z

    .line 274
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$5;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$100(Lru/fokus/tetrad/BlockerService;)V

    .line 275
    return-void
.end method
