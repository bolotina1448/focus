.class Lru/fokus/tetrad/FocusActivity$6$1;
.super Ljava/lang/Object;
.source "FocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/FocusActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/FocusActivity$6;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/FocusActivity$6;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lru/fokus/tetrad/FocusActivity$6$1;->this$1:Lru/fokus/tetrad/FocusActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$6$1;->this$1:Lru/fokus/tetrad/FocusActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/FocusActivity$6;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-static {v0}, Lru/fokus/tetrad/FocusActivity;->access$200(Lru/fokus/tetrad/FocusActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$6$1;->this$1:Lru/fokus/tetrad/FocusActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/FocusActivity$6;->this$0:Lru/fokus/tetrad/FocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/FocusActivity;->access$700(Lru/fokus/tetrad/FocusActivity;Z)V

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$6$1;->this$1:Lru/fokus/tetrad/FocusActivity$6;

    iget-object v0, v0, Lru/fokus/tetrad/FocusActivity$6;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-static {v0}, Lru/fokus/tetrad/FocusActivity;->access$800(Lru/fokus/tetrad/FocusActivity;)V

    goto :goto_0
.end method
