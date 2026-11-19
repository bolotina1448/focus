.class Lru/fokus/tetrad/SettingsActivity$24;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->aiCard()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;

.field final synthetic val$res:Landroid/widget/TextView;

.field final synthetic val$test:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 277
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$24;->this$0:Lru/fokus/tetrad/SettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/SettingsActivity$24;->val$test:Landroid/widget/TextView;

    iput-object p3, p0, Lru/fokus/tetrad/SettingsActivity$24;->val$res:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$24;->val$test:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 279
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$24;->val$res:Landroid/widget/TextView;

    sget v1, Lru/fokus/tetrad/Ui;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$24;->val$res:Landroid/widget/TextView;

    const-string v1, "\u041e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u044e \u043f\u0440\u043e\u0431\u043d\u044b\u0439 \u0437\u0430\u043f\u0440\u043e\u0441\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/fokus/tetrad/SettingsActivity$24$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$24$1;-><init>(Lru/fokus/tetrad/SettingsActivity$24;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 296
    return-void
.end method
