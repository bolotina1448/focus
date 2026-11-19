.class Lru/fokus/tetrad/FocusActivity$1;
.super Ljava/lang/Object;
.source "FocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/FocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/FocusActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/FocusActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lru/fokus/tetrad/FocusActivity$1;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$1;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-static {v0}, Lru/fokus/tetrad/FocusActivity;->access$000(Lru/fokus/tetrad/FocusActivity;)V

    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$1;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-static {v0}, Lru/fokus/tetrad/FocusActivity;->access$100(Lru/fokus/tetrad/FocusActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
