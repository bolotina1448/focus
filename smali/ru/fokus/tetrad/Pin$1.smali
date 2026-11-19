.class Lru/fokus/tetrad/Pin$1;
.super Ljava/lang/Object;
.source "Pin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Pin;->guard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$e:Landroid/widget/EditText;

.field final synthetic val$ok:Ljava/lang/Runnable;

.field final synthetic val$s:Lru/fokus/tetrad/Store;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/Store;Landroid/widget/EditText;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lru/fokus/tetrad/Pin$1;->val$s:Lru/fokus/tetrad/Store;

    iput-object p2, p0, Lru/fokus/tetrad/Pin$1;->val$e:Landroid/widget/EditText;

    iput-object p3, p0, Lru/fokus/tetrad/Pin$1;->val$ok:Ljava/lang/Runnable;

    iput-object p4, p0, Lru/fokus/tetrad/Pin$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lru/fokus/tetrad/Pin$1;->val$s:Lru/fokus/tetrad/Store;

    iget-object v1, p0, Lru/fokus/tetrad/Pin$1;->val$e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->checkPin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/Pin$1;->val$ok:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/Pin$1;->val$a:Landroid/app/Activity;

    const-string v1, "\u041d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 PIN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
