.class Lru/fokus/tetrad/CheckActivity$15;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->chatCard()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 467
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$15;->this$0:Lru/fokus/tetrad/CheckActivity;

    iput-object p2, p0, Lru/fokus/tetrad/CheckActivity$15;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$15;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$15;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v1, v0}, Lru/fokus/tetrad/CheckActivity;->access$800(Lru/fokus/tetrad/CheckActivity;Ljava/lang/String;)V

    .line 471
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
