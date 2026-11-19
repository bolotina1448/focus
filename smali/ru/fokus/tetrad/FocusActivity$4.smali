.class Lru/fokus/tetrad/FocusActivity$4;
.super Ljava/lang/Object;
.source "FocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/FocusActivity;->build()V
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
    .line 156
    iput-object p1, p0, Lru/fokus/tetrad/FocusActivity$4;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$4;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-static {v0}, Lru/fokus/tetrad/FocusActivity;->access$500(Lru/fokus/tetrad/FocusActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$4;->this$0:Lru/fokus/tetrad/FocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/FocusActivity;->access$700(Lru/fokus/tetrad/FocusActivity;Z)V

    :cond_0
    return-void
.end method
