.class Lru/fokus/tetrad/BlockerService$4;
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
    .line 263
    iput-object p1, p0, Lru/fokus/tetrad/BlockerService$4;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$4;->this$0:Lru/fokus/tetrad/BlockerService;

    invoke-static {v0}, Lru/fokus/tetrad/BlockerService;->access$100(Lru/fokus/tetrad/BlockerService;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/BlockerService$4;->this$0:Lru/fokus/tetrad/BlockerService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/BlockerService$4;->this$0:Lru/fokus/tetrad/BlockerService;

    const-class v3, Lru/fokus/tetrad/FocusActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x30000000

    .line 267
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lru/fokus/tetrad/BlockerService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method
