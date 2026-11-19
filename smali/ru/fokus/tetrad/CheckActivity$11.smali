.class Lru/fokus/tetrad/CheckActivity$11;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;

.field final synthetic val$restore:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 238
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$11;->this$0:Lru/fokus/tetrad/CheckActivity;

    iput p2, p0, Lru/fokus/tetrad/CheckActivity$11;->val$restore:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$11;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$500(Lru/fokus/tetrad/CheckActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$11;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$600(Lru/fokus/tetrad/CheckActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$11;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$700(Lru/fokus/tetrad/CheckActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$11;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v1}, Lru/fokus/tetrad/CheckActivity;->access$600(Lru/fokus/tetrad/CheckActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lru/fokus/tetrad/Ui;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$11;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0, v3}, Lru/fokus/tetrad/CheckActivity;->access$502(Lru/fokus/tetrad/CheckActivity;Z)Z

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$11;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$700(Lru/fokus/tetrad/CheckActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lru/fokus/tetrad/CheckActivity$11;->val$restore:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method
