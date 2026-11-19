.class Lru/fokus/tetrad/CheckActivity$13;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->taskCard(Lorg/json/JSONObject;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;

.field final synthetic val$btn:Landroid/widget/TextView;

.field final synthetic val$fixTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 415
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$13;->this$0:Lru/fokus/tetrad/CheckActivity;

    iput-object p2, p0, Lru/fokus/tetrad/CheckActivity$13;->val$fixTv:Landroid/widget/TextView;

    iput-object p3, p0, Lru/fokus/tetrad/CheckActivity$13;->val$btn:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$13;->val$fixTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 417
    :goto_0
    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity$13;->val$fixTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$13;->val$btn:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v0, "\u0421\u043a\u0440\u044b\u0442\u044c \u0438\u0441\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void

    :cond_0
    move v0, v1

    .line 416
    goto :goto_0

    .line 417
    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    .line 418
    :cond_2
    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u0438\u0441\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    goto :goto_2
.end method
