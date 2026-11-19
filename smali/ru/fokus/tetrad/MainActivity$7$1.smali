.class Lru/fokus/tetrad/MainActivity$7$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/MainActivity$7;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity$7;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$7$1;->this$1:Lru/fokus/tetrad/MainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$7$1;->this$1:Lru/fokus/tetrad/MainActivity$7;

    iget-object v0, v0, Lru/fokus/tetrad/MainActivity$7;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/MainActivity$7$1;->this$1:Lru/fokus/tetrad/MainActivity$7;

    iget-object v2, v2, Lru/fokus/tetrad/MainActivity$7;->this$0:Lru/fokus/tetrad/MainActivity;

    const-class v3, Lru/fokus/tetrad/LessonSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
