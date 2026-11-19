.class Lru/fokus/tetrad/SettingsActivity$24$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity$24$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/fokus/tetrad/SettingsActivity$24$1;

.field final synthetic val$fm:Ljava/lang/String;

.field final synthetic val$fok:Z


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity$24$1;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->this$2:Lru/fokus/tetrad/SettingsActivity$24$1;

    iput-boolean p2, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->val$fok:Z

    iput-object p3, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->val$fm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->this$2:Lru/fokus/tetrad/SettingsActivity$24$1;

    iget-object v0, v0, Lru/fokus/tetrad/SettingsActivity$24$1;->this$1:Lru/fokus/tetrad/SettingsActivity$24;

    iget-object v0, v0, Lru/fokus/tetrad/SettingsActivity$24;->val$test:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/fokus/tetrad/Ui;->setEnabled(Landroid/view/View;Z)V

    .line 292
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->this$2:Lru/fokus/tetrad/SettingsActivity$24$1;

    iget-object v0, v0, Lru/fokus/tetrad/SettingsActivity$24$1;->this$1:Lru/fokus/tetrad/SettingsActivity$24;

    iget-object v1, v0, Lru/fokus/tetrad/SettingsActivity$24;->val$res:Landroid/widget/TextView;

    iget-boolean v0, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->val$fok:Z

    if-eqz v0, :cond_0

    sget v0, Lru/fokus/tetrad/Ui;->OK:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->this$2:Lru/fokus/tetrad/SettingsActivity$24$1;

    iget-object v0, v0, Lru/fokus/tetrad/SettingsActivity$24$1;->this$1:Lru/fokus/tetrad/SettingsActivity$24;

    iget-object v0, v0, Lru/fokus/tetrad/SettingsActivity$24;->val$res:Landroid/widget/TextView;

    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity$24$1$1;->val$fm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void

    .line 292
    :cond_0
    sget v0, Lru/fokus/tetrad/Ui;->RED:I

    goto :goto_0
.end method
