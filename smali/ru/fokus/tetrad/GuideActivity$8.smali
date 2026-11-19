.class Lru/fokus/tetrad/GuideActivity$8;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/GuideActivity;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/GuideActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/GuideActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lru/fokus/tetrad/GuideActivity$8;->this$0:Lru/fokus/tetrad/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lru/fokus/tetrad/GuideActivity$8;->this$0:Lru/fokus/tetrad/GuideActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/GuideActivity$8;->this$0:Lru/fokus/tetrad/GuideActivity;

    const-class v3, Lru/fokus/tetrad/ScheduleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method
