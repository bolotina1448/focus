.class Lru/fokus/tetrad/FocusActivity$3;
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
    .line 154
    iput-object p1, p0, Lru/fokus/tetrad/FocusActivity$3;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$3;->this$0:Lru/fokus/tetrad/FocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/FocusActivity;->access$502(Lru/fokus/tetrad/FocusActivity;I)I

    iget-object v0, p0, Lru/fokus/tetrad/FocusActivity$3;->this$0:Lru/fokus/tetrad/FocusActivity;

    invoke-static {v0}, Lru/fokus/tetrad/FocusActivity;->access$600(Lru/fokus/tetrad/FocusActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
